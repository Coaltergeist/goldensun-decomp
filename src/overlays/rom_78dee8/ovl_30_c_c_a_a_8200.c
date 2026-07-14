extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __Func_801776c(unsigned int message, unsigned int arg1);
extern int __GetFlag(unsigned int flag);
extern unsigned short *iwram_3001ebc;

void OvlFunc_895_2008200(void)
{
    __CutsceneStart();
    if (__GetFlag(0x81a)) {
        __Func_801776c(0x1034, 1);
    } else {
        __Func_801776c(0x1031, 1);
        if (__GetFlag(0xf01)) {
            unsigned short *slot = iwram_3001ebc + 0xb9;
            register unsigned int value asm("r3") = 1;
            *slot = value;
        }
    }
    __CutsceneEnd();
}
