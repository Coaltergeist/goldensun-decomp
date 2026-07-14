extern void *_GetSpriteInfo(int spriteId);

int Func_800be20(int spriteId, unsigned int frameIndex, int count)
{
    register unsigned int idx asm("r6");
    register int cnt asm("r5");
    register int total asm("r7");
    register unsigned char **arr asm("r2");
    register unsigned char *p asm("r0");
    register unsigned int off asm("r3");
    register unsigned char opcode asm("r2");
    unsigned char *info;
    unsigned char value;
    unsigned char threshold;

    idx = frameIndex;
    asm volatile("" : "+r"(idx));
    cnt = count;
    asm volatile("" : "+r"(cnt));

    info = (unsigned char *)_GetSpriteInfo(spriteId);
    threshold = info[5];
    total = 0;
    if (idx >= threshold) {
        return 0;
    }
    arr = *(unsigned char ***)(info + 0x10);
    off = idx << 2;
    asm("ldr %0, [%1, %2]" : "=r"(p) : "r"(off), "r"(arr));

loop:
    opcode = p[0];
    value = p[1];
    p += 2;
    if (opcode == 0xfe) goto done;
    if (opcode == 0xf1) goto done;
    if (opcode == 0xfd) goto done;
    if (opcode == 0xef) goto done;
    if (opcode == 0xf5) goto accumulate;
    if (opcode == 0xff) goto accumulate;
    if (opcode > 0xee) goto loop;

accumulate:
    cnt--;
    total += value;
    if (cnt != 0) goto loop;

done:
    return total;
}
