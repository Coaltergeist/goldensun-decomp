extern unsigned char gState[];
extern unsigned char Value_92[] asm("0x92");
extern unsigned char Value_97[] asm("0x97");
extern unsigned char Reg_bldalpha[] asm("0x4000052");
extern void __Func_8092950(int actor, int arg1);

void OvlFunc_957_2008bc8(void)
{
    register unsigned int address asm("r3") = (unsigned int)gState;
    register unsigned int offset asm("r0") = 0xe0;
    register unsigned int raw asm("r1");
    register int value asm("r2");

    asm volatile("" : "+r"(address), "+r"(offset));
    offset <<= 1;
    address += offset;
    asm volatile("" : "+r"(address));
    raw = *(unsigned short *)address;
    offset = 0;
    asm volatile("" : "+r"(address), "+r"(offset), "+r"(raw));
    value = *(short *)(address + offset);
    address = (unsigned int)Value_92;
    asm volatile("" : "+r"(address), "+r"(value), "+r"(raw));
    if (value == (int)address) {
        register int mode asm("r2") = 0x80;
        register unsigned int reg asm("r3") = (unsigned int)Reg_bldalpha;

        asm volatile("" : "+r"(mode), "+r"(reg));
        mode <<= 5;
        asm volatile("" : "+r"(mode), "+r"(reg));
        *(volatile unsigned short *)reg = mode;
    }
    {
        register int signval asm("r3");

        signval = (short)raw;
        if (signval == (int)(unsigned int)Value_97) {
            __Func_8092950(0x10, 1);
            __Func_8092950(0x11, 4);
            __Func_8092950(0x12, 0xb);
            __Func_8092950(0x13, 2);
            __Func_8092950(0x14, 3);
        }
    }
}
