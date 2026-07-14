extern void __CutsceneStart(void);
extern void __MapTransitionIn(void);
extern void __WaitMapTransition(void);
extern void __CutsceneWait(int frames);
extern void OvlFunc_953_2009c5c(int actor, int arg1);
extern void __MessageID(int message);
extern int __GetFlag(int flag);
extern void OvlFunc_953_2009c48(int actor);
extern void __SetFlag(int flag);
extern void __CutsceneEnd(void);
extern unsigned char *iwram_3001ebc;

void OvlFunc_953_200960c(void)
{
    __CutsceneStart();
    {
        register int offset asm("r2");
        register unsigned char *base asm("r3");

        offset = 0xe0;
        base = iwram_3001ebc;
        asm volatile("" : "+r"(offset), "+r"(base));
        offset <<= 1;
        asm volatile("" : "+r"(offset), "+r"(base));
        base += offset;
        asm volatile("" : "+r"(offset), "+r"(base));
        offset += 0x41;
        asm volatile("" : "+r"(offset), "+r"(base));
        *(int *)base = offset;
    }
    __MapTransitionIn();
    __WaitMapTransition();
    __CutsceneWait(0x14);
    OvlFunc_953_2009c5c(0x11, 0xa0 << 7);
    __MessageID(0x206e);
    if (__GetFlag(0x8a4) != 0) {
        unsigned short *p = (unsigned short *)(iwram_3001ebc + (0xec << 1));
        *p = *p + 1;
    }
    OvlFunc_953_2009c48(0x11);
    OvlFunc_953_2009c5c(0x11, 0xc0 << 6);
    __SetFlag(0x8a3);
    __CutsceneEnd();
}
