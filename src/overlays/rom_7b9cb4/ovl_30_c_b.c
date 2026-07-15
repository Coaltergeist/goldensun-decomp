/* Cluster OvlFunc_932_200b724..OvlFunc_932_200b724 extracted from goldensun/asm/overlays/rom_7b9cb4/ovl_30_c.s.
 *
 * Total .text for this TU = 20 bytes (= 0x14).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b9cb4/ovl_30_c_a.o and asm/overlays/rom_7b9cb4/ovl_30_c_c.o in
 * goldensun/overlays/rom_7b9cb4/overlay.ld.
 */
void __PlaySound(unsigned int snd);
struct Foo {
unsigned char pad[0x65];
unsigned short unk66;
};

void OvlFunc_932_200b724(struct Foo* arg0) {
    arg0->unk66 = 0x21;
    __PlaySound(0x120);
}
