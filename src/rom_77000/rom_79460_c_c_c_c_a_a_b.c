/* Cluster Func_8079ae8..Func_8079ae8 extracted from goldensun/asm/rom_77000/rom_79460_c_c_c_c_a_a.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_77000/rom_79460_c_c_c_c_a_a_a.o and asm/rom_77000/rom_79460_c_c_c_c_a_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char *GetUnit(unsigned int unit);
extern unsigned int Func_80799b0(unsigned char a, unsigned char *b);
extern void Func_8078bf0(unsigned int a);
extern void Func_80798e0(unsigned int a, unsigned char *b);

void Func_8079ae8(unsigned int arg0) {
    unsigned char *unit;
    unsigned char v;
    unsigned char result;

    unit = GetUnit(arg0);
    v = *(unsigned char *)(unit + 0x94 * 2);
    result = Func_80799b0(v, unit + 0xf8);
    *(unsigned char *)(unit + 0x129) = result;
    Func_8078bf0(arg0);
    Func_80798e0(arg0, unit + 0x24);
}
