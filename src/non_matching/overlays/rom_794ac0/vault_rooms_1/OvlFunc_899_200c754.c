unsigned char *OvlFunc_899_200c754(unsigned char *node, u16 *angle)
{
    unsigned char *result;
    int best_idx = -1;
    s16 best_angle = *angle;
    int min_diff;
    unsigned int i;
    int diff;

    node += 4;
    min_diff = 0x8000;
    for (i = 0; i <= 2; i++, node += 4) {
        s16 a = node[1] << 8;
        diff = (s16)((u16)a - *angle);
        if (diff < 0) {
            diff = -diff;
        }
        if (node[0] != 0xff && diff < min_diff) {
            min_diff = diff;
            best_idx = *node;
            best_angle = a;
        }
    }

    result = 0;
    if (best_idx != -1) {
        *angle = best_angle;
        result = &Lm899_4f2c[best_idx * 16];
    }
    return result;
}
