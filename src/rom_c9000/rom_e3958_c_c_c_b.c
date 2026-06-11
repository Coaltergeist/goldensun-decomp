/* Cluster Func_80e3a14..Func_80e3a14 extracted from goldensun/asm/rom_c9000/rom_e3958_c_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_e3958_c_c_c_a.o and asm/rom_c9000/rom_e3958_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
/* Func_80e3a14 @ 0x080e3a14  [asm/rom_c9000/rom_e3958_c_c_c.s]
 *
 * p   = *(int*)(iwram_3001eec + 0x7828)   (iwram_3001eec holds a pointer)
 * val = *(short*)(p + 0x24)               (ldrsh, signed)
 * if (val > 0x7f) { gKeyHeld; }           (dead volatile read; ble skips it)
 * Seed missed the middle deref (used 0x7828 as the short offset) and used the
 * wrong symbol for the dead read (asm: gKeyHeld). Name unchanged by the rename.
 */
extern int iwram_3001eec;
extern volatile unsigned int gKeyHeld;

void Func_80e3a14(void)
{
    int p = *(int *)(iwram_3001eec + 0x7828);

    if (*(short *)(p + 0x24) > 0x7f)
        gKeyHeld;
}
