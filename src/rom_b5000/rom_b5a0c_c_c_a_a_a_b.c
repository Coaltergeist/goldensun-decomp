typedef unsigned int (*ClearMemory)(void *address, int count);

extern unsigned int Func_80008d4(void);
extern unsigned int ewram_2002224;

unsigned int Func_80b63b0(void)
{
    register ClearMemory clear asm("r3") = (ClearMemory)Func_80008d4;
    register int count asm("r1") = 0x10;
    register void *address asm("r0") = &ewram_2002224;

    /* Preserve function-pointer and argument materialization order. */
    asm volatile("" : "+r"(clear), "+r"(count), "+r"(address));
    return clear(address, count);
}
