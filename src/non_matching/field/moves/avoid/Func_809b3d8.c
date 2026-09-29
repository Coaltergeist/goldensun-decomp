extern void _DeleteActor(void);

void Func_809b3d8(unsigned int arg0)
{
    int base;
    int threshold;
    short v;
    int *r6;
    int cur;
    int lim;
    int nv;
    int diff;

    base = *(int *)(arg0 + 0x14);
    threshold = base + 0xa0000;
    v = *(short *)((char *)&gState + 0x1da);
    r6 = *(int **)(arg0 + 0x68);
    if (v == 1) {
        threshold = base + 0x40000;
    }
    if (*(int *)(arg0 + 0xc) <= threshold) {
        _DeleteActor();
        return;
    }
    cur = *(int *)(arg0 + 0x18);
    lim = 0x10000;
    nv = cur + 0xc00;
    if (nv > lim) nv = lim;
    *(int *)(arg0 + 0x18) = nv;
    *(int *)(arg0 + 0x1c) = -nv;
    *(int *)(arg0 + 8) = *(int *)((char *)r6 + 8);
    *(int *)(arg0 + 0xc) = *(int *)(arg0 + 0xc) + (int)0xfffe0000;
    diff = lim - nv;
    *(int *)(arg0 + 0x10) = *(int *)((char *)r6 + 0x10) - diff * 5 + 0x100000;
}
