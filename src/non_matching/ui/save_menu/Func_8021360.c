extern int _GetFlag(int flag);

extern unsigned char L37206[] __asm__(".L37206");

extern unsigned char L37216[] __asm__(".L37216");

int Func_8021360(unsigned int arg0)
{
    if (arg0 > 8)
        return 0;
    if (_GetFlag(0x20) != 0)
        return ((short *)L37216)[arg0];
    return ((short *)L37206)[arg0];
}
