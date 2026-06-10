/* Cluster HeightTile_9..HeightTile_9 extracted from goldensun/asm/rom_9000/rom_11ce0_a_c_c_a_c.s.
 *
 * Total .text for this TU = 1 bytes (= 0x1).
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_11ce0_a_c_c_a_c_a.o and asm/rom_9000/rom_11ce0_a_c_c_a_c_c.o in
 * goldensun/stage1.ld.
 */
/* HeightTile_9 @ 0x08011e6c  (was Func_8011e6c; renamed by the weekend alias pass)
 * [asm/rom_9000/rom_11ce0_a_c_c_a_c.s]
 *
 * cmp r2,#7; bhi +0xe -> ROM falls through (r2<=7) to param_1[0], branches
 * (r2>7) to param_1[1]. The `if (param_3 > 7) [1] else [0]` form compiled to the
 * MIRROR branch (bls, param_1[1] in fall-through). Writing the <=7 case as the
 * then-branch puts param_1[0] in fall-through and yields `bhi` to the [1] block.
 * param_2 unused but must exist so param_3 lands in r2.
 */
int HeightTile_9(signed char *param_1, int param_2, unsigned int param_3)
{
    int v;

    if (param_3 <= 7)
        v = param_1[0];
    else
        v = param_1[1];
    return v << 19;
}
