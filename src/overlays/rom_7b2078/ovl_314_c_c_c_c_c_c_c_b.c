extern unsigned int iwram_3001e40;
extern void __Func_80929d8(int actor, int animation);

void OvlFunc_926_200c1c4(int actor)
{
    if ((iwram_3001e40 >> 1) & 1) {
        __Func_80929d8(actor, 0xa);
    } else {
        __Func_80929d8(actor, 9);
    }
}
