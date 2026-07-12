extern unsigned char *__MapActor_GetActor(int actor);
extern void __Func_8010704(int arg0, int arg1, int arg2, int arg3,
                           int arg4, int arg5);
extern void __SetFlag(int flag);

void OvlFunc_935_200850c(void) {
    register unsigned int reg0 asm("r0");
    register unsigned int reg2 asm("r2");
    register unsigned int reg3 asm("r3");
    register unsigned char *actor asm("r5");

    reg0 = (unsigned int)__MapActor_GetActor(0x10);
    reg3 = 0x17;
    reg2 = 0x20;
    actor = (unsigned char *)reg0;
    asm volatile("" : "+r"(reg2), "+r"(reg3), "+r"(actor));
    __Func_8010704(0x1a, 0x1e, 1, 1, reg3, reg2);

    if (actor != 0) {
        reg0 = (unsigned int)__MapActor_GetActor(0x10);
        reg3 = 0;
        asm volatile("" : "+r"(reg3));
        reg0 += 0x55;
        reg2 = (unsigned int)actor;
        asm volatile("" : "+r"(reg0), "+r"(reg2), "+r"(reg3));
        *(unsigned char *)reg0 = reg3;
        reg2 += 0x23;
        reg3 = 1;
        *(unsigned char *)reg2 = reg3;
    }

    __SetFlag(0x200);
}
