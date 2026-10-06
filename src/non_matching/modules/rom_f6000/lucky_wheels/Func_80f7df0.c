void Func_80f7df0(unsigned int arg0)
{
    unsigned char *base = *(unsigned char **)ewram_2004c00;
    unsigned int listOff = (arg0 * 3) << 2;
    unsigned int off = 0x3404 + (arg0 << 2);
    unsigned int node = *(unsigned int *)(base + off);
    unsigned int nodeOff = (node << 2) + 0x3000;
    unsigned int *p1 = (unsigned int *)(base + nodeOff);
    unsigned int v;
    unsigned int *newNode;
    unsigned int *p2;

    *(unsigned int *)(base + listOff + 4) = (unsigned int)p1;
    v = *(unsigned int *)(base + nodeOff);
    *(unsigned int *)(base + listOff) = v;
    newNode = (unsigned int *)(base + listOff);
    *(unsigned int *)(base + nodeOff) = (unsigned int)newNode;
    p2 = *(unsigned int **)newNode;
    if (p2 != 0) {
        *(unsigned int *)((char *)p2 + 4) = (unsigned int)newNode;
    }
}
