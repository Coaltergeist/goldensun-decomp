unsigned int OvlFunc_945_20080fc(unsigned char *arg0)
{
    unsigned int *p3;
    unsigned int r3;

    p3 = (unsigned int *)(arg0 + 0x4c);
    r3 = *p3;
    if (r3 == 0) {
        return 1;
    }
    r3 -= 1;
    *p3 = r3;
    r3 = *(unsigned int *)(arg0 + 0x38);
    if (r3 != ((unsigned int)0x80 << 24)) {
        return 0;
    }
    if (*(unsigned int *)(arg0 + 0x3c) != r3) {
        return 0;
    }
    if (*(unsigned int *)(arg0 + 0x40) != *(unsigned int *)(arg0 + 0x3c)) {
        return 0;
    }
    return 1;
}
