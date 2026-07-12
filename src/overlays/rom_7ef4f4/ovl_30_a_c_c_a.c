extern unsigned char *__MapActor_GetActor(int actor);
extern void OvlFunc_965_20090f4(void);
extern void __Func_8093e28(void);
extern void __Func_80933f8(int x, int y, int z, int arg3);
extern void __Func_8092708(int actor, int arg1, int arg2);
extern void __MapTransitionOut(void);
extern void __WaitMapTransition(void);

void OvlFunc_965_200910c(void) {
    register unsigned char *actor asm("r5");
    register unsigned char *other asm("r0");
    register int value asm("r3");

    actor = __MapActor_GetActor(9);
    asm volatile("" : "+r"(actor));
    other = __MapActor_GetActor(0);
    value = *(int *)(other + 8);
    value >>= 20;
    if (value <= 0xc) {
        actor = __MapActor_GetActor(8);
        asm volatile("" : "+r"(actor));
        value = *(int *)(actor + 8);
        value >>= 20;
        if (value != 6)
            goto fail;
        asm volatile("");
        goto check_z;
    }
    value = *(int *)(actor + 8);
    value >>= 20;
    if (value != 0x12)
        goto fail;

check_z:
    value = *(int *)(actor + 0x10);
    value >>= 20;
    if (value != 0x14)
        goto fail;
    OvlFunc_965_20090f4();
    goto done;

fail:
    __Func_8093e28();

done:
    return;
}

void OvlFunc_965_2009158(void) {
    register int arg0 asm("r0");
    register int arg1 asm("r1");
    register int arg2 asm("r2");
    register int arg3 asm("r3");

    arg0 = 1;
    asm volatile("" : "+r"(arg0));
    arg1 = 1;
    asm volatile("" : "+r"(arg1));
    arg2 = 1;
    asm volatile("" : "+r"(arg2));
    arg3 = 0;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2), "+r"(arg3));
    arg0 = -arg0;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2), "+r"(arg3));
    arg1 = -arg1;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2), "+r"(arg3));
    arg2 = -arg2;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2), "+r"(arg3));
    __Func_80933f8(arg0, arg1, arg2, arg3);
    __Func_8092708(0, 6, 0);
    __MapTransitionOut();
    __WaitMapTransition();
}
