typedef unsigned char u8;
typedef unsigned int u32;

extern u32 iwram_3001e40;
extern u8 *__MapActor_GetActor(int);
extern u8 *__CreateActor(int, int, int, int);
extern u32 __Random(void);
extern void __Func_80929d8(u8 *, int);
extern void __Actor_SetAnim(u8 *, int);
extern void __Actor_SetScript(u8 *, const void *);
extern const u8 gScript_881__0200e73c[];

void OvlFunc_881_200b4a0(void)
{
    register u8 *source asm("r6");
    register u8 *actor asm("r5");
    register u8 *sprite asm("r7");

    if ((iwram_3001e40 & 15) != 0)
        return;

    source = __MapActor_GetActor(8);
    actor = __CreateActor(0xde,
                          *(int *)(source + 8) + 0xffe00000,
                          *(int *)(source + 0xc),
                          *(int *)(source + 0x10) + 0xfff00000);
    if (actor == 0)
        return;

    *(u32 *)(actor + 0x18) = 0x8000;
    *(u32 *)(actor + 0x1c) = 0x8000;
    sprite = *(u8 **)(actor + 0x50);

    if (((__Random() << 1) >> 16) != 0) {
        register u32 value asm("r2");
        u32 random = __Random();
        value = ((random * 3 << 4) >> 16) << 16;
        __asm__ volatile ("" : "+r"(value));
        *(int *)(actor + 8) -= (int)value >> 1;
        *(int *)(actor + 0x10) -= value;
    } else {
        register u32 value asm("r0");
        register int current asm("r3");
        value = __Random();
        value <<= 5;
        __asm__ volatile ("" : "+r"(value));
        current = *(int *)(actor + 8);
        __asm__ volatile ("" : "+r"(value), "+r"(current));
        value >>= 16;
        value <<= 16;
        current += value;
        *(int *)(actor + 8) = current;
        *(int *)(actor + 0x10) += (int)value >> 1;
    }

    {
        register u32 work asm("r3");
        register u32 bits asm("r2");
        register u32 one asm("r1");

        sprite[0x26] = 0;
        work = (*(u8 **)(source + 0x50))[9];
        __asm__ volatile ("" : "+r"(work));
        bits = 12;
        __asm__ volatile ("" : "+r"(work), "+r"(bits));
        one = sprite[9];
        __asm__ volatile ("" : "+r"(work), "+r"(bits), "+r"(one));
        bits &= work;
        work = -13;
        work &= one;
        one = (u32)actor;
        one += 0x23;
        work |= bits;
        bits = *(u8 *)one;
        sprite[9] = work;
        work = 2;
        work |= bits;
        *(u8 *)one = work;
    }
    {
        register u8 *sourceField asm("r3");
        register u8 *actorField asm("r2");

        sourceField = source;
        __asm__ volatile ("" : "+r"(sourceField));
        sourceField += 0x55;
        actorField = actor;
        actorField += 0x55;
        *actorField = *sourceField;
    }
    __Func_80929d8(actor, 9);
    __Actor_SetAnim(actor, 2);
    __Actor_SetScript(actor, gScript_881__0200e73c);
}
