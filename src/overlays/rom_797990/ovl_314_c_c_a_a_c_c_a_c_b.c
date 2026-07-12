extern unsigned char EffectScript_1740[] __asm__(".L1740");
extern unsigned char EffectScript_1756[] __asm__(".L1756");
extern void __PlaySound(int sound);
extern void __Func_8010560(void *script, int x, int z);
extern void OvlFunc_901_2008a80(int x, int z, int map);

void OvlFunc_901_2008ac8(void)
{
    __PlaySound(0x9e);
    __Func_8010560(EffectScript_1740, 0x38, 0x13);
    OvlFunc_901_2008a80(0xcc << 1, 0xa0 << 1, 5);
}

void OvlFunc_901_2008af0(void)
{
    __PlaySound(0x9e);
    __Func_8010560(EffectScript_1756, 0x32, 0x12);
    OvlFunc_901_2008a80(0x9c << 1, 0x98 << 1, 6);
}
