/* Cluster Func_8019ba0..Func_8019ba0 extracted from goldensun/asm/rom_15000/rom_1908c_c.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_1908c_c_a.o and asm/rom_15000/rom_1908c_c_c.o in
 * goldensun/stage1.ld.
 */
/* Func_8019ba0; forwards its incoming stringID (r0) unchanged to
 * BufferString(stringID, 1). The param must be int (not u16): the ROM does NOT
 * zero-extend r0, so a u16 param's lsl#16/lsr#16 narrowing diverges. */
extern int BufferString(int stringID, int unk);

int Func_8019ba0(int stringID) {
    return BufferString(stringID, 1);
}
