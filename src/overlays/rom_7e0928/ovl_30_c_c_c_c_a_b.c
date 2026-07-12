int OvlFunc_956_200937c(unsigned char *actor)
{
    register unsigned char *savedActor asm("r0") = actor;
    register short *xVelocity asm("r1");
    register unsigned int zAddress asm("r4");
    register int value asm("r2");
    register int work asm("r3");

    xVelocity = (short *)savedActor;
    xVelocity = (short *)((unsigned char *)xVelocity + 0x64);
    work = 0;
    value = *(short *)((unsigned char *)xVelocity + work);
    work = *(int *)(savedActor + 8);
    value <<= 8;
    work += value;
    *(int *)(savedActor + 8) = work;

    asm volatile("" : : : "memory");
    zAddress = 0x66;
    asm volatile("" : "+r"(zAddress));
    zAddress += (unsigned int)savedActor;
    work = 0;
    value = *(short *)(zAddress + work);
    work = *(int *)(savedActor + 0xc);
    value <<= 8;
    work += value;
    *(int *)(savedActor + 0xc) = work;

    value = 0x666;
    work = *(int *)(savedActor + 0x18);
    work += value;
    *(int *)(savedActor + 0x18) = work;
    work = *(int *)(savedActor + 0x1c);
    work += value;
    *(int *)(savedActor + 0x1c) = work;

    work = *(unsigned short *)xVelocity;
    work += 5;
    *(unsigned short *)xVelocity = work;
    work = *(unsigned short *)zAddress;
    work -= 1;
    *(unsigned short *)zAddress = work;
    return 0;
}
