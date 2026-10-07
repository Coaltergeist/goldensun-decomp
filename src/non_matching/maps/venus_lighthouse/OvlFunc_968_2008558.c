void OvlFunc_968_2008558(void)
{
    extern unsigned char iwram_3001ebc[];
    extern void __Func_80929d8(unsigned int actor, int x);
    unsigned int *slot;
    unsigned int actor;
    unsigned short v;
    unsigned int i;

    slot = *(unsigned int **)iwram_3001ebc;
    i = 8;
    slot = (unsigned int *)((char *)slot + 0x34);
    for (; i <= 0x41; i++) {
        actor = *slot++;
        v = *(unsigned short *)(actor + 0x64);
        if ((v << 16) >> 20 == 0x212)
            __Func_80929d8(actor, v & 0xf);
    }
}
