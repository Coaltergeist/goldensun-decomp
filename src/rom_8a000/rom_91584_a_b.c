/* Cluster Func_8091584..Func_8091584 extracted from goldensun/asm/rom_8a000/rom_91584_a.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_91584_a_a.o and asm/rom_8a000/rom_91584_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int Func_808ba1c(unsigned int);

unsigned int Func_8091584(unsigned int actorID) {
    unsigned int v0;
    unsigned int v3;

    v0 = Func_808ba1c(actorID);
    v3 = *(unsigned char *)((char *)v0 + 0x54);
    if (v3 != 1) {
        return 0;
    }
    v0 = *(unsigned int *)((char *)v0 + 0x50);
    if (v0 == 0) {
        return 0;
    }
    v0 = *(unsigned int *)((char *)v0 + 0x28);
    if (v0 == 0) {
        return 0;
    }
    return *(short *)v0;
}
