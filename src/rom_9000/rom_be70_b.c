/* Cluster Func_800befc..Func_800befc extracted from goldensun/asm/rom_9000/rom_be70.s.
 *
 * Total .text for this TU = 56 bytes (= 0x38).
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_be70_a.o and asm/rom_9000/rom_be70_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_800be70(unsigned int arg0, unsigned int arg1);
extern void WaitFrames(unsigned int nframes);

void Func_800befc(unsigned int arg0) {
    unsigned int i;

    i = 0;
    do {
        Func_800be70(arg0, i);
        Func_800be70(arg0, i + 1);
        Func_800be70(arg0, i + 2);
        Func_800be70(arg0, i + 3);
        i += 4;
        WaitFrames(1);
    } while (i <= 0x7f);
}
