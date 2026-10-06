unsigned int Func_80bf54c(unsigned int arg0) {
    unsigned char *p;
    unsigned char v;

    p = _GetUnit(arg0) + 0x13f;
    v = *p;
    if (v == 0)
        return 0;
    v = v - 1;
    *p = v;
    return v != 0;
}
