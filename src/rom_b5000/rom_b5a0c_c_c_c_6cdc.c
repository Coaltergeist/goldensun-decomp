extern unsigned int iwram_3001e74;
extern unsigned int Func_80c23c0(unsigned int enemy);

int Func_80b6cdc(unsigned int enemy)
{
    unsigned char *base;
    unsigned int ret;
    int i;
    int off;
    int off4;
    int off6;

    ret = Func_80c23c0(enemy);
    base = (unsigned char *)iwram_3001e74;
    i = 0;
    if (*(short *)(base + 4) == 0) {
        if (ret != 0) {
            goto end;
        }
        if (*(short *)(base + 6) == 0) {
            goto end;
        }
    }
loop:
    i++;
    if (i > 5) {
        goto end;
    }
    off = i * 2;
    off4 = off + 4;
    if (*(short *)(base + off4) != 0) {
        goto loop;
    }
    if (ret != 0) {
        goto end;
    }
    if (i > 4) {
        goto loop;
    }
    off6 = off + 6;
    if (*(short *)(base + off6) != 0) {
        goto loop;
    }
end:
    return i != 6;
}
