/* Cluster Func_808e9a8..Func_808e9a8 extracted from goldensun/asm/rom_8a000/rom_8d9a4_a_c_a_c.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_8d9a4_a_c_a_c_a.o and asm/rom_8a000/rom_8d9a4_a_c_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern int _Func_8011f54(int a, int b, int c);

void Func_808e9a8(unsigned int arg0)
{
    unsigned char *p;
    int r;

    p = (unsigned char *)arg0;
    r = _Func_8011f54(0, *(int *)(p + 8), *(int *)(p + 0x10));
    *(int *)(p + 0xc) = r;
    *(int *)(p + 0x14) = r;
}
