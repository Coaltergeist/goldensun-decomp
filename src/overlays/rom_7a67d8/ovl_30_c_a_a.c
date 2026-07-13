extern unsigned int gKeyHeld;
extern unsigned int gKeyRepeat;
extern unsigned short L590[] __asm__(".L590");
extern unsigned short L5b0[] __asm__(".L5b0");
extern void __Func_8005ee0(unsigned short *keys, unsigned short *state);

void OvlFunc_919_20081d4(void)
{
    L590[0] = gKeyHeld;
    L590[1] = gKeyRepeat;
    __Func_8005ee0(L590, L5b0);
}
