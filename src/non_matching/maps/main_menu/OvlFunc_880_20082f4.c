void OvlFunc_880_20082f4(int index, unsigned char *out)
{
    out[1] = 0;
    out[2] = 0;

    if (index <= 7) {
        out[0] = index + 0x41;
    } else if (index <= 12) {
        out[0] = index + 0x42;
    } else if (index <= 23) {
        out[0] = index + 0x43;
    } else if (index <= 31) {
        out[0] = index + 0x1a;
    } else if (index <= 42) {
        out[0] = index + 0x41;
    } else if (index <= 44) {
        out[0] = index + 0x42;
    } else if (index <= 55) {
        out[0] = index + 0x43;
    } else if (index == 56) {
        out[0] = 0x21;
    } else if (index == 57) {
        out[0] = 0x3f;
    } else if (index == 58) {
        out[0] = 0x23;
    } else if (index == 59) {
        out[0] = 0x26;
    } else if (index == 60) {
        out[0] = 0x24;
    } else if (index == 61) {
        out[0] = 0x25;
    } else if (index == 62) {
        out[0] = 0x2b;
    } else {
        out[0] = 0x3d;
    }
}
