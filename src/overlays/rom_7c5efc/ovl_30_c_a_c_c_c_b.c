/* Cluster OvlFunc_941_20092ac..OvlFunc_941_20092ac extracted from goldensun/asm/overlays/rom_7c5efc/ovl_30_c_a_c_c_c.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7c5efc/ovl_30_c_a_c_c_c_a.o and asm/overlays/rom_7c5efc/ovl_30_c_a_c_c_c_c.o in
 * goldensun/overlays/rom_7c5efc/overlay.ld.
 */
extern int __Func_8091c7c(int a, int b);

unsigned int OvlFunc_941_20092ac(void)
{
    int r3;
    r3 = __Func_8091c7c(0, 0);
    return 1 - ((unsigned int)(-r3 | r3) >> 31);
}
