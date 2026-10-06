unsigned int OvlFunc_968_2008098(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3)
{
    unsigned int r5;
    unsigned char *p;

    r5 = (unsigned int)__CreateActor(arg3, arg0, arg1, arg2);
    if (r5 == 0) {
        return 0;
    }
    p = *(unsigned char **)(r5 + 0x50);
    p[9] = (p[9] & ~0xd) | 4;
    OvlFunc_968_2008030(r5, 0xf);
    *(unsigned char *)(r5 + 0x23) |= 2;
    return r5;
}
