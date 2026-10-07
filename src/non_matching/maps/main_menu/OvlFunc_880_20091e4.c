unsigned int OvlFunc_880_20091e4(unsigned char *buf, unsigned int len, unsigned char *out)
{
    unsigned char key;
    unsigned int i;
    unsigned int j;
    unsigned int count;
    unsigned int idx;
    unsigned int bitpos;
    unsigned int group;
    unsigned int sum;
    unsigned int v;
    unsigned int bit;

    key = buf[len - 1];
    count = 0;
    for (i = 0; i < len - 1; i++)
        buf[i] ^= key;

    bitpos = 0;
    idx = 0;
    sum = 0;
    group = 0;
    do {
        v = 0;
        for (j = 0; j < 6; j++) {
            bit = (buf[idx] >> (7 - bitpos)) & 1;
            bitpos++;
            if (bitpos == 8) {
                bitpos = 0;
                idx++;
            }
            v |= bit << (5 - j);
            if (idx == len)
                break;
        }
        group++;
        out[count] = v;
        count++;
        sum += v;
        if (group == 9) {
            out[count] = sum & 0x3f;
            count++;
            sum = 0;
            group = 0;
        }
    } while (idx != len);

    for (i = 0; i < count; i++)
        out[i] = (out[i] + i) & 0x3f;

    return count;
}
