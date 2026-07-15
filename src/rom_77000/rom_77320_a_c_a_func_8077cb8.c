typedef unsigned char u8;
typedef unsigned short u16;

extern u8 *GetFile(int file_id);
extern u8 gDebugMode;

u16 Func_8077cb8(void)
{
    register int fileId asm("r0");
    register u8 *digits asm("r0");
    register int first asm("r5");
    register int second asm("r4");
    register int third asm("r2");
    register int digit asm("r2");
    register int temp asm("r3");
    register int decimalBias asm("r1");
    register int debug asm("r3");
    int result;

    asm volatile("ldr r0, =2" : "=r"(fileId));
    digits = GetFile(fileId);
    digit = *digits;
    temp = digit << 2;
    asm volatile("ldr r1, =0xfffffe20" : "=r"(decimalBias));
    temp += digit;
    temp <<= 1;
    digits++;
    first = temp + decimalBias;
    temp = *digits;
    digits++;
    digit = *digits;
    asm volatile("add %0, %1, %0" : "+r"(temp) : "r"(first));
    asm volatile("" : "+r"(temp), "+r"(first));
    first = temp;
    asm volatile("" : "+r"(first), "+r"(digits), "+r"(decimalBias));

    temp = digit << 2;
    temp += digit;
    temp <<= 1;
    digits++;
    second = temp + decimalBias;
    temp = *digits;
    digits++;
    digit = *digits;
    asm volatile("add %0, %1, %0" : "+r"(temp) : "r"(second));
    asm volatile("" : "+r"(temp), "+r"(second));
    second = temp;
    asm volatile("" : "+r"(second), "+r"(digits), "+r"(decimalBias));

    temp = digit << 2;
    temp += digit;
    temp <<= 1;
    third = temp + decimalBias;
    asm volatile("ldrb %0, [%1, #1]" : "=r"(temp) : "r"(digits));
    first -= 0x30;
    asm volatile("add %0, %1, %0" : "+r"(temp) : "r"(third));
    asm volatile("" : "+r"(temp), "+r"(third));
    third = temp;
    second -= 0x30;
    temp = first << 4;
    temp += second;
    third -= 0x30;
    temp <<= 6;
    temp += third;
    digit = *digits;
    {
        register int packedWord asm("r3") = temp;
        register int combined asm("r2") = 0x80;
        combined <<= 21;
        packedWord <<= 16;
        combined |= packedWord;
        asm volatile("" : "+r"(combined));
        asm volatile("ldr %0, =gDebugMode\n\tldrb %0, [%0]" : "=r"(debug));
        result = combined >> 16;
    }

    if (debug != 0) {
        register int signMask asm("r3");
        asm volatile("ldr %0, =0xffff8000" : "=r"(signMask));
        result |= signMask;
    }
    return result;
}
