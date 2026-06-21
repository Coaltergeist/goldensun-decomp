/* Cluster Func_80b8394..Func_80b8394 extracted from goldensun/asm/rom_b5000/rom_b8228_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_b5000/rom_b8228_a_a.o and asm/rom_b5000/rom_b8228_a_c.o in
 * goldensun/stage1.ld.
 */
extern void *GetBattleActor(void);
extern void _Actor_Stop(void *);
extern void _Actor_SetAnim(void *, int);

void Func_80b8394(void) {
    void *r5;
    r5 = *(void **)GetBattleActor();
    _Actor_Stop(r5);
    _Actor_SetAnim(r5, 2);
}
