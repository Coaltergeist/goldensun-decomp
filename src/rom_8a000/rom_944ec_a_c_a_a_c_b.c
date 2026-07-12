typedef struct ActorScale {
    unsigned char padding00[0x18];
    unsigned int scaleX;
    unsigned int scaleY;
} ActorScale;

extern unsigned int iwram_3001800;
extern unsigned int ScaleTable[] __asm__(".L9f0a4");

void Func_8095b8c(ActorScale *actor)
{
    register unsigned int scale asm("r3") = iwram_3001800;
    register unsigned int mask asm("r2") = 1;
    register unsigned int *table asm("r1");

    scale >>= 2;
    table = ScaleTable;
    /* Keep the table load before masking the index. */
    asm volatile("" : "+r"(scale), "+r"(mask), "+r"(table));
    scale &= mask;
    scale <<= 2;
    /* Keep the computed index as the base register. */
    asm volatile("" : "+r"(scale), "+r"(table));
    scale = *(unsigned int *)(scale + (unsigned int)table);
    actor->scaleX = scale;
    actor->scaleY = scale;
}
