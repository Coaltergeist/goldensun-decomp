void Func_80dfddc(u8 *src, u8 *dst, int w, int h)
{
    int i, j;

    for (i = 0; i != h; i++) {
        for (j = 0; j != w; j++)
            dst[(h - i - 1) + j * h] = src[i * w + j];
    }
}
