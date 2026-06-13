/* Cluster OvlFunc_968_2008030..OvlFunc_968_2008030 extracted from goldensun/asm/overlays/rom_7f2f14/ovl_30_a_a_a.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7f2f14/ovl_30_a_a_a_a.o and asm/overlays/rom_7f2f14/ovl_30_a_a_a_c.o in
 * goldensun/overlays/rom_7f2f14/overlay.ld.
 */
void OvlFunc_968_2008030(unsigned int arg0, unsigned int arg1)
{
    unsigned int r5;
    unsigned int r6;

    r5 = arg0;
    *(unsigned char *)(r5 + 0x55) = 0;
    *(unsigned char *)(r5 + 0x59) = 8;
    r6 = arg1;
    __Actor_SetSpriteFlags(r5, 0);
    __Func_80929d8(r5, r6);
}
