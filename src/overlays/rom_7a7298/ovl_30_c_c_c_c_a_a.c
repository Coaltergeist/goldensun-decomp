extern void __CutsceneStart(void);
extern void __MessageID(int message);
extern void __ActorMessage(int actor, int message);
extern void __Func_8092adc(int actor, int value, int arg2);
extern void __CutsceneEnd(void);

void OvlFunc_921_20085dc(void) {
    register int value asm("r1");
    register int actor asm("r0");

    __CutsceneStart();
    __MessageID(0x156d);
    __ActorMessage(8, 0);
    value = 0xc0;
    actor = 8;
    asm volatile("" : : "r"(value), "r"(actor));
    value <<= 6;
    __Func_8092adc(actor, value, 10);
    __CutsceneEnd();
}
