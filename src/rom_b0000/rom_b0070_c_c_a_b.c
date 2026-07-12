extern unsigned char *iwram_3001f2c;
extern int Func_80b27b0(int item, int category);

int Func_80b280c(void)
{
    register unsigned char *state asm("r5");
    register int category asm("r10");
    register unsigned char *itemBase asm("r8");
    register int itemOffset asm("r6");
    register int index asm("r7");
    register int headerOffset asm("r1") = 0x3aa;
    register int matches asm("r2");
    register int value asm("r3");
    int itemCount;

    state = iwram_3001f2c;
    asm volatile("" : "+r"(state), "+r"(headerOffset));
    value = (unsigned int)(state + headerOffset);
    asm volatile("" : "+r"(value));
    value = *(unsigned char *)value;
    value <<= 24;
    value >>= 24;
    headerOffset -= 3;
    category = (signed char)value;
    value = (unsigned int)(state + headerOffset);
    asm volatile("" : "+r"(value));
    value = *(unsigned char *)value;
    value <<= 24;
    value >>= 24;
    itemCount = (signed char)value;
    matches = 0;
    asm volatile("" : "+r"(matches));
    /* Reserve GCC's original spill slot for matches across the call. */
    asm volatile("sub sp, #4" ::: "memory");
    index = 0;
    asm volatile("" : "+r"(matches), "+r"(index));

    if (matches < itemCount) {
        value = (unsigned int)state + 2;
        asm volatile("" : "+r"(value));
        itemOffset = 0xdb;
        itemBase = (unsigned char *)value;
        itemOffset <<= 2;

        do {
            register unsigned char *itemAddress asm("r1") = itemBase;
            register int callCategory asm("r1");
            register int item asm("r0");
            int isMatch;

            asm volatile("" : "+r"(itemAddress), "+r"(itemOffset));
            item = *(short *)(itemAddress + itemOffset);
            callCategory = category;
            asm volatile("" : "+r"(item), "+r"(callCategory));
            /* Keep the call-clobbered match count in the original spill slot. */
            asm volatile("str %0, [sp]" : : "r"(matches) : "memory");
            isMatch = Func_80b27b0(item, callCategory);
            asm volatile("ldr %0, [sp]" : "=r"(matches) : : "memory");
            if (isMatch != 0)
                matches++;
            itemCount = (signed char)state[0x3a7];
            index++;
            itemOffset += 2;
        } while (index < itemCount);
    }
    {
        register int result asm("r0");

        /* Restore the spill slot after materializing the return value. */
        asm volatile("mov %0, %1\n\tadd sp, #4"
                     : "=r"(result) : "r"(matches) : "memory");
        return result;
    }
}
