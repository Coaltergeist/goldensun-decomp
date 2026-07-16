/* Cluster Func_8021af0..Func_8021af0 extracted from goldensun/asm/rom_15000/rom_20198_c_c_c_a_c_c.s.
 *
 * Total .text for this TU = 64 bytes (= 0x40).
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_20198_c_c_c_a_c_c_a.o and asm/rom_15000/rom_20198_c_c_c_a_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern int galloc_ewram(int index, int size);
extern void DrawInventoryIcon(unsigned int itemStack, unsigned int flags);
extern int UploadSprite2(unsigned int slot, void *gfx);
extern void gfree(int index);

unsigned int Func_8021af0(unsigned int arg0, unsigned int arg1)
{
    unsigned char *buf;
    unsigned int result;

    buf = (unsigned char *) galloc_ewram(0x11, 0xc1 << 3);
    DrawInventoryIcon(arg0, 0x1a);
    result = UploadSprite2(arg1, buf + (0x80 << 3));
    gfree(0x11);
    return result;
}
