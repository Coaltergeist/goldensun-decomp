extern unsigned char *iwram_3001ebc;
extern void *Scripts[] asm(".L1cf0");
extern short Positions[] asm(".L1d0c");

extern void __CutsceneStart(void);
extern void *__MapActor_GetActor(int);
extern void __PlaySound(int);
extern void __Func_8010560(void *, int, int);
extern void __MapActor_SetSpeed(int, int, int);
extern void __MapActor_SetAnim(int, int);
extern void __Func_809228c(int, int, int);
extern void __Func_8092208(int, int, int);
extern void __Func_8092b08(int, int);
extern void __CutsceneWait(int);
extern void __Func_8091e9c(int);
extern void __CutsceneEnd(void);

void OvlFunc_907_2008328(void)
{
    unsigned char *state = iwram_3001ebc;
    int actor;
    unsigned int index;
    int area;

    __CutsceneStart();
    for (index = 8; index <= 0x41; index++) {
        actor = (int)__MapActor_GetActor(index);
        if (actor != 0)
            *(unsigned char *)(actor + 0x55) = 0;
    }

    {
        register int raw asm("r3");
        raw = *(unsigned short *)(state + 0x16c);
        raw -= 3;
        area = (short)raw;
    }
    if (area == 6)
        __PlaySound(0xbc);
    else
        __PlaySound(0x9e);

    {
        register void *arg0 asm("r0");
        register int arg1 asm("r1");
        register int arg2 asm("r2");
        asm volatile(
            "ldr r2, =.L1d0c\n\t"
            "lsl r0, %3, #2\n\t"
            "ldrsh r1, [r2, r0]\n\t"
            "add r3, r0, #2\n\t"
            "ldrsh r2, [r2, r3]\n\t"
            "ldr r3, =.L1cf0\n\t"
            "ldr r0, [r3, r0]"
            : "=r"(arg0), "=r"(arg1), "=r"(arg2)
            : "r"(area)
            : "r3");
        __Func_8010560(arg0, arg1, arg2);
    }
    {
        register int arg0 asm("r0");
        register int arg1 asm("r1");
        register int arg2 asm("r2");
        asm volatile(
            "mov r1, #0x80\n\t"
            "mov r2, #0x80\n\t"
            "lsl r2, #7\n\t"
            "mov r0, #0\n\t"
            "lsl r1, #8"
            : "=r"(arg0), "=r"(arg1), "=r"(arg2));
        __MapActor_SetSpeed(arg0, arg1, arg2);
    }
    *(unsigned char *)((int)__MapActor_GetActor(0) + 0x55) = 0;
    *(int *)(iwram_3001ebc + 0x1c0) = 0x100;

    if (area == 6) {
        __MapActor_SetAnim(0, 2);
        {
            register int arg0 asm("r0");
            register int arg1 asm("r1");
            register int arg2 asm("r2");
            asm volatile(
                "mov r2, #4\n\t"
                "mov r0, #0\n\t"
                "mov r1, #0\n\t"
                "neg r2, r2"
                : "=r"(arg0), "=r"(arg1), "=r"(arg2));
            __Func_809228c(arg0, arg1, arg2);
        }
    } else {
        register int arg0 asm("r0");
        register int arg1 asm("r1");
        register int arg2 asm("r2");
        asm volatile(
            "mov r2, #0x10\n\t"
            "mov r0, #0\n\t"
            "mov r1, #3\n\t"
            "neg r2, r2"
            : "=r"(arg0), "=r"(arg1), "=r"(arg2));
        __Func_8092208(arg0, arg1, arg2);
    }

    if (area == 4)
        __Func_8092b08(0, 3);
    else
        __Func_8092b08(0, 2);

    __CutsceneWait(0x10);
    __Func_8091e9c(area + 3);
    __CutsceneEnd();
}
