/* Cluster Func_8021ab0..Func_8021ab0 extracted from goldensun/asm/rom_15000/rom_20198_c_c_c_a_c.s.
 *
 * Total .text for this TU = 64 bytes (= 0x40).
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_20198_c_c_c_a_c_a.o and asm/rom_15000/rom_20198_c_c_c_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern void *galloc_ewram(int index, unsigned int size);
extern void DecompressStatusIcon(unsigned int iconID);
extern int UploadSprite2(unsigned int slot, void *gfx);
extern void gfree(int index);

int Func_8021ab0(unsigned int iconID, unsigned int slot)
{
    void *p;
    int result;

    p = galloc_ewram(0x11, 0xc1 << 3);
    DecompressStatusIcon(iconID);
    result = UploadSprite2(slot, (void *)((char *)p + (0x80 << 3)));
    gfree(0x11);
    return result;
}
