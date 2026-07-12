extern unsigned char *GetFieldActor(int actor);
extern unsigned char *MapActor_GetActor(int actor);

void Func_8092b08(int actorID, int value)
{
    register unsigned char *bytePtr asm("r0");
    register unsigned char *data asm("r1");
    register unsigned int mask asm("r2");
    register unsigned int work asm("r3");
    register unsigned int bits asm("r4");
    register int valueReg asm("r5") = value;
    register unsigned char *actor asm("r6");

    asm volatile("" : "+r"(valueReg));
    actor = GetFieldActor(actorID);
    if (actor == 0)
        goto done;
    work = (unsigned int)actor;
    work += 0x54;
    mask = *(unsigned char *)work;
    work = 0xf;
    work &= mask;
    if (work != 1)
        goto done;
    data = *(unsigned char **)(actor + 0x50);
    mask = 0xd;
    bytePtr = (unsigned char *)(unsigned int)data[9];
    work = 3;
    asm volatile("" : "+r"(bytePtr), "+r"(data), "+r"(mask), "+r"(work), "+r"(valueReg));
    mask = -mask;
    valueReg &= work;
    work = mask;
    bits = valueReg << 2;
    work &= (unsigned int)bytePtr;
    work |= bits;
    data[9] = work;
    work = data[0x15];
    mask &= work;
    mask |= bits;
    data[0x15] = mask;
    data = actor;
    data += 0x23;
    mask = *data;
    work = 0xfe;
    work &= mask;
    *data = work;
done:
    return;
}

void Func_8092b54(int destination, int source)
{
    register unsigned char *data asm("r0");
    register unsigned int half asm("r2");
    register unsigned int work asm("r3");
    register unsigned int value asm("r5");
    register unsigned int byte asm("r6");
    register int destinationReg asm("r8") = destination;

    asm volatile("" : "+r"(destinationReg));
    data = MapActor_GetActor(source);
    data = *(unsigned char **)(data + 0x50);
    byte = data[0x1c];
    value = *(unsigned short *)(data + 8);
    data = MapActor_GetActor(destinationReg);
    data = *(unsigned char **)(data + 0x50);
    work = 0xfffffc00;
    half = *(unsigned short *)(data + 8);
    value <<= 22;
    value >>= 22;
    work &= half;
    work |= value;
    data[0x1c] = byte;
    *(unsigned short *)(data + 8) = work;
}
