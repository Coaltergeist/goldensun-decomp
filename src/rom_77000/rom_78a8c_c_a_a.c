extern unsigned char ewram_2000380[];

int Func_8078aa0(int index, int amount)
{
    register int slot asm("r2") = index;
    register unsigned char *values asm("r4") = ewram_2000380;
    register int result asm("r0") = 0;
    register int value asm("r3");

    if (slot <= 0x7f) {
        value = values[slot];
        value += amount;
        if (value < 0) {
            value = 0;
        } else if (value > 0x63) {
            value = 0x63;
            result = 0x63;
        } else {
            result = value;
        }
        values[slot] = value;
    }
    return result;
}
