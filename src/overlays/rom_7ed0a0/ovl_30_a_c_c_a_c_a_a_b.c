/* Cluster OvlFunc_964_2009510..OvlFunc_964_2009510 extracted from goldensun/asm/overlays/rom_7ed0a0/ovl_30_a_c_c_a_c_a_a.s.
 *
 * Total .text for this TU = 32 bytes (= 0x20).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ed0a0/ovl_30_a_c_c_a_c_a_a_a.o and asm/overlays/rom_7ed0a0/ovl_30_a_c_c_a_c_a_a_c.o in
 * goldensun/overlays/rom_7ed0a0/overlay.ld.
 */
extern void OvlFunc_964_2009348(void);

void OvlFunc_964_2009510(void)
{
    int *r0;
    r0 = __MapActor_GetActor(0);
    if ((*(int *)((char *)r0 + 8) >> 20) != 0x20 ||
        (*(int *)((char *)r0 + 0x10) >> 20) != 0x32)
        OvlFunc_964_2009348();
}
