/* Cluster Func_80b6cb0..Func_80b6cb0 extracted from goldensun/asm/rom_b5000/rom_b5a0c_c_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_b5000/rom_b5a0c_c_c_a_a.o and asm/rom_b5000/rom_b5a0c_c_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_80b6c08(unsigned int arg0, unsigned int *arg1);
extern void CreateBattleSpriteOverlays(unsigned int *unit, int param_2);

void Func_80b6cb0(void)
{
    unsigned char buf[0x1c];
    Func_80b6c08(3, (unsigned int *)buf);
    CreateBattleSpriteOverlays((unsigned int *)buf, 0);
}
