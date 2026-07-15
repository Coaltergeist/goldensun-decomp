extern void __CutsceneStart(void);
extern void __PlaySound(int sound);
extern void __MapActor_SetSpeed(int actor, int speed, int acceleration);
extern void __Func_8092b08(int actor, int value);
extern void __Func_809218c(int actor, int x, int y);
extern void __Func_8010560(void *script, int x, int y);
extern void __CutsceneWait(int frames);
extern void __Func_8091e9c(int value);
extern void __CutsceneEnd(void);

extern unsigned char gState[];
extern unsigned char Script96b8[] asm("gScript_930__020096b8");
extern unsigned char Script16ce[] asm(".L16ce");
asm(".set Map6b, 0x6b\n.set Map70, 0x70");
extern unsigned char Map6b[];
extern unsigned char Map70[];

void OvlFunc_942_20087dc(void)
{
    register int map asm("r2");
    unsigned char *state;

    __CutsceneStart();
    __PlaySound(0x9e);
    asm volatile(
        "mov r1, #0x80\n"
        "mov r2, #0x80\n"
        "lsl r2, #7\n"
        "mov r0, #0\n"
        "lsl r1, #8\n"
        "bl __MapActor_SetSpeed"
        : : : "r0", "r1", "r2", "r3", "lr");
    asm volatile(
        "mov r1, #3\n"
        "mov r0, #0\n"
        "bl __Func_8092b08"
        : : : "r0", "r1", "r2", "r3", "lr");

    state = gState;
    asm volatile("" : "+r" (state));
    map = *(short *)(state + 0x1c0);
    if (map == (int)Map6b) {
        asm volatile(
            "mov r1, #0x98\n"
            "mov r2, #0xae\n"
            "mov r0, #0\n"
            "lsl r1, #1\n"
            "lsl r2, #3\n"
            "bl __Func_809218c"
            : : : "r0", "r1", "r2", "r3", "lr");
        __Func_8010560(Script96b8, 0x4e, 0x56);
    } else if (map == (int)Map70) {
        __Func_809218c(0, 0xf8, 0xc0);
        __Func_8010560(Script16ce, 0x4a, 9);
    }

    __CutsceneWait(0x10);
    __Func_8091e9c(3);
    __CutsceneEnd();
}
