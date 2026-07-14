typedef unsigned char u8;

extern u8 gOvl_899_L4f2c[] asm(".L4f2c");

u8 *OvlFunc_899_200c704(int *param_1)
{
    register int v0 asm("r4");
    register int v1 asm("r1");
    register u8 *p asm("r2");
    register u8 *found asm("r5");
    register int t asm("r3");
    unsigned int i;

    t = param_1[0];
    t += (int)0xffc00000;
    asm volatile("" : "+r" (t));
    v0 = t >> 19;

    t = param_1[2];
    t += (int)0xfd900000;
    asm volatile("" : "+r" (t));
    p = gOvl_899_L4f2c;
    asm volatile("" : "+r" (t), "+r" (p));
    v1 = t >> 19;

    found = 0;

    for (i = 0; i <= 0x24; i++, p += 0x10) {
        if (p[0] != v0 && p[0] + 1 != v0)
            continue;
        if (p[1] != v1 && p[1] + 1 != v1)
            continue;
        found = p;
        break;
    }

    return found;
}
