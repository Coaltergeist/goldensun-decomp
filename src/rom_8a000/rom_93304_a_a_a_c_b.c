/* Cluster Func_8093530..Func_8093530 extracted from goldensun/asm/rom_8a000/rom_93304_a_a_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_93304_a_a_a_c_a.o and asm/rom_8a000/rom_93304_a_a_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int galloc_ewram(unsigned int index, unsigned int size);
extern void _Actor_WaitMovement(unsigned int param);
extern void CutsceneWait(unsigned int param);

void Func_8093530(void) {
    unsigned int r0;
    unsigned int r3;

    r0 = galloc_ewram(0x1b, 0xccc);
    r3 = 0xf0;
    r3 <<= 1;
    r0 += r3;
    r0 = *(unsigned int *)r0;
    _Actor_WaitMovement(r0);
    CutsceneWait(2);
}
