extern unsigned char Lm932_5238[] __asm__(".Lm932_5238");

void OvlFunc_932_20086a0(void)
{
    extern unsigned int __Random(void);
    unsigned short *dispcnt;
    short v;

    dispcnt = (unsigned short *)0x04000000;
    v = *dispcnt & 0xfdff;
    if (((__Random() * 100) >> 16) >= *(unsigned short *)Lm932_5238)
        v |= 0x200;
    *dispcnt = v;
}
