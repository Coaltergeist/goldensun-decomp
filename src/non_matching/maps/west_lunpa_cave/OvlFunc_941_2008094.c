extern void __SetFlag(int);

void OvlFunc_941_2008094(void) {
    unsigned char *r0;

    r0 = __MapActor_GetActor(9);
    if (r0 != 0) {
        r0[0x23] = 1;
        r0[0x55] = 0;
    }
    __Func_8010704(7, 0x20, 1, 1, 8, 0x20);
    __SetFlag(0x81 << 2);
}
