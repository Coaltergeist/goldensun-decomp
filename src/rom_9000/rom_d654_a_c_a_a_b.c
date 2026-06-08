/* Cluster Func_800d760..Func_800d760 extracted from goldensun/asm/rom_9000/rom_d654_a_c_a_a.s.
 *
 * Total .text for this TU = 32 bytes (= 0x20).
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_d654_a_c_a_a_a.o and asm/rom_9000/rom_d654_a_c_a_a_c.o in
 * goldensun/stage1.ld.
 */
extern int Actor_FindScriptMarker(int actor, unsigned int value);

int Func_800d760(int actor) {
    int idx;
    int base;
    unsigned int val;

    idx = *(short *)((char *)actor + 4);
    base = *(int *)actor;
    val = *(unsigned int *)((char *)(idx << 2) + base + 4);
    *(short *)((char *)actor + 4) = Actor_FindScriptMarker(actor, val);
    return 1;
}
