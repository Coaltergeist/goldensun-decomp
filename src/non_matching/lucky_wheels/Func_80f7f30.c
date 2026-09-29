void Func_80f7f30(unsigned char *arg0)
{
    unsigned char *base = *(unsigned char **)ewram_2004c00;
    int count = *(int *)(base + 0x4404);
    int i;

    if (count != 0) {
        unsigned char *src = base + 0x43d0;
        int *posPtr = (int *)(base + 0x443c);

        for (i = 0; i != count; i++) {
            arg0[*posPtr] = src[i];
            (*posPtr)++;
            count = *(int *)(base + 0x4404);
        }
    }
}
