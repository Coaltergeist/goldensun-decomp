/* Cluster OvlFunc_941_200807c..OvlFunc_941_200807c extracted from goldensun/asm/overlays/rom_7c5efc/ovl_30_c_a_c_c_a.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7c5efc/ovl_30_c_a_c_c_a_a.o and asm/overlays/rom_7c5efc/ovl_30_c_a_c_c_a_c.o in
 * goldensun/overlays/rom_7c5efc/overlay.ld.
 */
void OvlFunc_941_200807c(void)
{
    unsigned int actor;

    actor = __MapActor_GetActor(8);
    if (actor != 0) {
        __Actor_SetSpriteFlags(actor, 0);
    }
}
