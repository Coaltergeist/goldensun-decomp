extern unsigned char *iwram_3001e70;

int Func_800bfa4(void *actor, int *out)
{
    register unsigned char *p asm("r3") = iwram_3001e70 + 0xe4;
    register unsigned int mask asm("r4");
    register int *o asm("r5");
    register unsigned int fieldX asm("r1");
    register unsigned int fieldZ asm("r2");
    register int dx asm("r1");
    register int dz asm("r2");

    asm volatile("" : "+r"(p));
    mask = 0xffff0000;
    asm volatile("" : "+r"(mask));
    o = out;
    asm volatile("" : "+r"(o));

    fieldX = *(unsigned int *)p;
    fieldZ = *(unsigned int *)(p + 4);
    dx = *(int *)((char *)actor + 8) - (fieldX & mask);
    dz = *(int *)((char *)actor + 0x10) - (fieldZ & mask);

    if ((unsigned int)(dx + 0x1fffff) > 0x12ffffe)
        goto fail;
    if (dz <= 0)
        goto fail;
    if (dz >= 0xe00000)
        goto fail;
    {
        register int t asm("r3");
        t = dx >> 16;
        asm volatile("" : "+r"(t));
        *o++ = t;
        t = dz >> 16;
        asm volatile("" : "+r"(t));
        *o = t;
    }
    return 0;

fail:
    *o++ = 0;
    *o = 0;
    return -1;
}
