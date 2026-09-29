extern int sin(int theta);

extern int Func_8000888(int, int);

void Func_80992f0(unsigned int arg0)
{
    char *p;
    short *hp;
    int theta;
    int sinval;
    int (*fp)(int, int);
    int r;
    short h;
    int se;
    int sum;
    int tmp;

    p = (char *)arg0;
    hp = (short *)(p + 0x64);
    theta = *hp;
    sinval = sin(theta << 9);
    fp = Func_8000888;
    r = fp(0x80 << 11, sinval);
    *(int *)(p + 8) = *(int *)(p + 0x38) + r;

    h = *hp + 1;
    *hp = h;

    se = h;
    sum = se + 0x80;
    if (sum >= 0)
        tmp = sum;
    else
        tmp = se + 0xff;
    tmp = (tmp >> 7) << 7;
    *hp = (short)(sum - tmp);
}
