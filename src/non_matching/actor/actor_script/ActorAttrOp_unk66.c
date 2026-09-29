void ActorAttrOp_unk66(unsigned char *a, int op, int val)
{
    short *p;

    p = (short *)(a + 0x66);
    if (op == 0) {
        *p = val;
    } else if (op == 1) {
        *p += val;
    } else {
        a[0x57] = (*p == (short)val);
    }
}
