/* Cluster SetRespawnMap..SetRespawnMap extracted from goldensun/asm/rom_8a000/rom_91584_c_c_a_a_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_91584_c_c_a_a_c_c_a.o and asm/rom_8a000/rom_91584_c_c_a_a_c_c_c.o in
 * goldensun/stage1.ld.
 */
/* SetRespawnMap @ 0x08091e6c  (was Func_8091e6c; renamed by the weekend alias pass)
 * [asm/rom_8a000/rom_91584_c_c_a_a_c_c.s]
 *
 * *(u16*)(*iwram_3001ebc + 0xb8*2) = 0x3e7;
 * *(u16*)(gState + 0xe2*2) = map;
 * *(u16*)(gState + 0xe3*2) = door;
 * Seed's offsets were correct; it used the wrong base symbol (ewram_2000240).
 * The asm base is gState. iwram_3001ebc holds a pointer (ldr; ldr [r3]).
 *
 * Diff-driven fix (diag 2026-06-10): byte-pointer constant arithmetic folded
 * gState+0x1c4 into a single pooled word (then strh [r3,#2] for the second
 * store). ROM pools bare gState, keeps it in r2, and computes each offset at
 * runtime (movs #0xe2/#0xe3; lsls #1; adds) -- u16-array indexing through the
 * named-temp s. The q/v staging matters: q (the computed first address) burns
 * r2 as offset scratch and dies, v (the pooled 0x3e7) then reuses r2, then
 * gState reuses it again -- declared in any other order, gcc holds 0x170 live
 * in r4 and CSEs the second offset as 0x170+0x54, which the ROM does not do.
 * Pool order iwram/0x3e7/gState = decl order. The r4 offset scratch with no
 * push is normal: r4 is call-clobbered (Makefile -fcall-used-r4).
 */
extern unsigned int iwram_3001ebc;
extern unsigned char gState[];

void SetRespawnMap(unsigned short map, unsigned short door)
{
    unsigned char *p = (unsigned char *)iwram_3001ebc;
    unsigned short *q = (unsigned short *)(p + 0xb8 * 2);
    unsigned short v = 0x3e7;
    unsigned short *s;

    *q = v;
    s = (unsigned short *)gState;
    s[0xe2] = map;
    s[0xe3] = door;
}
