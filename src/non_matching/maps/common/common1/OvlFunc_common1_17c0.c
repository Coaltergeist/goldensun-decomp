extern unsigned char L8[] __asm__(".L8");

unsigned int OvlFunc_common1_17c0(unsigned int arg0)
{
    unsigned char *r5;
    short id;
    unsigned char *actor;
    unsigned int dest;

    r5 = (unsigned char *)arg0;
    id = *(short *)(r5 + 0x64);
    actor = (unsigned char *)__MapActor_GetActor(id);
    dest = *(unsigned int *)(r5 + 0xc) + (0x90 << 14);
    __Actor_TravelTo(actor, *(unsigned int *)(r5 + 8), dest, *(unsigned int *)(r5 + 0x10));
    actor[0x55] = 0;
    __Actor_SetScript(actor, L8);
    __PlaySound(0x53);
    *(short *)(r5 + 0x64) = 0;
    return 0;
}
