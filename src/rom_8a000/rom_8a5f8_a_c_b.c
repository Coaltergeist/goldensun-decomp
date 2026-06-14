// fakematch
/* Cluster Func_808ab48..Func_808ab48 extracted from goldensun/asm/rom_8a000/rom_8a5f8_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_8a5f8_a_c_a.o and asm/rom_8a000/rom_8a5f8_a_c_c.o in
 * goldensun/stage1.ld.
 */
/* Func_808ab48 @ 0x0808ab48  [asm/rom_8a000/rom_8a5f8_a_c.s]
 * LoadMapCode(((s16*)((char*)&.L9f1a8 + idx*8))[0], __start_overlay) where
 * idx = *(s16*)(gState+0x1c0). `.L9f1a8` via the bundle-section-8 extern-asm
 * alias; judge cannot gate the .L reloc form; compare-rom is the gate.
 * Name audit: seed used the old ewram_2000240 base; current name is gState.
 */
extern unsigned char L9f1a8[] __asm__(".L9f1a8");
extern short LoadMapCode();
extern unsigned char gState[];
extern unsigned char __start_overlay[];

void Func_808ab48(void)
{
    unsigned char *g = gState;
    short *sp;
    register int z0 __asm__("r1");
    int idx;

    sp = (short *)(g + 0xe0 * 2);
    z0 = 0;
    __asm__ volatile ("" : : "r" (z0));
    idx = *(short *)((unsigned char *)sp + z0);
    LoadMapCode(*(short *)(L9f1a8 + idx * 8), __start_overlay);
}
