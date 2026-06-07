/* Cluster Func_80aa448..Func_80aa448 extracted from goldensun/asm/rom_a1000/rom_a8604_c_c_c_c_a.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/rom_a1000/rom_a8604_c_c_c_c_a_a.o and asm/rom_a1000/rom_a8604_c_c_c_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern int _Func_8078414(void);
extern void Func_80aa460(int);

void Func_80aa448(void) {
    unsigned char *p = (unsigned char *)_Func_8078414();
    Func_80aa460(*(unsigned short *)(p + 0x28) & 0x3fff);
}
