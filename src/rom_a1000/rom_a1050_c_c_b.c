/* Cluster Func_80a14f0..Func_80a14f0 extracted from goldensun/asm/rom_a1000/rom_a1050_c_c.s.
 *
 * Total .text for this TU = 76 bytes (= 0x4c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_a1000/rom_a1050_c_c_a.o and asm/rom_a1000/rom_a1050_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern void _Func_801e9d4(int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3, unsigned int arg4);

void Func_80a14f0(int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3)
{
    int i;
    int num;

    num = arg0;
    for (i = 1; i <= 15; i++) {
        num = num / 10;
        if (num <= 9) {
            break;
        }
    }
    i = i + 1;
    arg2 -= i * 8;
    _Func_801e9d4(arg0, i, arg1, arg2, arg3);
}
