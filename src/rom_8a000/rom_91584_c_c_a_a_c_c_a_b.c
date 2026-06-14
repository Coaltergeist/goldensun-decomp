/* Cluster SetDestMap..SetDestMap extracted from goldensun/asm/rom_8a000/rom_91584_c_c_a_a_c_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_91584_c_c_a_a_c_c_a_a.o and asm/rom_8a000/rom_91584_c_c_a_a_c_c_a_c.o in
 * goldensun/stage1.ld.
 */
/* SetDestMap @ 0x08091e3c  (was Func_8091e3c; renamed by the weekend alias pass)
 * [asm/rom_8a000/rom_91584_c_c_a_a_c_c_a.s]
 *
 * Twin of SetRespawnMap (landed src/rom_8a000/rom_91584_c_c_a_a_c_c_b.c) with
 * gState offsets 0xe0/0xe1 instead of 0xe2/0xe3; same q/v/s staging: q burns
 * r2 as offset scratch and dies, v (pooled 0x3e7) reuses r2, then gState
 * reuses it again; any other order lets gcc CSE the second offset.
 */
extern unsigned int iwram_3001ebc;
extern unsigned char gState[];

void SetDestMap(unsigned short map, unsigned short door)
{
    unsigned char *p = (unsigned char *)iwram_3001ebc;
    unsigned short *q = (unsigned short *)(p + 0xb8 * 2);
    unsigned short v = 0x3e7;
    unsigned short *s;

    *q = v;
    s = (unsigned short *)gState;
    s[0xe0] = map;
    s[0xe1] = door;
}
