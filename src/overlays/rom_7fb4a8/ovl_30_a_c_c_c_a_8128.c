extern unsigned char OvlData_971_2009940[] asm(".L1940");
extern unsigned int CHAR_ARRAY_ARRAY_971__02009928[];
extern unsigned int ewram_2002224[];

void OvlFunc_971_2008128(unsigned int index)
{
    register unsigned int mapping asm("r3");
    register unsigned int source asm("r2");
    register unsigned int offset asm("r1");
    register unsigned int destination asm("r4");

    mapping = (unsigned int)OvlData_971_2009940;
    asm volatile("" : "+r"(mapping));
    source = (unsigned int)CHAR_ARRAY_ARRAY_971__02009928;
    asm volatile("" : "+r"(mapping), "+r"(source));
    offset = index << 2;
    mapping = *(unsigned char *)(mapping + index);
    asm volatile("" : "+r"(mapping), "+r"(source), "+r"(offset));
    destination = (unsigned int)ewram_2002224;
    asm volatile("" : "+r"(mapping), "+r"(source), "+r"(offset),
                         "+r"(destination));
    source = *(unsigned int *)(offset + source);
    mapping <<= 2;
    *(unsigned int *)(mapping + destination) = source;
}
