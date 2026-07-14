typedef unsigned char u8;

extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern int __GetFlag(int flag);
extern void __Func_801776c(int message, int arg1);
extern u8 *iwram_3001ebc;

void OvlFunc_895_20083bc(void)
{
    __CutsceneStart();
    if (__GetFlag(0x821)) {
        __Func_801776c(0x1034, 1);
    } else if (__GetFlag(0xf02)) {
        u8 *base = iwram_3001ebc;
        __Func_801776c(0x1031, 1);
        {
            unsigned short *destination = (unsigned short *)(base + (0xb9 << 1));
            register unsigned int value asm("r3") = 1;
            *destination = value;
        }
    } else {
        __Func_801776c(0x1031, 1);
    }
    __CutsceneEnd();
}
