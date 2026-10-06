extern unsigned char iwram_3001e74[];

extern void _UploadBGPalette(unsigned int, unsigned int, unsigned int, unsigned int);

void Func_80cd4b4(void) {
    unsigned int r0;
    unsigned int r2;
    unsigned int *r5;
    unsigned int *cntptr;
    unsigned int cnt;

    r0 = *(unsigned int *)iwram_3001e74;
    r2 = *(unsigned int *)((char *)iwram_3001e74 + 0x78);
    r5 = (unsigned int *)((char *)r2 + 0x77b4);

    if ((int)*r5 > 0) {
        cntptr = (unsigned int *)((char *)r2 + 0x77b8);
        cnt = *cntptr + 1;
        *cntptr = cnt;
        r0 = r0 + 0x544;

        _UploadBGPalette(r0, 0x05000c0, 0x10000 - cnt * 1092, 0x80);

        *r5 = *r5 - 1;
    }
}
