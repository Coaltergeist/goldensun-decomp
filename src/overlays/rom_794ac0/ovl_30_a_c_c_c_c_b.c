/* Cluster OvlFunc_899_200a71c..OvlFunc_899_200a71c extracted from goldensun/asm/overlays/rom_794ac0/ovl_30_a_c_c_c_c.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_794ac0/ovl_30_a_c_c_c_c_a.o and asm/overlays/rom_794ac0/ovl_30_a_c_c_c_c_c.o in
 * goldensun/overlays/rom_794ac0/overlay.ld.
 */
extern int *__Func_8092054(int);
extern void __Func_8079358(int);
extern void __Func_8079374(int);

void OvlFunc_899_200a71c(void)
{
    int r5;
    int r3;

    r5 = __Func_8092054(0)[2];
    r3 = __Func_8092054(0)[4];
    r5 >>= 20;
    r3 >>= 20;
    r5 -= 0x22;
    if ((unsigned int)r5 <= 1 && r3 > 0x28 && r3 <= 0x2a)
        __Func_8079358(0x94 << 2);
    else
        __Func_8079374(0x94 << 2);
}
