extern unsigned char *iwram_3001ebc;
extern void OvlFunc_971_2008128(unsigned int index);
extern void __ClearFlag(int flag);
extern void __CutsceneStart(void);
extern void __MessageID(int message_id);
extern void __Func_8092c40(int, int);
extern void __CutsceneEnd(void);

int OvlFunc_971_2008340(void)
{
    unsigned char *state = iwram_3001ebc;
    unsigned int offset;
    unsigned short *slot;
    unsigned short zero;

    OvlFunc_971_2008128(4);
    __ClearFlag(0x80 << 2);
    __ClearFlag(0x203);
    __CutsceneStart();
    offset = 0xc1;
    offset <<= 1;
    slot = (unsigned short *)(state + offset);
    zero = 0;
    *slot = zero;
    __MessageID(0x2927);
    __Func_8092c40(8, 0);
    __ClearFlag(0x205);
    __CutsceneEnd();
}
