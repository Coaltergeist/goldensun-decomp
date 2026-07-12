extern int Actor_679c[] __asm__(".L679c");
extern void __CutsceneStart(void);
extern void __Func_809280c(int actor, int arg1, int arg2);
extern void __MessageID(int message);
extern void __ActorMessage(int actor, int message);
extern void __Func_8092adc(int actor, int speed, int arg2);
extern void __CutsceneEnd(void);

void OvlFunc_881_200a81c(void)
{
    register int actor asm("r0");
    register int speed asm("r1");
    register int zero asm("r2");

    __CutsceneStart();
    __Func_809280c(0x37, 0, 0);
    __MessageID(0x2642);
    __ActorMessage(Actor_679c[0], 0);
    speed = 0xc0;
    actor = 0x37;
    /* Preserve the original final-call constant schedule. */
    asm volatile("" : "+r"(actor), "+r"(speed));
    speed <<= 6;
    zero = 0;
    asm volatile("" : "+r"(actor), "+r"(speed), "+r"(zero));
    __Func_8092adc(actor, speed, zero);
    __CutsceneEnd();
}
