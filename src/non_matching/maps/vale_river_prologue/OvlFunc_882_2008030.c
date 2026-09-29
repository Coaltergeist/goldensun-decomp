unsigned int OvlFunc_882_2008030(unsigned int arg0)
{
    short *p = (short *)((char *)arg0 + 0x64);
    short v = *p;

    if (v == 0) {
        *(short *)((char *)arg0 + 6) = __Random();
        v = __Random() % 20 + 20;
        *p = v;
    }
    *p = v - 1;
    return 1;
}
