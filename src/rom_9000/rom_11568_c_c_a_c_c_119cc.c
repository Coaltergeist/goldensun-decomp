typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

#define REG_BLDCNT (*(volatile u16 *)0x04000050)
#define REG_BLDALPHA (*(volatile u16 *)0x04000052)
#define REG_BLDY (*(volatile u16 *)0x04000054)

extern u8 iwram_3001e70[];

void Func_80119cc(void)
{
    register u8 *base asm("r12");
    register u8 *state asm("r4");
    register u8 *cursor asm("r0");
    register u16 word asm("r1");

    base = *(u8 **)iwram_3001e70;
    state = base + 0xd8;
    if (*(u32 *)state == 0)
        return;
    if (*(u16 *)(state + 0xa) != 0)
        return;

L119e4:
    if (*(u16 *)(state + 8) != 0)
        goto L11a60;

    cursor = *(u8 **)(state + 4);
    word = *(u16 *)cursor;
    cursor += 2;

    if (word == 0xffff) {
        *(u8 **)(state + 4) = *(u8 **)state;
        goto L119e4;
    }
    if ((word & 0xff00) == 0xfe00) {
        if ((word & 0xff) == 0xff)
            return;
        *(u8 **)(state + 4) = *(u8 **)state + (word & 0xff) * 4;
        goto L119e4;
    }
    if ((word & 0xf000) == 0x3000) {
        REG_BLDCNT = word;
        *(base + 0x103) = (u8)word;
        *(u8 **)(state + 4) = *(u8 **)(state + 4) + 2;
        goto L119e4;
    }

    if ((*(base + 0x103) & 0xc0) == 0x40)
        REG_BLDALPHA = word;
    else
        REG_BLDY = word;
    *(u16 *)(state + 8) = *(u16 *)cursor;
    *(u8 **)(state + 4) = *(u8 **)(state + 4) + 4;
    goto L119e4;

L11a60:
    *(u16 *)(state + 8) = *(u16 *)(state + 8) - 1;
    return;
}
