extern unsigned char *__MapActor_GetActor(int actor_id);
extern void __Func_8010704(int, int, int, int, int, int);
extern void __SetFlag(int flag);

void OvlFunc_941_2008094(void)
{
    unsigned char *actor = __MapActor_GetActor(9);
    register unsigned int reg1 asm("r1");
    register unsigned int reg2 asm("r2");
    register unsigned int reg3 asm("r3");

    if (actor != 0) {
        reg1 = (unsigned int)actor;
        reg2 = 1;
        asm volatile("" : "+r"(reg1), "+r"(reg2));
        reg1 += 0x23;
        *(unsigned char *)reg1 = reg2;
        reg2 = (unsigned int)actor;
        asm volatile("" : "+r"(reg2));
        reg3 = 0;
        asm volatile("" : "+r"(reg2), "+r"(reg3));
        reg2 += 0x55;
        *(unsigned char *)reg2 = reg3;
    }
    reg3 = 8;
    reg2 = 0x20;
    asm volatile("" : "+r"(reg2), "+r"(reg3));
    __Func_8010704(7, 0x20, 1, 1, reg3, reg2);
    __SetFlag(0x204);
}
