struct OvlActor957_8ee0 {
    unsigned char pad_00[0x18];
    int field_18;
    int field_1c;
    unsigned char pad_20[0x44];
    unsigned short field_64;
};

void OvlFunc_957_2008ee0(struct OvlActor957_8ee0 *actor)
{
    register unsigned short *field asm("r1");
    register int index asm("r3");
    register unsigned int mask asm("r2");
    register int *table asm("r4");

    field = &actor->field_64;
    index = *field;
    asm volatile("ldr %0, =3" : "=r"(mask));
    asm volatile("" : "+r"(index), "+r"(mask));
    index = (unsigned int)index << 16;
    index = (int)index >> 18;
    asm volatile("ldr %0, =.L4468" : "=r"(table));
    asm volatile("" : "+r"(index), "+r"(mask), "+r"(table));
    index &= mask;
    index <<= 2;
    asm volatile("ldr %0, [%1, %0]" : "+r"(index) : "r"(table));
    actor->field_18 = index;
    actor->field_1c = index;
    asm volatile("" : : : "memory");
    index = *field;
    mask = 0xf;
    asm volatile("" : "+r"(index), "+r"(mask));
    index++;
    index &= mask;
    *field = index;
    asm volatile("b .Lreturn_957_2008ee0\n\t.align 2, 0\n\t.pool\n"
                 ".Lreturn_957_2008ee0:");
}

/* Include the original trailing alignment in the function symbol size. */
