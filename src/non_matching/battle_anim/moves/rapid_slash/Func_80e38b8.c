void Func_80e38b8(int *arg, int b, int c)
{
    int *p = arg;
    int t0, t1, t6, t3;

    t0 = p[3];
    p[0] += t0;
    t1 = p[4];
    p[1] += t1;
    t6 = p[5];
    p[2] += t6;
    t3 = b * t0;
    t1 += c;
    p[4] = t1;
    if (t3 < 0) t3 += 0x3f;
    p[3] = t3 >> 6;
    t1 = t1 * b;
    if (t1 < 0) t1 += 0x3f;
    t3 = t1 >> 6;
    t1 = b * t6;
    p[4] = t3;
    if (t1 < 0) t1 += 0x3f;
    t3 = t1 >> 6;
    p[5] = t3;
}
