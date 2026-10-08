/* Return bits 16..47 of a signed 32-by-32 product. */
static inline int MercuryEntrance_MultiplyFixed16(int a, int b)
{
    unsigned int aLow = (unsigned int)a & 0xffff;
    unsigned int bLow = (unsigned int)b & 0xffff;
    unsigned int aHigh = a >> 16;
    unsigned int bHigh = b >> 16;

    return (aLow * bLow >> 16) + aHigh * bLow + aLow * bHigh +
        ((aHigh * bHigh) << 16);
}

extern int Func_80008ac(int, int);
extern int __FastIntSqrtFP1616_RAM(int);
extern unsigned int iwram_3001e40;

int OvlFunc_923_2009cb4(void *arg0)
{
    void *target;
    int target_x;
    int target_z;
    int dx;
    int dz;
    int dist;
    int diff_x;
    int diff_z;
    int speed;
    unsigned char *sprite;
    unsigned char *p;
    int (*fp_sqrt)(int);
    int (*fp_div)(int, int);

    *(int *)((char *)arg0 + 0x30) = 0x80 << 10;
    *(int *)((char *)arg0 + 0x34) = 0x80 << 9;

    target = *(void **)((char *)arg0 + 0x68);
    target_x = *(int *)((char *)target + 8);
    target_z = *(int *)((char *)target + 0x10);

    *(int *)((char *)arg0 + 0x38) = 0x80 << 24;
    *(int *)((char *)arg0 + 0x3c) = 0x80 << 24;
    *(int *)((char *)arg0 + 0x40) = 0x80 << 24;

    dx = (target_x - *(int *)((char *)arg0 + 8)) / 0x10000;
    dz = (target_z - *(int *)((char *)arg0 + 0x10)) / 0x10000;

    fp_sqrt = Func_8000948;
    dist = fp_sqrt(dx * dx + dz * dz);

    diff_x = target_x - *(int *)((char *)arg0 + 8);
    diff_z = target_z - *(int *)((char *)arg0 + 0x10);

    dist <<= 16;
    if (dist < 0x80 << 15) {
        dist = __FastIntSqrtFP1616_RAM(MercuryEntrance_MultiplyFixed16(diff_x, diff_x) + MercuryEntrance_MultiplyFixed16(diff_z, diff_z));
    }

    speed = dist / 8;
    if (speed > *(int *)((char *)arg0 + 0x30)) {
        speed = *(int *)((char *)arg0 + 0x30);
    }

    if (dist < 0x80 << 7) {
        *(int *)((char *)arg0 + 8) = target_x;
        *(int *)((char *)arg0 + 0x10) = target_z;
    } else {
        if (dist > speed) {
            fp_div = Func_80008ac;
            diff_x = MercuryEntrance_MultiplyFixed16(fp_div(dist, diff_x), speed);
            diff_z = MercuryEntrance_MultiplyFixed16(fp_div(dist, diff_z), speed);
        }
        *(int *)((char *)arg0 + 8) += diff_x;
        *(int *)((char *)arg0 + 0x10) += diff_z;
    }

    sprite = *(unsigned char **)((char *)arg0 + 0x50);
    p = *(unsigned char **)(sprite + 0x28);
    p[5] = ((iwram_3001e40 >> 1) & 1) * 7;
    sprite[0x25] = 1;

    return 1;
}
