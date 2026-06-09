/* Cluster Func_809228c..Func_809228c extracted from goldensun/asm/rom_8a000/rom_91584_c_c_a_c_c.s.
 *
 * Total .text for this TU = 56 bytes (= 0x38).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_91584_c_c_a_c_c_a.o and asm/rom_8a000/rom_91584_c_c_a_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern int GetFieldActor(int actorID);
extern void _Actor_Stop(void);
extern void _Actor_TravelTo(int a, int b, int c, int d);

void Func_809228c(int arg0, int arg1, int arg2) {
    unsigned char *actor;

    actor = (unsigned char *)GetFieldActor(arg0);
    if (actor != (unsigned char *)0) {
        actor[0x5b] = 0;
        _Actor_Stop();
        _Actor_TravelTo((int)actor,
                      *(int *)(actor + 8) + (arg1 << 16),
                      *(int *)(actor + 0xc),
                      *(int *)(actor + 0x10) + (arg2 << 16));
    }
}
