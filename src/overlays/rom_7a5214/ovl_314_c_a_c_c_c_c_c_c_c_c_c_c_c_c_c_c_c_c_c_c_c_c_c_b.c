/* Cluster OvlFunc_918_2008674..OvlFunc_918_2008674 extracted from goldensun/asm/overlays/rom_7a5214/ovl_314_c_a_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a5214/ovl_314_c_a_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_a.o and asm/overlays/rom_7a5214/ovl_314_c_a_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c.o in
 * goldensun/overlays/rom_7a5214/overlay.ld.
 */
extern int __Func_8093c00(void);
extern unsigned char L2dd0[] __asm__(".L2dd0");

void OvlFunc_918_2008674(void) {
    if (!__Func_8093c00())
        *(short *)(*(unsigned int *)L2dd0) = -1;
}
