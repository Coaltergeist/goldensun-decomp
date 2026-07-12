extern unsigned char *iwram_3001ebc;
extern unsigned char *__MapActor_GetActor(int actor);

int OvlFunc_908_20084c8(void)
{
    register unsigned char *state asm("r3") = iwram_3001ebc;
    register unsigned int value asm("r2") = 0xe0;
    register unsigned char *actor asm("r0");

    asm volatile("" : "+r"(state), "+r"(value));
    value <<= 1;
    state += value;
    value += 0x49;
    *(unsigned int *)state = value;

    actor = __MapActor_GetActor(0x1b);
    {
        register unsigned char *field asm("r2") = actor;
        register int filtered asm("r3");
        register unsigned char *sprite asm("r1");

        asm volatile("" : "+r"(actor), "+r"(field));
        field += 0x23;
        asm volatile("" : "+r"(field));
        filtered = 0;
        asm volatile("" : "+r"(field), "+r"(filtered));
        *field = filtered;
        sprite = *(unsigned char **)(actor + 0x50);
        asm volatile("" : "+r"(sprite));
        field = (unsigned char *)(unsigned int)sprite[9];
        asm volatile("" : "+r"(sprite), "+r"(field));
        filtered -= 0xd;
        asm volatile("" : "+r"(sprite), "+r"(field), "+r"(filtered));
        filtered &= (unsigned int)field;
        field = (unsigned char *)8;
        asm volatile("" : "+r"(field), "+r"(filtered));
        filtered |= (unsigned int)field;
        sprite[9] = filtered;
    }
    return 0;
}
