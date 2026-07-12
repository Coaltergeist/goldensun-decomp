extern unsigned char gState[];
extern unsigned char Value_31[] asm("0x31");
extern unsigned char Value_30[] asm("0x30");
extern unsigned char Value_2f[] asm("0x2f");
extern int __GetFlag(int flag);
extern void __Func_8010704(int, int, int, int, int, int);
extern void __MapActor_SetAnim(int actor, int animation);

void OvlFunc_920_20084b4(void);
extern void OvlFunc_920_20084e8(void);
extern void OvlFunc_920_2008538(void);

int OvlFunc_920_200846c(void) {
    register unsigned int address asm("r3") = (unsigned int)gState;
    register unsigned int offset asm("r1") = 0xe0;
    register int value asm("r2");

    asm volatile("" : "+r"(address), "+r"(offset));
    offset <<= 1;
    address += offset;
    offset = 0;
    asm volatile("" : "+r"(address), "+r"(offset));
    value = *(short *)(address + offset);
    address = (unsigned int)Value_31;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        OvlFunc_920_20084b4();
        goto done;
    }
    address = (unsigned int)Value_30;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        OvlFunc_920_20084e8();
        goto done;
    }
    address = (unsigned int)Value_2f;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address)
        OvlFunc_920_2008538();
done:
    return 0;
}

void OvlFunc_920_20084b4(void) {
    if (__GetFlag(0x305) != 0) {
        register int arg4 asm("r3") = 8;
        register int arg5 asm("r2") = 0xd;

        asm volatile("" : "+r"(arg4), "+r"(arg5));
        __Func_8010704(0x1f, 0, 1, 1, arg4, arg5);
        __MapActor_SetAnim(8, 0);
    }
}
