/* Cluster Func_78a8c..Func_78a8c extracted from goldensun/rom_77000/src/rom_78a8c.s.
 *
 * Total .text for this TU = 20 bytes (= 0x14).
 * Preserves the original ROM layout when slotted between
 * rom_77000/src/rom_78a8c_a.o and rom_77000/src/rom_78a8c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int Func_78414(void);
extern unsigned int Func_78b9c(unsigned int arg0);

unsigned int Func_78a8c(void) {
    unsigned int ptr = Func_78414();
    unsigned short val = *(unsigned short *)(ptr + 0x28);
    unsigned int result = Func_78b9c(val);
    return *(unsigned char *)result;
}
