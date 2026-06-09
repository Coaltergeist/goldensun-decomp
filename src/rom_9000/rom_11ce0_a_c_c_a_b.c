/* Cluster HeightTile_8..HeightTile_8 extracted from goldensun/asm/rom_9000/rom_11ce0_a_c_c_a.s.
 *
 * Total .text for this TU = 28 bytes (= 0x1c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_11ce0_a_c_c_a_a.o and asm/rom_9000/rom_11ce0_a_c_c_a_c.o in
 * goldensun/stage1.ld.
 */
int HeightTile_8(unsigned char *param_1, unsigned int param_2)
{
    int v;
    if (param_2 <= 7)
        v = *(signed char *)param_1;
    else
        v = *(signed char *)(param_1 + 1);
    return v << 19;
}
