/* Cluster OvlFunc_882_200be18..OvlFunc_882_200be18 extracted from goldensun/asm/overlays/rom_77dd1c/ovl_30_c_c_c_c_a_a.s.
 *
 * Total .text for this TU = 48 bytes (= 0x30).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_77dd1c/ovl_30_c_c_c_c_a_a_a.o and asm/overlays/rom_77dd1c/ovl_30_c_c_c_c_a_a_c.o in
 * goldensun/overlays/rom_77dd1c/overlay.ld.
 */
extern unsigned int iwram_3001e40;

void OvlFunc_882_200be18(void)
{
    void *actor = __MapActor_GetActor(0x1b);
    char *p = *(char **)((char *)actor + 0x50);

    if (iwram_3001e40 & 1) {
        *(unsigned char *)(p + 0x23) = 2;
    } else {
        *(unsigned char *)(p + 0x23) = 0x40;
    }
}
