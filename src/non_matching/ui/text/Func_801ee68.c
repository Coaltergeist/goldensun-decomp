void Func_801ee68(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3, unsigned short arg4) {
    unsigned short *r0 = (unsigned short *)0x6002000;
    unsigned int i, j;
    int step;

    if (arg3 == 0) return;
    step = (0x20 - arg2) * 2;
    for (i = 0; i < arg3; i++) {
        for (j = 0; j < arg2; j++) {
            *r0 = arg4;
            r0 = (unsigned short *)((char *)r0 + 2);
        }
        r0 = (unsigned short *)((char *)r0 + step);
    }
}
