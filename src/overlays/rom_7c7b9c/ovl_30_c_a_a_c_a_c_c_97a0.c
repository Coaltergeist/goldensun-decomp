typedef unsigned char u8;
typedef unsigned short u16;

extern void __MapActor_SetPos(int actor_id, int x, int y);
extern u8 *__MapActor_GetActor(int actor_id);
extern void __Func_8092b08(int actor, int value);

void OvlFunc_943_20097a0(void)
{
    u8 *actor;
    register int v5000 asm("r6");

    __MapActor_SetPos(0x15, 0x1060000, 0x2c20000);
    actor = __MapActor_GetActor(0x15);
    asm volatile("" ::: "memory");
    v5000 = 0xa0 << 7;
    asm volatile("" : "+r"(v5000));
    {
        register int x18 asm("r1");
        register int y18 asm("r2");
        asm volatile(
            "mov %0, #0xa4\n\t"
            "mov %1, #0xa2\n\t"
            "lsl %1, %1, #18\n\t"
            "strh %2, [%3, #6]\n\t"
            "lsl %0, %0, #16"
            : "=r"(x18), "=r"(y18)
            : "r"(v5000), "r"(actor)
            : "memory");
        __MapActor_SetPos(0x18, x18, y18);
    }
    actor = __MapActor_GetActor(0x18);
    {
        register int vZero asm("r5") = 0;
        asm volatile("" : "+r"(vZero));
        *(u16 *)(actor + 6) = vZero;
    }
    __Func_8092b08(0x18, 1);

    {
        register int x19 asm("r1");
        register int y19 asm("r2");
        asm volatile("mov %0, #0xc6" : "=r"(x19));
        y19 = 0x2990000;
        asm volatile("" : "+r"(x19), "+r"(y19));
        asm volatile("lsl %0, %0, #16" : "+r"(x19));
        __MapActor_SetPos(0x19, x19, y19);
    }
    actor = __MapActor_GetActor(0x19);
    {
        register int v8000 asm("r3") = 0x80 << 8;
        asm volatile("" : "+r"(v8000));
        *(u16 *)(actor + 6) = v8000;
    }
    __Func_8092b08(0x19, 1);

    __MapActor_SetPos(0x1a, 0xbc0000, 0x2a60000);
    actor = __MapActor_GetActor(0x1a);
    {
        register int vB000 asm("r3") = 0xb0 << 8;
        asm volatile("" : "+r"(vB000));
        *(u16 *)(actor + 6) = vB000;
    }
    __MapActor_SetPos(0x1b, 0xba0000, 0x27b0000);
    actor = __MapActor_GetActor(0x1b);
    *(u16 *)(actor + 6) = v5000;

    __MapActor_SetPos(0x16, 0, 0);
    __MapActor_SetPos(0x17, 0, 0);
    __MapActor_SetPos(0x14, 0, 0);
}
