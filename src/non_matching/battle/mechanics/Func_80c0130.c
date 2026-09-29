typedef struct { void *sad; void *dad; unsigned int cnt; } DmaCtrl;

void Func_80c0130(void)
{
    unsigned char *state;
    int **other;
    int *r4p;
    int idx;
    unsigned char *r0p;
    unsigned short v;

    state = *(unsigned char **)iwram_3001f00;
    if (*(int *)(state + 8) != 2) {
        return;
    }
    other = (int **)((unsigned char *)iwram_3001f00 - 0x88);
    r4p = *other;
    idx = *r4p;
    r0p = (unsigned char *)r4p + idx * 320;
    v = *(unsigned short *)(r0p + 0x20);
    *(volatile unsigned short *)0x0400000c = v;
    *(volatile DmaCtrl *)0x040000b0 = (DmaCtrl){ r0p + 0x22, (void *)0x0400000c, 0xa2600001 };
    *(volatile DmaCtrl *)0x040000b0 = (DmaCtrl){ (unsigned char *)r4p + 0x10, (unsigned char *)0x0400000c + 0x14, 0x84000004 };
}
