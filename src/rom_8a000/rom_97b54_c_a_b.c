/* Cluster Func_80999a8..Func_80999a8 extracted from goldensun/asm/rom_8a000/rom_97b54_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_97b54_c_a_a.o and asm/rom_8a000/rom_97b54_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern int Random(void);
extern void _Actor_SetScript(void *actor, void *script);
extern unsigned char Data_9f0b0[];

void Func_80999a8(int *r6)
{
    int r5;

    r6[3] += (int)0xffffb334;
    r5 = Random();
    r5 -= Random();
    r6[2] += r5;
    if (r6[3] <= r6[5])
        _Actor_SetScript(r6, Data_9f0b0);
}
