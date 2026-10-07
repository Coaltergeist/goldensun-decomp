void OvlFunc_964_2009038(unsigned int arg0)
{
    int *r5;
    int r6;

    r5 = (int *)arg0;
    r6 = 0x3c;
    while (r6 != 0) {
        __WaitFrames(1);
        r6--;
        if (r5[3] <= r5[5])
            break;
    }
    r5[0xa] = 0;
    r5[3] = r5[5];
    r5[0xf] = 0x80 << 24;
}
