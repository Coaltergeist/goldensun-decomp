/* Cluster Func_80ae908..Func_80ae908 extracted from goldensun/asm/rom_a1000/rom_ae88c_c.s.
 *
 * Total .text for this TU = 80 bytes (= 0x50).
 * Preserves the original ROM layout when slotted between
 * asm/rom_a1000/rom_ae88c_c_a.o and asm/rom_a1000/rom_ae88c_c_c.o in
 * goldensun/stage1.ld.
 */
extern void *galloc_ewram(int index, unsigned int size);
extern void _LoadMoveIcon(unsigned int a0, unsigned int a1, unsigned int *a2, unsigned int *a3, unsigned int a4);
extern unsigned int UploadSprite2(unsigned int slot, void *gfx);
extern void gfree(int index);

unsigned int Func_80ae908(unsigned int arg0, unsigned int arg1)
{
    void *p;
    unsigned int local1;
    unsigned int local2;
    unsigned int result;

    p = galloc_ewram(0x11, 0xc1 << 3);
    local1 = arg1;
    _LoadMoveIcon(arg0, 0, &local1, &local2, 1);
    result = UploadSprite2(arg1, (void *)((unsigned int)p + (0x80 << 3)));
    gfree(0x11);
    return result;
}
