extern void OvlFunc_969_200d688(unsigned char *object);

void OvlFunc_969_200d9f0(unsigned char *object)
{
    unsigned char *counter;
    register unsigned int shifted asm("r2");
    register unsigned int result asm("r3");
    register unsigned int value asm("r3");
    register unsigned int test asm("r2");

    if (object[0x63] != 0) {
        counter = object + 0x62;
        shifted = *counter;
        result = *(unsigned int *)(object + 0x4c);
        asm volatile("" : "+r"(shifted), "+r"(result));
        shifted = (shifted >> 2) << 16;
        result += shifted;
        *(unsigned int *)(object + 0xc) = result;
        OvlFunc_969_200d688(object);
        value = *counter;
        test = value;
        asm volatile("" : "+r"(value), "+r"(test));
        if (test != 0) {
            asm volatile("" : "+r"(value), "+r"(test));
            if (test <= 0x1f) {
                value++;
                *counter = value;
            }
        }
    }
}
