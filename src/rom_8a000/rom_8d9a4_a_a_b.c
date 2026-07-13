extern const short gFieldMoveRanges[][2] __asm__(".L9e686");

int Func_808ddb8(int move)
{
    register const short *entry __asm__("r2") = &gFieldMoveRanges[0][0];
    register int key __asm__("r3");
    register int scratch __asm__("r4");
    register int range __asm__("r1");

    scratch = 0;
    __asm__ volatile ("" : "+r" (scratch));
    key = *(const short *)((const unsigned char *)entry + scratch);
    __asm__ volatile ("" : "+r" (key));
    scratch = 1;
    __asm__ volatile ("" : "+r" (scratch));
    scratch = -scratch;
    __asm__ volatile ("" : "+r" (scratch));
    range = 0x10;

    while (key != scratch) {
        entry++;
        if (move == key) {
            key = 0;
            range = *(const short *)((const unsigned char *)entry + key);
            break;
        }
        entry++;
        scratch = 0;
        key = *(const short *)((const unsigned char *)entry + scratch);
        scratch = -1;
    }

    return range;
}
