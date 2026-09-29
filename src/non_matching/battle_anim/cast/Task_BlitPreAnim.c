typedef struct { unsigned char _bytes[256]; } GlobalPtrs;

extern GlobalPtrs gPtrs;

extern void BlitFade_Div4(unsigned int, unsigned int, unsigned int);

void Task_BlitPreAnim(void) {
    unsigned char *base;
    unsigned int *flagPtr;

    base = (unsigned char *)&gPtrs;
    if (*(unsigned int *)(base + 0xa0) != 0) {
        flagPtr = (unsigned int *)(*(unsigned int *)(base + 0x9c) + (0x9e << 5));
        if (*flagPtr != 0) {
            *flagPtr = 0;
            BlitFade_Div4(0x80 << 7, 0x6004000, 0);
        }
    }
}
