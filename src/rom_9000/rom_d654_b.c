/* Cluster ActorCmd_Delete..ActorCmd_Delete extracted from goldensun/rom_9000/src/rom_d654.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * rom_9000/src/rom_d654_a.o and rom_9000/src/rom_d654_c.o in
 * goldensun/stage1.ld.
 */
extern void DeleteActor(void);

/* FF: bool ActorCmd_Delete(Actor * actor) */
unsigned int ActorCmd_Delete(void) {
    DeleteActor();
    return 0;
}
