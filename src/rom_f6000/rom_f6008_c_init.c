typedef unsigned int u32;

typedef struct WorkEntry {
    u32 value;
    u32 index;
    u32 unused;
} WorkEntry;

extern unsigned char *ewram_2004c00;

void Func_80f7db4(void)
{
    register WorkEntry *entry asm("r3");
    register int limit asm("r0");
    register int i asm("r2");
    register int zero asm("r1");

    entry = (WorkEntry *)ewram_2004c00;
    asm volatile ("" : "+r" (entry));

    limit = 0x3ff;
    i = 0;
    zero = 0;

    asm volatile ("" : "+r" (i), "+r" (zero));
    entry = (WorkEntry *)((unsigned char *)entry + 4);

    do {
        entry->index = i;
        i++;
        entry->value = zero;
        entry++;
    } while (i <= limit);

    {
        register u32 *clear asm("r3") =
            (u32 *)(ewram_2004c00 + 0x3000);
        register int clearValue asm("r1") = 0;
        register int remaining asm("r2") = 0xff;

        do {
            remaining--;
            *clear++ = clearValue;
        } while (remaining >= 0);
    }
}
