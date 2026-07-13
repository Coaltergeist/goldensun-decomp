typedef unsigned int u32;
typedef unsigned char u8;

extern const u8 gHexMoji[];

/* 8桁の16進文字列を作る。 */
void OvlFunc_common1_16cc(u8 *dst, u32 value) {
    int i;

    dst += 8;
    *dst = 0;
    i = 7;
    dst--;
    do {
        *dst = gHexMoji[value & 0xf];
        i--;
        value >>= 4;
        dst--;
    } while (i >= 0);
}
