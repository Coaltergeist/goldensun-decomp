/* Cluster Func_808ec8c..Func_808ec8c extracted from goldensun/asm/rom_8a000/rom_8d9a4_c_a_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_8d9a4_c_a_c_a_a.o and asm/rom_8a000/rom_8d9a4_c_a_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern int GetMapActorIndex();
extern void WaitFrames();
extern void _Actor_SetAnim();
extern void _PlaySound();
extern void _Actor_SetSpriteFlags();
extern unsigned int iwram_3001ebc;

void Func_808ec8c(void) {
    int idx;
    unsigned char *base;
    unsigned char *actor;

    idx = GetMapActorIndex();
    if (idx != -1) {
        base = (unsigned char *)iwram_3001ebc;
        actor = *(unsigned char **)(base + (idx << 3) + 0x11c);
        WaitFrames(0x12);
        if (actor != 0) {
            _Actor_SetAnim(actor, 7);
        }
        _PlaySound(0x92);
        if (actor != 0) {
            *(unsigned int *)(actor + 0x28) = 0x80000;
            _Actor_SetSpriteFlags(actor, 1);
        }
    }
}
