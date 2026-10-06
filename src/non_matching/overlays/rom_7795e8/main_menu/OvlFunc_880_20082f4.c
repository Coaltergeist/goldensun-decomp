void OvlFunc_880_20082f4(int index, unsigned char *out)
{
    int c;

    out[1] = 0;
    out[2] = 0;

    if (index <= 7) {
        c = index + 0x41;
    } else if (index <= 12) {
        c = index + 0x42;
    } else if (index <= 23) {
        c = index + 0x43;
    } else if (index <= 31) {
        c = index + 0x1a;
    } else if (index <= 42) {
        c = index + 0x41;
    } else if (index <= 44) {
        c = index + 0x42;
    } else if (index <= 55) {
        c = index + 0x43;
    } else if (index == 56) {
        c = 0x21;
    } else if (index == 57) {
        c = 0x3f;
    } else if (index == 58) {
        c = 0x23;
    } else if (index == 59) {
        c = 0x26;
    } else if (index == 60) {
        c = 0x24;
    } else if (index == 61) {
        c = 0x25;
    } else if (index == 62) {
        c = 0x2b;
    } else {
        c = 0x3d;
    }

    out[0] = c;
}
