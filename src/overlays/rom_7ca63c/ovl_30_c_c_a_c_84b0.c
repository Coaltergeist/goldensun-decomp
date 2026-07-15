extern unsigned char *iwram_3001ebc;
extern void __MapTransitionIn(void);
extern void __WaitMapTransition(void);
extern void __CutsceneWait(int frames);
extern void __MapActor_SetSpeed(int actor_id, int horizontal, int vertical);
extern void __Func_80921c4(int actor_id, int x, int y);
extern void __Func_8092adc(int actor_id, int value, int duration);
extern void __MapActor_Jump(int actor_id, int height, int direction);
extern void __Func_809259c(int actor, int mode);
extern void __MessageID(int message);
extern void __Func_8093040(int actor, int arg1, int arg2);
extern void __MapTransitionOut(void);
extern void __Func_8091e9c(int map_id);

void OvlFunc_944_20084b0(void)
{
    register int a0 asm("r0");
    register int a1 asm("r1");
    register int a2 asm("r2");

    *(unsigned int *)(iwram_3001ebc + 0x1c0) = 0x202;
    __MapTransitionIn();
    __WaitMapTransition();
    __CutsceneWait(0x14);

    a1 = 0x80;
    a2 = 0x80;
    a0 = 8;
    asm volatile("" : "+r"(a0), "+r"(a1), "+r"(a2));
    a1 <<= 9;
    a2 <<= 8;
    __MapActor_SetSpeed(a0, a1, a2);

    a0 = 8;
    a1 = 0xa4;
    asm volatile("" : "+r"(a0), "+r"(a1));
    a2 = 0x141;
    __Func_80921c4(a0, a1, a2);

    a1 = 0xd0;
    a0 = 8;
    asm volatile("" : "+r"(a0), "+r"(a1));
    a1 <<= 8;
    __Func_8092adc(a0, a1, 0x28);

    a1 = 0xb0;
    a0 = 8;
    asm volatile("" : "+r"(a0), "+r"(a1));
    a1 <<= 8;
    __Func_8092adc(a0, a1, 0x28);

    a1 = 0xd0;
    a0 = 8;
    asm volatile("" : "+r"(a0), "+r"(a1));
    a1 <<= 8;
    __Func_8092adc(a0, a1, 0x28);

    a1 = 0xc0;
    a0 = 8;
    asm volatile("" : "+r"(a0), "+r"(a1));
    a1 <<= 6;
    __Func_8092adc(a0, a1, 0xa);

    a2 = 0xa7;
    a0 = 8;
    a1 = 0xa4;
    asm volatile("" : "+r"(a0), "+r"(a1), "+r"(a2));
    a2 <<= 1;
    __Func_80921c4(a0, a1, a2);

    __MapActor_Jump(8, 4, 0x28);
    __Func_809259c(8, 2);
    __MessageID(0x1e3a);
    __Func_8093040(8, 0, 0x14);
    __MapTransitionOut();
    __WaitMapTransition();
    __Func_8091e9c(0xa);
}
