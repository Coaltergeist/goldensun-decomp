/* Cluster CutsceneWait..CutsceneWait extracted from goldensun/asm/rom_8a000/rom_91584_a_c_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_91584_a_c_a_c_a.o and asm/rom_8a000/rom_91584_a_c_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char iwram_3001ebc[];
extern void WaitFrames(unsigned int nframes);

void CutsceneWait(unsigned int arg0) {
    unsigned int *base;
    unsigned int r3;

    base = *(unsigned int **)iwram_3001ebc;
    r3 = *(unsigned int *)((unsigned char *)base + 0xe6 * 2);
    if (r3 == 0 && arg0 != 0) {
        WaitFrames(arg0);
    }
}
