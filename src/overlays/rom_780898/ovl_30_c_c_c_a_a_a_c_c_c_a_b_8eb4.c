extern int __GetFlag(int flag);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __CutsceneWait(int duration);
extern void __MessageID(int message);
extern void __Func_8092c40(int actor, int arg1);
extern int __Func_8091c7c(int arg0, int arg1);
extern void __Func_8093040(int actor, int arg1, int arg2);
extern void __ActorMessage(int actor, int message);
extern void __PlaySound(int sound);
extern void __Func_8010560(void *script, int arg1, int arg2);
extern void __Func_809218c(int arg0, int arg1, int arg2);
extern void __Func_8091e9c(int actor);
extern unsigned char iwram_3001ebc[];
extern unsigned char OvlScript_883_200f55a[] asm(".L755a");

void OvlFunc_883_2008eb4(void) {
    unsigned short *p;

    if (__GetFlag(0x815) == 0) goto play_sound;
    if (__GetFlag(0x87a) != 0) goto play_sound;

    __CutsceneStart();
    __MessageID(0x11b6);
    {
        register int arg1 asm("r1") = 0;
        register int arg0 asm("r0") = 0x15;
        asm volatile("" : "+r"(arg0), "+r"(arg1));
        __Func_8092c40(arg0, arg1);
    }
    if (__Func_8091c7c(0, 0) == 0) {
        __Func_8093040(0x15, 0, 0x3c);
        __ActorMessage(0x15, 0);
    } else {
        p = (unsigned short *)(*(unsigned int *)iwram_3001ebc + (0xec << 1));
        *p = *p + 2;
        __CutsceneWait(0x28);
        __ActorMessage(0x15, 0);
    }
    __CutsceneEnd();
    return;

play_sound:
    __PlaySound(0x9e);
    __Func_8010560(OvlScript_883_200f55a, 0x32, 0x2c);
    __Func_809218c(0, 0xaa << 1, 0xde << 2);
    __Func_8091e9c(7);
}
