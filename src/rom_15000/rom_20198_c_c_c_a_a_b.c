// fakematch
/* Cluster Func_80215e0..Func_80215e0 extracted from goldensun/asm/rom_15000/rom_20198_c_c_c_a_a.s.
 *
 * Total .text for this TU = 64 bytes (= 0x40).
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_20198_c_c_c_a_a_a.o and asm/rom_15000/rom_20198_c_c_c_a_a_c.o in
 * goldensun/stage1.ld.
 */
extern void *galloc_ewram(int index, unsigned int size);
extern void DecompressLZ1(void *src, void *dest);
extern void UploadSpriteGFX(int slot, unsigned int size, unsigned char *gfx);
extern void gfree(int index);
extern unsigned char *Data_31864[];

void Func_80215e0(int param_1, unsigned int param_2)
{
    unsigned char *gfx;
    unsigned char *src;
    unsigned int size;

    gfx = galloc_ewram(0xe, 0x400);
    src = Data_31864[param_1];
    if ((int)param_2 < 0x60) {
        DecompressLZ1(src, gfx);
        size = 0x80;
        size <<= 2;
        __asm__ volatile ("" : "+r" (size));
        UploadSpriteGFX(param_2, size, gfx);
        gfree(0xe);
    }
}
