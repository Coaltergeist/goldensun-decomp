extern void __ActorMessage(unsigned long, int);
extern void __CutsceneEnd(void);
extern void __CutsceneStart(void);
extern void __MessageID(int);

void OvlFunc_881_200a81c(void) {
    extern unsigned char L679c[] __asm__(".L679c");

    int v;

    __CutsceneStart();
    __Func_809280c(0x37, 0, 0);
    __MessageID(0x2642);
    v = *(int *)L679c;
    __ActorMessage(v, 0);
    __Func_8092adc(0x37, 0xc0 << 6, 0);
    __CutsceneEnd();
}
