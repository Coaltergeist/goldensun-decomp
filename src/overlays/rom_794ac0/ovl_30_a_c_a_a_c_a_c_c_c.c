extern unsigned char gState[];
extern unsigned char Script_61fc[] asm(".L61fc");
extern unsigned char Script_6250[] asm(".L6250");
extern unsigned char Script_5e30[] asm(".L5e30");
extern int __GetFlag(int flag);

void *OvlFunc_899_2008310(void)
{
    register int value asm("r3") = (unsigned int)gState;
    register unsigned int offset asm("r2") = 0xe1;
    register void *result asm("r0");

    asm volatile("" : "+r"(value), "+r"(offset));
    offset <<= 1;
    value += offset;
    offset = 0;
    asm volatile("" : "+r"(value), "+r"(offset));
    value = *(short *)(value + offset);
    asm volatile("" : "+r"(value));
    switch (value) {
    case 0xf:
    case 0x10:
    case 0x11:
        result = Script_61fc;
        break;
    default:
        if (__GetFlag(0x855) != 0) {
            result = Script_6250;
        } else {
            result = Script_5e30;
        }
        break;
    }
    asm volatile("" : "+r"(result));
    return result;
}
