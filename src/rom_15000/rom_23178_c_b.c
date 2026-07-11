/* Cluster CollectDjinni..CollectDjinni extracted from goldensun/asm/rom_15000/rom_23178_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_23178_c_a.o and asm/rom_15000/rom_23178_c_c.o in
 * goldensun/stage1.ld.
 */
extern void _SetFlag(unsigned int);
extern void _GiveDjinni(unsigned int, unsigned int, unsigned int);

void CollectDjinni(unsigned int arg0, unsigned int arg1, unsigned int arg2)
{
    unsigned int r5;
    unsigned int r6;
    unsigned int r0;

    r5 = arg1;
    r6 = arg2;
    r0 = r5 << 2;
    r0 += r5;
    r0 <<= 2;
    r0 += r6;
    r0 += 0x30;
    _SetFlag(r0);
    _GiveDjinni(arg0, r5, r6);
}
