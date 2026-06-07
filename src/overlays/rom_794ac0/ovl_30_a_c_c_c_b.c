/* Cluster OvlFunc_899_200a6e4..OvlFunc_899_200a6e4 extracted from goldensun/asm/overlays/rom_794ac0/ovl_30_a_c_c_c.s.
 *
 * Total .text for this TU = 56 bytes (= 0x38).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_794ac0/ovl_30_a_c_c_c_a.o and asm/overlays/rom_794ac0/ovl_30_a_c_c_c_c.o in
 * goldensun/overlays/rom_794ac0/overlay.ld.
 */
extern unsigned int __MapActor_GetActor(unsigned int arg0);
extern void __Func_809207c(unsigned int arg0, unsigned int arg1);

void OvlFunc_899_200a6e4(unsigned int arg0, int arg1, unsigned int arg2, unsigned int arg3) {
    short *p;

    p = (short *)((char *)__MapActor_GetActor(arg0) + 0x64);
    if (*p == arg1) {
        __Func_809207c(arg0, arg3);
        *p = arg2;
    }
}
