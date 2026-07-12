extern unsigned char *__MapActor_GetActor(int actor);
extern void OvlFunc_964_2008cd0(unsigned int *position);

void OvlFunc_964_2008dc8(void)
{
    unsigned int buffer[3];
    unsigned char *actor;
    register unsigned int *position asm("r2");
    register unsigned int offset asm("r1");
    unsigned int value;

    actor = __MapActor_GetActor(0);
    value = *(unsigned int *)(actor + 8);
    position = buffer;
    asm volatile("" : "+r"(position));
    position[0] = value;
    value = *(unsigned int *)(actor + 0xc);
    position[1] = value;
    offset = 0x80;
    value = *(unsigned int *)(actor + 0x10);
    offset <<= 14;
    value += offset;
    position[2] = value;
    OvlFunc_964_2008cd0(position);
}

/* The original function-size directive includes its two alignment bytes. */
asm(".size OvlFunc_964_2008dc8, 44");
