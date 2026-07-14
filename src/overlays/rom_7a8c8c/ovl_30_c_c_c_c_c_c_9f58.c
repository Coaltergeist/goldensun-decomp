extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern int __GetFlag(int flag);
extern void __Func_801776c(unsigned int message, unsigned int arg1);
extern int __CheckPartyItem(int item);
extern unsigned char *iwram_3001ebc;

void OvlFunc_922_2009f58(void)
{
    __CutsceneStart();
    if (__GetFlag(0x820)) {
        __Func_801776c(0x17e5, 1);
    } else {
        __Func_801776c(0x17e4, 1);
        if (__CheckPartyItem(0xe6) != -1) {
            unsigned short *destination = (unsigned short *)(iwram_3001ebc + 0x172);
            register unsigned int value asm("r3") = 1;
            *destination = value;
        }
    }
    __CutsceneEnd();
}
