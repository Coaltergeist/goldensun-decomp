/* Cluster MapActor_Jump..MapActor_Jump extracted from goldensun/asm/rom_8a000/rom_91584_c_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_91584_c_c_c_a.o and asm/rom_8a000/rom_91584_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern int GetFieldActor(int actorID);
extern void _PlaySound(int param);
extern void CutsceneWait(unsigned int param);

void MapActor_Jump(int actor, int height, unsigned int holdTime) {
    int res;
    unsigned char *p;
    unsigned char v;

    res = GetFieldActor(actor);
    if (res != 0) {
        p = (unsigned char *)((char *)res + 0x55);
        v = 2 | *p;
        *p = v;
        *(unsigned int *)((char *)res + 0x28) = height << 16;
        if (height > 5)
            _PlaySound(0x99);
        else
            _PlaySound(0x98);
        CutsceneWait(holdTime);
    }
}
