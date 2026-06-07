/* Cluster OvlFunc_928_2008358..OvlFunc_928_2008358 extracted from goldensun/asm/overlays/rom_7b6668/ovl_314_a_a_c.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b6668/ovl_314_a_a_c_a.o and asm/overlays/rom_7b6668/ovl_314_a_a_c_c.o in
 * goldensun/overlays/rom_7b6668/overlay.ld.
 */
extern void *__Func_8092054(int);

void OvlFunc_928_2008358(void)
{
    unsigned char *r0 = (unsigned char *)__Func_8092054(0x13);
    unsigned short *r2 = *(unsigned short **)(r0 + 0x50);
    *(unsigned short *)((char *)r2 + 0x1e) += 0x1400;
}
