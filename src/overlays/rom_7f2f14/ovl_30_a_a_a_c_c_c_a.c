extern unsigned int iwram_3001e40;
extern void __Func_80929d8(unsigned int actor, int animation);
extern void __PlaySound(int sound);

unsigned int OvlFunc_968_20085ac(unsigned int actor)
{
    if ((iwram_3001e40 & 3) == 0)
        __Func_80929d8(actor, 7);
    else
        __Func_80929d8(actor, 0);
    if ((iwram_3001e40 & 7) == 0)
        __PlaySound(0x8a);
    return 0;
}
