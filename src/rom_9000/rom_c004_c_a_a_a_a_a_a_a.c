extern unsigned char *iwram_3001e64;

unsigned char *NewActor(void)
{
    register unsigned char *actor asm("r2") = iwram_3001e64;
    register unsigned int occupied asm("r3");
    register unsigned char *result asm("r0");
    register int index asm("r1");

    occupied = *(unsigned int *)actor;
    __asm__ volatile ("" : "+r" (occupied), "+r" (actor));
    result = 0;
    index = 0;
    goto check;
next:
    index++;
    actor += 0x70;
    if (index > 0x3f)
        goto done;
    occupied = *(unsigned int *)actor;
check:
    if (occupied != 0)
        goto next;
    result = actor;
done:
    return result;
}
