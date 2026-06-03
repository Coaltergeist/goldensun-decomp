/* Cluster OvlFunc_899_2008af4..OvlFunc_899_2008af4 extracted from goldensun/asm/overlays/rom_794ac0/ovl_30_a_c_c.s.
 *
 * Total .text for this TU = 84 bytes (= 0x54).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_794ac0/ovl_30_a_c_c_a.o and asm/overlays/rom_794ac0/ovl_30_a_c_c_c.o in
 * goldensun/overlays/rom_794ac0/overlay.ld.
 */
extern void __Func_80916b0(void);
extern int __Func_8079338(int);
extern void __Func_8092b94(int);
extern void OvlFunc_899_2008378(int);
extern void __Func_8091750(void);

void OvlFunc_899_2008af4(void)
{
    __Func_80916b0();
    if (__Func_8079338(0x855) == 0) {
        __Func_8092b94(0x1294);
    } else if (__Func_8079338(0x85b) == 0) {
        __Func_8092b94(0x1382);
    } else {
        __Func_8092b94(0x1cf4);
    }
    OvlFunc_899_2008378(0x12);
    __Func_8091750();
}
