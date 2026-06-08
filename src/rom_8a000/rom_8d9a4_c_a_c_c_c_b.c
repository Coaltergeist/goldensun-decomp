/* Cluster Func_808ed78..Func_808ed78 extracted from goldensun/asm/rom_8a000/rom_8d9a4_c_a_c_c_c.s.
 *
 * Total .text for this TU = 52 bytes (= 0x34).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_8d9a4_c_a_c_c_c_a.o and asm/rom_8a000/rom_8d9a4_c_a_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern int GetMapActorIndex();
extern unsigned int iwram_3001ebc;

void Func_808ed78(void) {
    int res;
    unsigned char *base;

    res = GetMapActorIndex();
    if (res != -1) {
        base = (unsigned char *)(*(unsigned int *)&iwram_3001ebc + (res << 3) + 0x11c);
        if (*(unsigned int *)base != 0) {
            *(unsigned char *)(*(unsigned int *)base + 0x54) = 0;
        }
    }
}
