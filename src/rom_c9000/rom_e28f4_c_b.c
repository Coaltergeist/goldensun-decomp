/* Cluster Func_80e294c..Func_80e294c extracted from goldensun/asm/rom_c9000/rom_e28f4_c.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_e28f4_c_a.o and asm/rom_c9000/rom_e28f4_c_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_80e2974(void *context, int subanim);

void Func_80e294c(void *context) {
    int v3 = *(int *)((char *)context + 0x18);
    if (v3 == 0) {
        Func_80e2974(context, 3);
    } else if (v3 == 1) {
        Func_80e2974(context, 4);
    } else {
        Func_80e2974(context, 5);
    }
}
