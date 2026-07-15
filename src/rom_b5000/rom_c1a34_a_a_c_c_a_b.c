/* Cluster GetEnemyUnk..GetEnemyUnk extracted from goldensun/asm/rom_b5000/rom_c1a34_a_a_c_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_b5000/rom_c1a34_a_a_c_c_a_a.o and asm/rom_b5000/rom_c1a34_a_a_c_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern int park(int, int);
extern int r2(int);
extern int reg(int, int, int);

/* GetEnemyUnk @ 0x080c2434  (was Func_80c2434; renamed by the weekend alias pass)
 * [asm/rom_b5000/rom_c1a34_a_a_c_c_a.s]
 *
 * Wave-1 park (stable r2/r3 swap, `.L` so non-permutable) retried with the
 * pin+barrier toolkit: base pinned r3, index pinned r2 (ROM allocation); the
 * pointer add coalesces onto the dying index reg (adds r2,r2,r3) as in the ROM.
 * Judge gates the body; the named-.L reloc form needs compare-rom as final gate.
 */
extern unsigned char Lc7420[] __asm__(".Lc7420");

unsigned int GetEnemyUnk(unsigned int param_1)
{
    unsigned char *t;
    unsigned int idx;
    unsigned char *p;

    if (param_1 > 0xab)
        return 0;
    t = Lc7420;
    idx = param_1 << 3;
    p = (unsigned char *)(idx + (unsigned int)t);
    return ((unsigned int)p[3] << 31) >> 31;
}
