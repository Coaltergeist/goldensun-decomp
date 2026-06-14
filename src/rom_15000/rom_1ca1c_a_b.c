/* Cluster Func_801ce6c..Func_801ce6c extracted from goldensun/asm/rom_15000/rom_1ca1c_a.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_1ca1c_a_a.o and asm/rom_15000/rom_1ca1c_a_c.o in
 * goldensun/stage1.ld.
 */
/* Func_801ce6c @ 0x0801ce6c  [asm/rom_15000/rom_1ca1c_a.s]
 * u16 counter at arg0+0x574: increment; if (new<<16) > 0x20000 (i.e. > 2 as
 * u16) reset to 0. 0x20000 built as 0x80<<10 interleaved with the add/strh.
 */

void Func_801ce6c(unsigned char *p)
{
    unsigned short *c = (unsigned short *)(p + 0x574);
    unsigned int v = *c + 1;

    *c = v;
    if ((v << 16) > (0x80 << 10)) {
        unsigned short z = 0;
        *c = z;
    }
}
