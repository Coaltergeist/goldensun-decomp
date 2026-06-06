/* Cluster Func_808b05c..Func_808b05c extracted from goldensun/asm/rom_8a000/rom_8ace0_a_a.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_8ace0_a_a_a.o and asm/rom_8a000/rom_8ace0_a_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned short L9c610[] __asm__(".L9c610");

unsigned short Func_808b05c(int encounterID, int group)
{
    unsigned char *base;
    int idx;

    idx = (encounterID * 7) * 2 + group;
    base = (unsigned char *)L9c610;
    idx = idx * 2 + 4;
    return *(unsigned short *)(base + idx);
}
