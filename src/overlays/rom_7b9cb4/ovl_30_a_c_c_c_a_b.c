/* Cluster OvlFunc_932_200b410..OvlFunc_932_200b410 extracted from goldensun/asm/overlays/rom_7b9cb4/ovl_30_a_c_c_c_a.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b9cb4/ovl_30_a_c_c_c_a_a.o and asm/overlays/rom_7b9cb4/ovl_30_a_c_c_c_a_c.o in
 * goldensun/overlays/rom_7b9cb4/overlay.ld.
 */
struct Foo {
unsigned char pad[0x17D];
unsigned short unk17E;
};
extern struct Foo* iwram_3001ebc;

void OvlFunc_932_200b410(void) {
    iwram_3001ebc->unk17E = 0x1018;
}
