/* Cluster OvlFunc_899_200af98..OvlFunc_899_200af98 extracted from goldensun/asm/overlays/rom_794ac0/ovl_30_c_a_a.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_794ac0/ovl_30_c_a_a_a.o and asm/overlays/rom_794ac0/ovl_30_c_a_a_c.o in
 * goldensun/overlays/rom_794ac0/overlay.ld.
 */
unsigned int OvlFunc_899_200af98(void) {
    unsigned char *p;
    __Func_80bf65c();
    p = __GetUnit(2);
    if (*(unsigned int *)(p + 0xf8) & 1) {
        __Func_807a498(2, 0, 0, 0);
        __PlaySound(0x7e);
        __CalcStats(0);
        __CalcStats(2);
    }
}
