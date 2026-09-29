unsigned int Func_80bf574(unsigned int arg0) {
    unsigned char *base;
    unsigned char *p;
    unsigned char v;

    base = _GetUnit(arg0);
    p = base + 0x146;
    v = *p;
    if (v == 0)
        return 0;
    v = v - 1;
    *p = v;
    if (v != 0)
        return 0;
    base[0x147] = v;
    return 1;
}
