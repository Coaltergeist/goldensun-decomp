extern unsigned char *iwram_3001f30;
extern unsigned char gState[];
extern unsigned char Value_97[] asm("0x97");
extern int __GetFlag(int flag);
extern void OvlFunc_957_2008b30(void);
extern void __Func_8092950(int actor, int arg1);

void OvlFunc_957_2008c2c(void)
{
    unsigned char *state = iwram_3001f30;

    if (__GetFlag(0x200)) {
        OvlFunc_957_2008b30();
        state[0x34] = 1;
    }

    {
        register unsigned int address asm("r3") = (unsigned int)gState;
        register unsigned int offset asm("r1") = 0xe0;
        register int value asm("r2");

        asm volatile("" : "+r"(address), "+r"(offset));
        offset <<= 1;
        address += offset;
        asm volatile("" : "+r"(address));
        offset = 0;
        asm volatile("" : "+r"(address), "+r"(offset));
        value = *(short *)(address + offset);
        address = (unsigned int)Value_97;
        asm volatile("" : "+r"(address), "+r"(value));
        if (value == (int)address) {
            __Func_8092950(0x10, 6);
            __Func_8092950(0x11, 6);
            __Func_8092950(0x12, 6);
            __Func_8092950(0x13, 6);
            __Func_8092950(0x14, 6);
        }
    }
}
