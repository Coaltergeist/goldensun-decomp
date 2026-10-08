void OvlFunc_924_200a844(void)
{
    extern void __WaitFrames(int);

    unsigned int count;
    unsigned int i;
    vu16 *pal;
    int r;
    int g;
    int b;

    do {
        pal = (vu16 *)0x5000050;
        count = 0;
        for (i = 0; i <= 7; i++, pal++) {
            r = *pal & 0x1f;
            g = (*pal >> 5) & 0x1f;
            b = (*pal >> 10) & 0x1f;
            if (r == 0x1f && g == 0x1f && b == 0x1f) {
                count++;
            } else {
                if (r < 0x1f)
                    r++;
                if (g < 0x1f)
                    g++;
                if (b < 0x1f)
                    b++;
                *pal = (b << 10) | (g << 5) | r;
            }
        }
        __WaitFrames(2);
    } while (count <= 7);
}
