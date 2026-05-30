/* Cluster Func_800ea54..Func_800ea54 extracted from goldensun/asm/rom_9000/rom_ea54.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_ea54_a.o and asm/rom_9000/rom_ea54_c.o in
 * goldensun/stage1.ld.
 */
void Func_800ea54(unsigned int actor, unsigned int func) {
    if (actor != 0) {
        *(unsigned int *)(actor + 0x6c) = func;
    }
}
