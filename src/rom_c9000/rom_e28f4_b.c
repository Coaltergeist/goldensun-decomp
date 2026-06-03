/* Cluster Func_80e28f4..Func_80e28f4 extracted from goldensun/asm/rom_c9000/rom_e28f4.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_e28f4_a.o and asm/rom_c9000/rom_e28f4_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_80e2974(void *context, int subanim);

void Func_80e28f4(void *context) {
    int v = *(int *)((char *)context + 0x18);
    if (v == 0) {
        Func_80e2974(context, 6);
    } else if (v == 1) {
        Func_80e2974(context, 7);
    } else {
        Func_80e2974(context, 8);
    }
}
