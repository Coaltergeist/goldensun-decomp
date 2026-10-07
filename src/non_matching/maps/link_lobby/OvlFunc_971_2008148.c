int OvlFunc_971_2008148(void)
{
    unsigned char *base;
    int res;
    unsigned char *actor;
    int one = 1;
    int two = 2;

    base = *(unsigned char **)iwram_3001ebc;
    res = 1;
    actor = __MapActor_GetActor(0);
    if (*(int *)(actor + 0x10) > (0xe0 << 16)) {
        __ClearFlag(0xc1 << 2);
    }
    if (*(short *)(base + (0xc1 << 1)) != 2) {
        OvlFunc_971_200808c(0);
        if (__GetFlag(0x303) == 0) {
            L1f4c++;
            if (L1f4c > 0x19) {
                void (*fn)(void *, unsigned int) = Func_80008d4;
                unsigned char *p = ewram_2002024;
                int count = 3;
                do {
                    count--;
                    fn(p, 0x14);
                    p += 0x18;
                } while (count >= 0);
                L1f4c = 0;
                OvlFunc_971_2008128(4);
            }
        } else {
            L1f4c = 0;
        }
        if (L1f4c == 0) {
            if (OvlFunc_971_200808c(0) != 0 &&
                (OvlFunc_971_200808c(1) != 0 || OvlFunc_971_200808c(2) != 0)) {
                __SetFlag(0x201);
                if (__GetFlag(0x202) != 0) {
                    *(short *)(base + (0xc1 << 1)) = one;
                }
                res = 1;
            } else {
                __ClearFlag(0x201);
                res = 0;
            }
        }
        if (__GetFlag(0x201) != 0 && __GetFlag(0x202) != 0 && __GetFlag(0x80 << 2) == 0) {
            *(short *)(base + (0xc1 << 1)) = one;
        }
    }
    if ((__GetFlag(0x201) != 0 || __GetFlag(0x202) != 0) &&
        __GetFlag(0x173) == 0 &&
        OvlFunc_971_200808c(0) == 0 &&
        L1f4c > 0x18) {
        *(short *)(base + (0xc1 << 1)) = two;
        __SetFlag(0x205);
        __ClearFlag(0x201);
        __ClearFlag(0x202);
        OvlFunc_971_2008128(4);
    }
    if (__GetFlag(0x205) != 0) {
        *(short *)(base + (0xc1 << 1)) = two;
    }
    return res;
}
