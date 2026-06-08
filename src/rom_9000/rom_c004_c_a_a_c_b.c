/* Cluster Func_800c4ec..Func_800c4ec extracted from goldensun/asm/rom_9000/rom_c004_c_a_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_c004_c_a_a_c_a.o and asm/rom_9000/rom_c004_c_a_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern void WaitFrames(unsigned int nframes);

void Func_800c4ec(int actor) {
    int idx;
    int base;
    int r6;

    idx = *(short *)((char *)actor + 4);
    base = *(int *)actor;
    r6 = 0;
    if (*(int *)((idx << 2) + base) != 0x10) {
        do {
            WaitFrames(1);
            r6++;
            if (r6 > 0x12b)
                break;
            idx = *(short *)((char *)actor + 4);
            base = *(int *)actor;
        } while (*(int *)((idx << 2) + base) != 0x10);
    }
}
