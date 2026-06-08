/* Cluster Func_808acc4..Func_808acc4 extracted from goldensun/asm/rom_8a000/rom_8a5f8.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_8a5f8_a.o and asm/rom_8a000/rom_8a5f8_c.o in
 * goldensun/stage1.ld.
 */
extern void *_Func_80f9080(short arg0);
extern unsigned int gState;

void Func_808acc4(void) {
    unsigned int r3;
    unsigned int r2;
    short r0;

    r3 = (unsigned int)&gState;
    r2 = 0xf8;
    r2 <<= 1;
    r3 += r2;
    r2 = 0;
    r0 = *(short *)((char *)r3 + r2);
    r3 = (unsigned int)_Func_80f9080(r0);
    r3 = r3;
}
