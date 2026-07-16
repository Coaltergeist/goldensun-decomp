extern unsigned int __Random(void);
extern unsigned short gOvl932FlashThreshold;

void OvlFunc_932_20086a0(void)
{
    volatile unsigned short *display_control = (volatile unsigned short *)0x04000000;
    int value = (short)(*display_control & 0xfdff);
    register int flag asm("r3");
    register unsigned int stored asm("r3");

    if (((__Random() * 100) >> 16) >= gOvl932FlashThreshold) {
        flag = 0x80;
        asm("" : "+r" (flag));
        flag <<= 2;
        asm("" : "+r" (flag));
        value |= flag;
    }
    stored = (unsigned short)value;
    asm("" : "+r" (stored));
    *display_control = stored;
}
