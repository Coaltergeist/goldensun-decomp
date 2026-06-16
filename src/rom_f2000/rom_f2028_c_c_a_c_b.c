/* Cluster Func_80f3804..Func_80f3804 extracted from goldensun/asm/rom_f2000/rom_f2028_c_c_a_c.s.
 *
 * Total .text for this TU = 32 bytes (= 0x20).
 * Preserves the original ROM layout when slotted between
 * asm/rom_f2000/rom_f2028_c_c_a_c_a.o and asm/rom_f2000/rom_f2028_c_c_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char iwram_3001ed0[];
extern void Func_80f3078(int, unsigned char *, unsigned char *, int);

void Func_80f3804(int arg0, int arg1) {
    unsigned char *base;
    base = *(unsigned char **)iwram_3001ed0;
    if (base != (unsigned char *)0) {
        Func_80f3078(arg0, base, base + 0x1000, arg1);
    }
}
