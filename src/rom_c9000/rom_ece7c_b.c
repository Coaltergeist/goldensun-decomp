/* Cluster Func_80ecedc..Func_80ecedc extracted from goldensun/asm/rom_c9000/rom_ece7c.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_ece7c_a.o and asm/rom_c9000/rom_ece7c_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_80ecef4(void *context, int subanim);

void Func_80ecedc(void *context) {
    Func_80ecef4(context, 1);
}
