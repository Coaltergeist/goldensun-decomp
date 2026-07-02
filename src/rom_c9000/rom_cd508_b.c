/* Cluster Func_80cdd14..Func_80cdd14 extracted from goldensun/asm/rom_c9000/rom_cd508.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_cd508_a.o and asm/rom_c9000/rom_cd508_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char iwram_3001f00[];
extern void SetRegAnimDest(int a, int b);
extern void WaitFrames(unsigned int nframes);
extern void _Func_80c0774(int a, unsigned short b, int c);

void Func_80cdd14(void)
{
    unsigned int *base = *(unsigned int **)iwram_3001f00;
    unsigned char *r5 = *(unsigned char **)((char *)iwram_3001f00 - 0x8c);
    unsigned short *r5h;

    *(int *)((char *)base + 0xc) = 1;
    SetRegAnimDest(0x80 << 19, 0x1541);
    WaitFrames(1);
    r5h = (unsigned short *)(r5 + (0xc9 << 3));
    _Func_80c0774(2, *r5h, 0);
    WaitFrames(1);
}
