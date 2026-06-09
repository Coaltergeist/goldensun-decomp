/* Cluster Func_80aa538..Func_80aa538 extracted from goldensun/rom_a1000/src/rom_aa538.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * rom_a1000/src/rom_aa538_a.o and rom_a1000/src/rom_aa538_c.o in
 * goldensun/stage1.ld.
 */

int Func_80aa538(int arg0, int arg1) {
    return (arg0 + arg1) % arg1;
}
