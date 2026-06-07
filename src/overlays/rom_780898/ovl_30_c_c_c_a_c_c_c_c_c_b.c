/* Cluster OvlFunc_883_200d5f0..OvlFunc_883_200d5f0 extracted from goldensun/asm/overlays/rom_780898/ovl_30_c_c_c_a_c_c_c_c_c.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_780898/ovl_30_c_c_c_a_c_c_c_c_c_a.o and asm/overlays/rom_780898/ovl_30_c_c_c_a_c_c_c_c_c_c.o in
 * goldensun/overlays/rom_780898/overlay.ld.
 */
extern int __MapActor_GetActor(int);
extern void OvlFunc_883_200dc98(void);

void OvlFunc_883_200d5f0(void) {
    __MapActor_GetActor(0x18);
    OvlFunc_883_200dc98();
}
