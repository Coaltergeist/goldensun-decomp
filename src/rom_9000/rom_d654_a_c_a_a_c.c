extern int Actor_FindScriptMarker(unsigned char *actor, unsigned int marker);

int ActorCmd_GotoIfNZ(unsigned char *actor)
{
    register unsigned char *actorReg asm("r5") = actor;
    register unsigned int next asm("r0");
    register unsigned int marker asm("r1");
    register unsigned int offset asm("r2");
    register int work asm("r3");

    asm volatile("" : "+r"(actorReg));
    offset = 4;
    asm volatile("" : "+r"(actorReg), "+r"(offset));
    work = *(short *)(actorReg + offset);
    offset = *(unsigned int *)actorReg;
    work <<= 2;
    work += offset;
    marker = *(unsigned int *)(work + 4);
    work = (unsigned int)actorReg;
    work += 0x57;
    work = *(unsigned char *)work;
    next = *(unsigned short *)(actorReg + 4);
    if (work == 0)
        goto advance;
    next = Actor_FindScriptMarker(actorReg, marker);
    *(unsigned short *)(actorReg + 4) = next;
    goto done;

advance:
    work = next + 2;
    *(unsigned short *)(actorReg + 4) = work;
done:
    return 1;
}

int ActorCmd_GotoIfZ(unsigned char *actor)
{
    register unsigned char *actorReg asm("r5") = actor;
    register unsigned int next asm("r0");
    register unsigned int marker asm("r1");
    register unsigned int offset asm("r2");
    register int work asm("r3");

    asm volatile("" : "+r"(actorReg));
    offset = 4;
    asm volatile("" : "+r"(actorReg), "+r"(offset));
    work = *(short *)(actorReg + offset);
    offset = *(unsigned int *)actorReg;
    work <<= 2;
    work += offset;
    marker = *(unsigned int *)(work + 4);
    work = (unsigned int)actorReg;
    work += 0x57;
    work = *(unsigned char *)work;
    next = *(unsigned short *)(actorReg + 4);
    if (work != 0)
        goto advance;
    next = Actor_FindScriptMarker(actorReg, marker);
    *(unsigned short *)(actorReg + 4) = next;
    goto done;

advance:
    work = next + 2;
    *(unsigned short *)(actorReg + 4) = work;
done:
    return 1;
}
