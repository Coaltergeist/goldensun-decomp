extern unsigned char EffectScript_2828[] __asm__(".L2828");
extern unsigned char EffectScript_283e[] __asm__(".L283e");
extern void __PlaySound(int sound);
extern void __Func_8010560(void *script, int x, int z);
extern void OvlFunc_898_2008ef4(int x, int z, int map);

void OvlFunc_898_2008f3c(void)
{
    __PlaySound(0x9e);
    __Func_8010560(EffectScript_2828, 0x38, 0x13);
    OvlFunc_898_2008ef4(0xcc << 1, 0xa0 << 1, 5);
}

void OvlFunc_898_2008f64(void)
{
    __PlaySound(0x9e);
    __Func_8010560(EffectScript_283e, 0x32, 0x12);
    OvlFunc_898_2008ef4(0x9c << 1, 0x98 << 1, 6);
}
