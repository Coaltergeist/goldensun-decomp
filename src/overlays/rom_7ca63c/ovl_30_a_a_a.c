extern int **iwram_3001e70;
extern int Origin_1930[] asm(".L1930");
extern int Origin_1938[] asm(".L1938");

int OvlFunc_944_2008030(int *object)
{
    register int *source asm("r3") = *iwram_3001e70;
    register int *reference asm("r4");
    register int *origin asm("r5");
    register int first asm("r1");
    register int second asm("r2");

    asm volatile("" : "+r"(source));
    reference = Origin_1938;
    asm volatile("" : "+r"(source), "+r"(reference));
    first = *source++;
    origin = Origin_1930;
    asm volatile("" : "+r"(source), "+r"(origin), "+r"(first));
    second = *source;
    object[2] = origin[0] + (first - reference[0]);
    second -= reference[1];
    object[3] = origin[1] + ((second + (int)((unsigned int)second >> 31)) >> 1);

    {
        register unsigned char *sprite asm("r2") = *(unsigned char **)((unsigned char *)object + 0x50);
        register unsigned int amount asm("r1") = 0xc0;
        register unsigned int value asm("r3");

        asm volatile("" : "+r"(sprite), "+r"(amount));
        value = *(unsigned short *)(sprite + 0x1e);
        amount <<= 3;
        asm volatile("" : "+r"(sprite), "+r"(amount), "+r"(value));
        value += amount;
        *(unsigned short *)(sprite + 0x1e) = value;
    }
    return 0;
}
