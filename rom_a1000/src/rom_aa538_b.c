/* Cluster Func_aa538..Func_aa538 extracted from goldensun/rom_a1000/src/rom_aa538.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * rom_a1000/src/rom_aa538_a.o and rom_a1000/src/rom_aa538_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int Func_b1c_from_thumb(unsigned int);

unsigned int Func_aa538(unsigned int arg0, unsigned int arg1) {
    return Func_b1c_from_thumb(arg0 + arg1);
}
