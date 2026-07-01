/* Cluster Func_809259c..Func_809259c extracted from goldensun/asm/rom_8a000/rom_9259c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_9259c_a_a.o and asm/rom_8a000/rom_9259c_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char L9ebfc[] __asm__(".L9ebfc");
extern int GetFieldActor(int actorID);
extern void _Actor_SetScript(int actor, unsigned char *script);

void Func_809259c(int arg0, int arg1) {
    int r5;
    int actor;
    r5 = arg1;
    actor = GetFieldActor(arg0);
    if (!actor) return;
    if (r5 <= 0) return;
    if (r5 > 3) r5 = 3;
    _Actor_SetScript(actor, L9ebfc + (3 - r5) * 128);
}
