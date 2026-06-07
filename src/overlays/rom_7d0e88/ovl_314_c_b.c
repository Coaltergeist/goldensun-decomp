/* Cluster OvlFunc_947_2009428..OvlFunc_947_2009428 extracted from goldensun/asm/overlays/rom_7d0e88/ovl_314_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7d0e88/ovl_314_c_a.o and asm/overlays/rom_7d0e88/ovl_314_c_c.o in
 * goldensun/overlays/rom_7d0e88/overlay.ld.
 */
extern void __Func_80929d8(unsigned int a, int b);

unsigned int OvlFunc_947_2009428(unsigned int arg0) {
    __Func_80929d8(arg0, *(unsigned short *)(arg0 + 0x64) & 0xf);
    return 0;
}
