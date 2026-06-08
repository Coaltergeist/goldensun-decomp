/* Cluster Actor_WaitMovement..Actor_WaitMovement extracted from goldensun/asm/rom_9000/rom_ca6c_a.s.
 *
 * Total .text for this TU = 44 bytes (= 0x2c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_ca6c_a_a.o and asm/rom_9000/rom_ca6c_a_c.o in
 * goldensun/stage1.ld.
 */
extern void WaitFrames(unsigned int nframes);
extern int Actor_IsNotMoving(void *actor);

void Actor_WaitMovement(void *actor)
{
    int i;
    for (i = 0; i <= 0x257; i++) {
        if (Actor_IsNotMoving(actor))
            break;
        WaitFrames(1);
    }
}
