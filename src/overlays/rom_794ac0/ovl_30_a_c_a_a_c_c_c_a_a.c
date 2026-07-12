extern void __CutsceneStart(void);
extern void __MessageID(int message);
extern void OvlFunc_899_20083bc(int actor);
extern void __Func_8092adc(int actor, int value, int arg2);
extern void __CutsceneEnd(void);

void OvlFunc_899_2008428(void) {
    register int value asm("r1");
    register int actor asm("r0");

    __CutsceneStart();
    __MessageID(0x1253);
    OvlFunc_899_20083bc(15);
    value = 0x80;
    actor = 15;
    asm volatile("" : : "r"(value), "r"(actor));
    value <<= 8;
    __Func_8092adc(actor, value, 0);
    __CutsceneEnd();
}
