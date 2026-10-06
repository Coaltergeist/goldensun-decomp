extern unsigned char iwram_3001e70[];
extern unsigned int Lm943_5b58[] __asm__(".Lm943_5b58");
extern unsigned int Lm943_5b38[] __asm__(".Lm943_5b38");
extern unsigned int Lm943_5b50[] __asm__(".Lm943_5b50");
extern unsigned int Lm943_5b60[] __asm__(".Lm943_5b60");
extern void OvlFunc_943_2009444(void);

int TolbiBoundShipDeck_MapInit(void)
{
    char *base = *(char **)iwram_3001e70;

    API_ClearFlag(0x11c);
    *(unsigned int *)(*(char **)(iwram_3001e70 + 0x4c) + 0x1c0) = 0x209;
    *(unsigned int *)(base + 0x120) = 0;
    Lm943_5b58[0] = (unsigned short)__Random0();
    Lm943_5b38[0] = (unsigned short)__Random0();
    Lm943_5b50[0] = 0;
    Lm943_5b50[1] = 0;
    Lm943_5b60[0] = 0;
    __Func_800fe9c();
    __WaitFrames(1);
    OvlFunc_943_2009444();
    return 0;
}
