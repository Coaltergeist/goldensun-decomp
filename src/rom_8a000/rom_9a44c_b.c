/* Cluster Func_809a890..Func_809a890 extracted from goldensun/asm/rom_8a000/rom_9a44c.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_9a44c_a.o and asm/rom_8a000/rom_9a44c_c.o in
 * goldensun/stage1.ld.
 */
extern void _Func_800d130();

void Func_809a890(unsigned int arg0)
{
    int r3;
    r3 = *(int *)(arg0 + 0x18);
    r3 -= 0x80;
    *(int *)(arg0 + 0x1c) = r3;
    *(int *)(arg0 + 0x18) = r3;
    if (r3 < (0x80 << 8)) {
        _Func_800d130(arg0, 0, 0, 0);
        *(int *)(arg0 + 0x6c) = 0;
    }
}
