extern void __Func_809ad90(int id);
extern void __SetFlag(unsigned int flag);
extern void __WaitFrames(int frames);
extern void __StopTask(void (*fn)(void));
extern volatile int L5480 __asm__(".L5480");
extern void OvlFunc_956_200804c(void);

void OvlFunc_956_2008a84(void)
{
    register int *p asm("r2");
    register int state asm("r3");
    register int *loopPtr asm("r5");

    __Func_809ad90(0x1c);
    __SetFlag(0x361);
    __WaitFrames(10);
    p = (int *)&L5480;
    state = *p;
    asm volatile("" : "+r"(p), "+r"(state));
    if (state == 1 || state == 3) {
        goto done;
    }
    loopPtr = p;
loop:
    __WaitFrames(1);
    state = *loopPtr;
    asm volatile("" : "+r"(state));
    if (state == 1) {
        goto done;
    }
    if (state != 3) {
        goto loop;
    }
done:
    __WaitFrames(1);
    __StopTask(OvlFunc_956_200804c);
}
