extern int GetUnit(int unit);

int HasMove(int unit, int moveID) {
    unsigned char *base;
    unsigned char *p;
    int i;
    unsigned short v;

    base = (unsigned char *)GetUnit(unit);
    p = base + 0x58;
    for (i = 0; i <= 31; i++) {
        v = *(unsigned short *)p;
        if ((v & 0x3fff) == moveID) {
            return 1;
        }
        p += 4;
    }
    return 0;
}
