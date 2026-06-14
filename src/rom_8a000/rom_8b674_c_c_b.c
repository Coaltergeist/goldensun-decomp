/* Cluster GetFieldActor..GetFieldActor extracted from goldensun/asm/rom_8a000/rom_8b674_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_8b674_c_c_a.o and asm/rom_8a000/rom_8b674_c_c_c.o in
 * goldensun/stage1.ld.
 */
/* GetFieldActor @ 0x0808ba1c  (was Func_808ba1c)  [asm/rom_8a000/rom_8b674_c.s]
 * Bounds-checked actor-table lookup off *iwram_3001ebc (table deref'd EAGERLY,
 * before the bounds check). pop {r1}; bx r1 = returns a value.
 */
extern unsigned int iwram_3001ebc;

unsigned int GetFieldActor(unsigned int actorID)
{
    unsigned int base = iwram_3001ebc;
    unsigned int ofs;

    if (actorID > 0xbf)
        return 0;
    ofs = (actorID << 2) + 0x14;
    return *(unsigned int *)(base + ofs);
}
