/* Cluster ActorCmd_Stop..ActorCmd_Stop extracted from goldensun/asm/rom_9000/rom_d654_a_c_a.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_d654_a_c_a_a.o and asm/rom_9000/rom_d654_a_c_a_c.o in
 * goldensun/stage1.ld.
 */
/* ActorCmd_Stop (ActorCmd_Stop) — actor[0] = &.L13240; *(u16*)(actor+4) = 0;
 * return 0. Scoping the tarpman zero in a nested block after the pointer store
 * keeps its `movs` from being hoisted ahead of the str (so r3 is reused). */
extern unsigned char L13240[] __asm__(".L13240");

int ActorCmd_Stop(int *actor) {
    actor[0] = (int)L13240;
    {
        unsigned short zero = 0;
        *(unsigned short *)((char *)actor + 4) = zero;
    }
    return 0;
}
