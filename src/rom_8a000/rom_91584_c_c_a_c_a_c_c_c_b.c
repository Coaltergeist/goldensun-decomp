/* Cluster MapActor_SetSpeed..MapActor_SetSpeed extracted from goldensun/asm/rom_8a000/rom_91584_c_c_a_c_a_c_c_c.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_91584_c_c_a_c_a_c_c_c_a.o and asm/rom_8a000/rom_91584_c_c_a_c_a_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char *GetFieldActor(unsigned int actorID);

void MapActor_SetSpeed(unsigned int actor, int speed, int accel) {
    unsigned char *r0;

    r0 = GetFieldActor(actor);
    if (r0 != 0) {
        *(unsigned int *)(r0 + 0x34) = accel;
        *(unsigned int *)(r0 + 0x30) = speed;
    }
}
