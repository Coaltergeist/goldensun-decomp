/* Cluster Unk_080D655C..Unk_080D655C extracted from goldensun/asm/rom_c9000/rom_d6504_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_d6504_a_a.o and asm/rom_c9000/rom_d6504_a_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_80dbb98(void);

void Unk_080D655C(unsigned int r0)
{
    unsigned int r5;
    unsigned int r6;

    r5 = r0;
    r6 = 0;
    if (r5 != 0) {
        do {
            r6++;
            Func_80dbb98();
        } while (r6 != r5);
    }
}
