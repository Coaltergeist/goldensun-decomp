/* Cluster OvlFunc_960_2008324..OvlFunc_960_2008324 extracted from goldensun/asm/overlays/rom_7eaf28/ovl_314_a_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7eaf28/ovl_314_a_a_c_a.o and asm/overlays/rom_7eaf28/ovl_314_a_a_c_c.o in
 * goldensun/overlays/rom_7eaf28/overlay.ld.
 */
extern void __Actor_SetSpriteFlags(unsigned int arg0, int arg1);

unsigned int OvlFunc_960_2008324(unsigned int arg0)
{
    __Actor_SetSpriteFlags(arg0, 0);
    *(unsigned char *)(arg0 + 0x59) = 0;
    return 0;
}
