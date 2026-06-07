/* Cluster OvlFunc_947_200a09c..OvlFunc_947_200a09c extracted from goldensun/asm/overlays/rom_7d0e88/ovl_1528_a_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7d0e88/ovl_1528_a_c_c_a.o and asm/overlays/rom_7d0e88/ovl_1528_a_c_c_c.o in
 * goldensun/overlays/rom_7d0e88/overlay.ld.
 */
extern int __Func_8092054(int);
extern unsigned char *iwram_3001ee0;

void OvlFunc_947_200a09c(void) {
    unsigned char *p;

    p = (unsigned char *)__Func_8092054(0);
    *(unsigned int *)(iwram_3001ee0 + 0x18) = 0;
    p[0x62] = 0;
}
