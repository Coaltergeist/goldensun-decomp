/* Cluster Func_8021b30..Func_8021b30 extracted from goldensun/asm/rom_15000/rom_20198_c_c_c_a_c_c_c.s.
 *
 * Total .text for this TU = 80 bytes (= 0x50).
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_20198_c_c_c_a_c_c_c_a.o and asm/rom_15000/rom_20198_c_c_c_a_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern void *galloc_ewram(int index, unsigned int size);
extern void LoadMoveIcon(unsigned int move, int box, int *slot, int *unk, int unk2);
extern int UploadSprite2(unsigned int slot, void *gfx);
extern void gfree(int index);

int Func_8021b30(unsigned int move, unsigned int arg1)
{
    void *buf;
    int unk;
    int slot;
    int result;

    buf = galloc_ewram(0x11, 0x608);
    slot = arg1;
    LoadMoveIcon(move, 0, &slot, &unk, 1);
    result = UploadSprite2(arg1, (void *)((char *)buf + 0x400));
    gfree(0x11);
    return result;
}
