/* Cluster Func_80a9bd8..Func_80a9bd8 extracted from goldensun/asm/rom_a1000/rom_a8604_c_c_a.s.
 *
 * Total .text for this TU = 64 bytes (= 0x40).
 * Preserves the original ROM layout when slotted between
 * asm/rom_a1000/rom_a8604_c_c_a_a.o and asm/rom_a1000/rom_a8604_c_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern int Func_b1c_from_thumb(int a, int b);
extern void Func_80a17c4(unsigned char *p);

void Func_80a9bd8(unsigned char *p, int idx, int yoff, int xoff, int arg4) {
    if (idx > 0x1f)
        idx = 0;
    *(unsigned short *)(p + 8) = ((idx / arg4) << 4) + xoff;
    *(unsigned short *)(p + 6) = (Func_b1c_from_thumb(idx, arg4) << 4) + yoff;
    Func_80a17c4(p);
}
