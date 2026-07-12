extern int *iwram_3001f2c;

void Func_80ad5f4(unsigned int index, int value)
{
    register unsigned int base asm("r3") = (unsigned int)&iwram_3001f2c;
    register unsigned int offset asm("r2") = 0x91;

    /* Preserve the original base and offset materialization order. */
    asm volatile("" : "+r"(base), "+r"(offset));
    base = *(unsigned int *)base;
    offset <<= 2;
    index <<= 2;
    index += offset;
    *(int *)(base + index) = value;
}
