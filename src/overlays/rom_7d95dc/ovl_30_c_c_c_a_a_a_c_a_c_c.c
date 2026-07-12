extern void __CutsceneStart(void);
extern void __Func_80925cc(int actor, int arg1);
extern void __MessageID(int message);
extern void __Func_8093040(int actor, int arg1, int arg2);
extern int __GetFlag(int flag);
extern void __CutsceneWait(int frames);
extern void OvlFunc_953_2009c5c(int actor, int arg1);
extern void OvlFunc_953_2009c48(int actor);
extern void __Func_8092848(int actor, int arg1, int arg2);
extern void __MapActor_SetAnim(int actor, int animation);
extern void __MapActor_Emote(int actor, int emote, int arg2);
extern void __SetFlag(int flag);
extern void __CutsceneEnd(void);
extern unsigned char Flag_3c1[] asm("0x3c1");
extern unsigned char Emote_105[] asm("0x105");

void OvlFunc_953_200855c(void) {
    register int arg0 asm("r0");
    register int arg1 asm("r1");
    register int arg2 asm("r2");

    __CutsceneStart();
    __Func_80925cc(0x10, 2);
    __MessageID(0x211b);
    __Func_8093040(0x10, 0, 0x14);
    arg0 = (int)Flag_3c1;
    asm volatile("" : "+r"(arg0));
    if (__GetFlag(arg0) != 0) {
        __CutsceneWait(0x14);
    } else {
        OvlFunc_953_2009c5c(0x11, 0);
        __Func_80925cc(0x11, 1);
        OvlFunc_953_2009c48(0x11);
        __Func_8092848(0x11, 0, 0x14);
        __MapActor_SetAnim(0x11, 4);
        OvlFunc_953_2009c48(0x11);
        arg1 = (int)Emote_105;
        asm volatile("" : "+r"(arg1));
        arg2 = 0x28;
        arg0 = 0x11;
        asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
        __MapActor_Emote(arg0, arg1, arg2);
        OvlFunc_953_2009c48(0x11);
        arg1 = 0xa0;
        asm volatile("" : "+r"(arg1));
        arg0 = 0x11;
        asm volatile("" : "+r"(arg0), "+r"(arg1));
        arg1 <<= 7;
        asm volatile("" : "+r"(arg0), "+r"(arg1));
        OvlFunc_953_2009c5c(arg0, arg1);
        arg0 = (int)Flag_3c1;
        asm volatile("" : "+r"(arg0));
        __SetFlag(arg0);
    }
    __CutsceneEnd();
}
