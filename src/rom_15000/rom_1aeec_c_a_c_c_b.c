/* Cluster Func_801c930..Func_801c930 extracted from goldensun/asm/rom_15000/rom_1aeec_c_a_c_c.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_1aeec_c_a_c_c_a.o and asm/rom_15000/rom_1aeec_c_a_c_c_c.o in
 * goldensun/stage1.ld.
 */
/* Func_801c930 @ 0x0801c930  [asm/rom_15000/rom_1aeec_c_a_c_c.s]
 * p = galloc_ewram(0x13, 0x1004); zero u16s at p+0x46 and p+0x352 (0x352
 * pooled, added into the dying p reg). Name audit: seed called the old
 * Func_80048f4 alias; asm bl target is galloc_ewram.
 */
extern unsigned char *galloc_ewram(int index, unsigned int size);

void Func_801c930(void)
{
    unsigned char *p;
    unsigned short z;

    p = galloc_ewram(0x13, 0x1004);
    z = 0;
    *(unsigned short *)(p + 0x46) = z;
    *(unsigned short *)(p + 0x352) = z;
}
