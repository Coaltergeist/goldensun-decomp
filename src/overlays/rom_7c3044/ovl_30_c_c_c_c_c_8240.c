typedef unsigned char u8;
typedef unsigned short u16;
typedef short s16;

typedef struct ScriptEntry {
    const void *script;
    u16 a;
    u16 b;
} ScriptEntry;

extern unsigned char *iwram_3001ebc;
extern u8 *__MapActor_GetActor(int actor);
extern void __CutsceneStart(void);
extern void __PlaySound(int sound);
extern void __Func_8010560(const void *script, int a, int b);
extern void __MapActor_SetSpeed(int actor, int x, int y);
extern void __MapActor_SetAnim(int actor, int anim);
extern void __Func_8092208(int actor, int a, int b);
extern void __CutsceneWait(int frames);
extern void __Func_8091e9c(int value);
extern void __MapTransitionOut(void);
extern void __WaitMapTransition(void);
extern void __CutsceneEnd(void);
extern const ScriptEntry ScriptTable_ef8[] asm(".Lef8");

void OvlFunc_937_2008240(void)
{
    u8 *state = iwram_3001ebc;
    unsigned int actorId;
    u8 *actor;
    s16 value;
    int index;

    __CutsceneStart();

    for (actorId = 8; actorId <= 0x41; actorId++) {
        actor = __MapActor_GetActor(actorId);
        if (actor != 0)
            actor[0x55] = 0;
    }

    value = *(s16 *)(state + 0x16c);
    switch (value) {
        case 0xc:
            index = 0;
            break;
        case 0xd:
            index = 1;
            break;
        case 0x10:
            index = 2;
            break;
        case 0x13:
            index = 3;
            break;
        default:
            return;
    }

    __PlaySound(0x9e);
    {
        int tableIndex = index << 3;
        register const u8 *table asm("r0") = (const u8 *)ScriptTable_ef8;
        register int offset asm("r3");
        int a;
        int b;
        const void *script;

        offset = tableIndex + 4;
        a = *(const u16 *)(table + offset);
        asm volatile("" : "+r"(offset), "+r"(table));
        offset += (int)table;
        b = *(const u16 *)(offset + 2);
        script = *(const void *const *)(table + tableIndex);
        __Func_8010560(script, a, b);
    }
    {
        register int horizontal asm("r1");
        register int vertical asm("r2");
        register int actor_id asm("r0");

        horizontal = 0x80;
        vertical = 0x80;
        asm volatile("" : "+r"(horizontal), "+r"(vertical));
        vertical <<= 7;
        asm volatile("" : "+r"(horizontal), "+r"(vertical));
        horizontal <<= 8;
        asm volatile("" : "+r"(horizontal), "+r"(vertical));
        actor_id = 0;
        asm volatile("" : "+r"(actor_id), "+r"(horizontal), "+r"(vertical));
        __MapActor_SetSpeed(actor_id, horizontal, vertical);
    }
    ((u8 *)__MapActor_GetActor(0))[0x55] = 0;
    __MapActor_SetAnim(0, 2);
    __Func_8092208(0, 3, -8);
    __CutsceneWait(10);
    __Func_8091e9c(*(s16 *)(state + 0x16c));
    __MapTransitionOut();
    __WaitMapTransition();
    __CutsceneEnd();
}
