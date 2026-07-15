typedef signed short s16;
typedef unsigned short u16;

typedef struct ScriptEntry {
    const void *script;
    u16 a;
    u16 b;
} ScriptEntry;

extern unsigned char *iwram_3001ebc;
extern unsigned char *__MapActor_GetActor(int actor);
extern void __PlaySound(int sound);
extern void __Func_8010560(const void *script, int a, int b);
extern void __MapActor_SetSpeed(int actor, int x, int y);
extern void __MapActor_SetAnim(int actor, int anim);
extern void __Func_8091e9c(int value);
extern const ScriptEntry ScriptTable[] asm(".L1dcc");

void OvlFunc_950_20080c0(void)
{
    unsigned char *state = iwram_3001ebc;
    unsigned int actorId;
    s16 *value;
    int index;
    unsigned char *actor;
    register int sound asm("r0");

    for (actorId = 8; actorId <= 0x41; actorId++) {
        actor = __MapActor_GetActor(actorId);
        if (actor != 0)
            actor[0x55] = 0;
    }

    value = (s16 *)(state + 0x16c);
    index = *value;
    sound = 0x9e;
    index -= 0xe;
    asm volatile("" : "+r"(sound), "+r"(index));
    __PlaySound(sound);
    {
        register const unsigned char *table asm("r0") =
            (const unsigned char *)ScriptTable;
        register int offset asm("r3");
        int a;
        int b;
        const void *script;

        index <<= 3;
        offset = index + 4;
        a = *(const u16 *)(table + offset);
        asm volatile("" : "+r"(offset), "+r"(table));
        offset += (int)table;
        b = *(const u16 *)(offset + 2);
        script = *(const void *const *)(table + index);
        __Func_8010560(script, a, b);
    }
    __MapActor_SetSpeed(0, 0x8000, 0x4000);
    actor = __MapActor_GetActor(0);
    actor += 0x55;
    *actor = 0;
    __MapActor_SetAnim(0, 2);
    __Func_8091e9c(*value);
}
