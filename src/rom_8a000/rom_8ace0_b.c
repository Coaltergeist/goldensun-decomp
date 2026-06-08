/* Cluster Func_808b64c..Func_808b64c extracted from goldensun/asm/rom_8a000/rom_8ace0.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_8ace0_a.o and asm/rom_8a000/rom_8ace0_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int iwram_3001ebc;
extern int GetFieldActor(int actor);
extern void _DeleteActor(void);

void Func_808b64c(int actor)
{
    unsigned int base;
    int r3;

    base = iwram_3001ebc;
    if (GetFieldActor(actor)) {
        _DeleteActor();
        r3 = (actor << 2) + 20;
        *(int *)((char *)base + r3) = 0;
    }
}
