extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __Func_808c44c(void);
extern void __Func_808c4c0(void);
extern void __Func_801776c(unsigned int message, unsigned int arg1);
extern unsigned int __GetFlag(unsigned int flag);
extern unsigned char *iwram_3001ebc;

void OvlFunc_881_200a8a8(void)
{
    __CutsceneStart();
    __Func_808c44c();
    __Func_801776c(0x264c, 1);
    if (__GetFlag(0x234)) {
        unsigned short *destination =
            (unsigned short *)(iwram_3001ebc + 0x172);
        register unsigned int value asm("r3") = 1;

        *destination = value;
    }
    __Func_808c4c0();
    __CutsceneEnd();
}
