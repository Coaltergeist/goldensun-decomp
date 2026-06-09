/* Cluster HeightTile_1..HeightTile_2 extracted from goldensun/asm/rom_9000/rom_11ce0_a_c.s.
 *
 * Total .text for this TU = 72 bytes (= 0x48).
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_11ce0_a_c_a.o and asm/rom_9000/rom_11ce0_a_c_c.o in
 * goldensun/stage1.ld.
 */
int HeightTile_1(signed char *param_1, int param_2)
{
    int a;
    int b;

    a = param_1[0] << 19;
    b = param_1[1] << 19;
    return a + ((b - a) * param_2) / 16;
}
int HeightTile_2(signed char *param_1, int param_2, int param_3) {
    int a;
    int b;

    a = (int)param_1[0] << 19;
    b = (int)param_1[1] << 19;
    return a + ((b - a) * param_3) / 16;
}
