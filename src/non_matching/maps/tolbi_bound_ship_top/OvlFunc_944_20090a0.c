void OvlFunc_944_20090a0(void)
{
    int *dst;
    int cos_val;
    int sin_val;
    int val28;
    unsigned int rnd28;

    dst = (int *)*iwram_3001e70;
    cos_val = __cos(*(int *)Lm944_1940);
    sin_val = __sin(*(int *)Lm944_1928);

    *dst++ += cos_val;
    sin_val <<= 2;
    *dst += sin_val;

    *(int *)Lm944_1924 += cos_val;
    *(int *)Lm944_1920 += sin_val;

    *(int *)Lm944_1940 += ((__Random() * 3) << 7) >> 16;
    rnd28 = (__Random() << 9) >> 16;
    val28 = *(int *)Lm944_1928 + rnd28;
    *(int *)Lm944_1940 = (unsigned short)*(int *)Lm944_1940;
    *(int *)Lm944_1928 = val28 & 0xffff;
}
