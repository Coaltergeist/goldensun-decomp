/* Cluster Func_80931d4..Func_80931d4 extracted from goldensun/asm/rom_8a000/rom_92950_c_c_c.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_92950_c_c_c_a.o and asm/rom_8a000/rom_92950_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern int Func_8092ba8(void);

void Func_80931d4(void)
{
    if (Func_8092ba8() == -1)
        return;
    _Func_8019e48();
}
