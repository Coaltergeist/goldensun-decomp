/* Cluster OvlFunc_899_200af84..OvlFunc_899_200af84 extracted from goldensun/asm/overlays/rom_794ac0/ovl_30.s.
 *
 * Total .text for this TU = 20 bytes (= 0x14).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_794ac0/ovl_30_a.o and asm/overlays/rom_794ac0/ovl_30_c.o in
 * goldensun/overlays/rom_794ac0/overlay.ld.
 */
extern unsigned int __Func_8077394(unsigned int);

unsigned int OvlFunc_899_200af84(void) {
    unsigned int result;
    result = __Func_8077394(2);
    result += 0x8c * 2;
    result = *(unsigned char *)result;
    return result;
}
