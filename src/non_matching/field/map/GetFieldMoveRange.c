extern unsigned char L9e686[] __asm__(".L9e686");

unsigned int GetFieldMoveRange(unsigned int arg0)
{
    short *p;
    short v;
    unsigned int result;

    p = (short *)L9e686;
    v = *p;
    result = 16;
    while (v != -1) {
        p++;
        if ((int)arg0 == v) {
            result = *p;
            break;
        }
        v = *p;
    }
    return result;
}
