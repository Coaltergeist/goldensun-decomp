/* Cluster Func_8017620..Func_8017620 extracted from goldensun/asm/rom_15000/rom_15e8c_c.s.
 *
 * Total .text for this TU = 56 bytes (= 0x38).
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_15e8c_c_a.o and asm/rom_15000/rom_15e8c_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char *iwram_3001e8c;

void Func_8017620(unsigned int arg0)
{
    unsigned char *p = iwram_3001e8c;
    if (p != (unsigned char *)0) {
        if (arg0 & 1)
            *(unsigned char *)(p + 0x12fa) = 1;
        if (arg0 & 2)
            *(unsigned char *)(p + 0x12fb) = 1;
    }
}
