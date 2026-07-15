typedef unsigned char u8;
typedef unsigned short u16;

extern u8 *__MapActor_GetActor(int id);
extern void __MapActor_SetPos(int id, int x, int y);
extern void __MapActor_SetAnim(int id, int animation);
extern void OvlFunc_888_200a67c(void);

void OvlFunc_888_200a5c4(void)
{
    u8 *actor;
    register u8 *data asm("r5");
    register unsigned index asm("r0");
    register unsigned count asm("r12");
    register unsigned rawCount asm("r3");
    register u8 **entry asm("r1");
    u8 *object;

    actor = __MapActor_GetActor(8);
    if (actor != 0)
        __MapActor_SetPos(0xe, *(int *)(actor + 8), *(int *)(actor + 0x10));

    __MapActor_SetAnim(0xe, 0);
    actor = __MapActor_GetActor(0xe);
    data = actor;
    actor = __MapActor_GetActor(8);
    *(u16 *)(data + 6) = *(u16 *)(actor + 6);

    actor = __MapActor_GetActor(0xe);
    *(void (**)(void))(actor + 0x6c) = OvlFunc_888_200a67c;

    actor = __MapActor_GetActor(0xe);
    data = *(u8 **)(actor + 0x50);
    index = 0;
    rawCount = data[0x27];
    if (index < rawCount) {
        register int animation asm("r4");
        asm volatile(
            "mov r1, r5\n\t"
            "mov r4, #0xa\n\t"
            "mov r12, r3\n\t"
            "add r1, #0x28"
            : "=r"(entry), "=r"(animation), "=r"(count)
            : "r"(data), "r"(rawCount));
        do {
            object = *entry++;
            if (object != 0 && *(int *)(object + 0x10) != 0)
                object[5] = (u8)animation;
            index++;
        } while (index < count);
    }

    asm volatile(
        "mov r2, r5\n\t"
        "add r2, #0x25\n\t"
        "mov r3, #1\n\t"
        "strb r3, [r2]"
        :
        : "r"(data)
        : "r2", "r3", "memory");
    {
    register u8 *finalActor asm("r0") = __MapActor_GetActor(0xe);
    asm volatile(
        "add r0, #0x23\n\t"
        "ldrb r2, [r0]\n\t"
        "mov r3, #0xfe\n\t"
        "and r3, r2\n\t"
        "strb r3, [r0]\n\t"
        "ldrb r2, [r5, #9]\n\t"
        "mov r3, #0xd\n\t"
        "neg r3, r3\n\t"
        "and r3, r2\n\t"
        "mov r2, #8\n\t"
        "orr r3, r2\n\t"
        "strb r3, [r5, #9]"
        : "+r"(finalActor)
        : "r"(data)
        : "r2", "r3", "memory");
    }
}
