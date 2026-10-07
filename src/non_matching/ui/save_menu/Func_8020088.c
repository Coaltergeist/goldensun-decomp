extern void Func_80200cc(void);

void Func_8020088(void) {
    unsigned char *r7;
    int r5;
    int r6;

    r7 = *(unsigned char **)iwram_3001f2c;
    StopTask((int)&Func_80200cc);
    r5 = 0x89 << 2;
    r6 = 3;
    do {
        if (*(unsigned int *)(r7 + r5) != 0) {
            _DeleteSprite(*(unsigned int *)(r7 + r5));
            *(unsigned int *)(r7 + r5) = 0;
        }
        r6--;
        r5 += 4;
    } while (r6 >= 0);
}
