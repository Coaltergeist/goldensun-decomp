/* Cluster Func_809ba70..Func_809ba70 extracted from goldensun/asm/rom_8a000/rom_9b698_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_9b698_c_a_a.o and asm/rom_8a000/rom_9b698_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern void _Sprite_SetAnim(unsigned int);

void Func_809ba70(unsigned int *p) {
    _Sprite_SetAnim(*p);
}
