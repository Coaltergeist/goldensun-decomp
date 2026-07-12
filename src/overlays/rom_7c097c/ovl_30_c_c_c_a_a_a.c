extern unsigned char *__MapActor_GetActor(int actor);
extern void __Func_80b0278(int actor, int arg1);
extern void __CutsceneStart(void);
extern void __MessageID(int message);
extern void __Func_8093054(int actor, int arg1);
extern void __CutsceneEnd(void);

void OvlFunc_936_20083d8(void) {
    unsigned char *actor = __MapActor_GetActor(0);
    unsigned int adjusted = *(unsigned short *)(actor + 6) - 0x6001;

    if ((adjusted << 16) <= 0x7ffe0000) {
        __Func_80b0278(0x17, 0x17);
    } else {
        __CutsceneStart();
        __MessageID(0x1ad1);
        {
            register int arg1 asm("r1") = 0;
            register int arg0 asm("r0") = 0x17;

            asm volatile("" : : "r"(arg1), "r"(arg0));
            __Func_8093054(arg0, arg1);
        }
        __CutsceneEnd();
    }
}
