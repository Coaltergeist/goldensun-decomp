/* Cluster Func_80a6384..Func_80a6384 extracted from goldensun/asm/rom_a1000/rom_a5534_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_a1000/rom_a5534_c_a_a.o and asm/rom_a1000/rom_a5534_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char *iwram_3001f2c;
void Func_80a1bdc(int, int, int);

void Func_80a6384(unsigned int arg0) {
    unsigned char *r7;
    unsigned short *r6;
    unsigned char *r5;
    unsigned int u;
    unsigned int ret;

    r7 = iwram_3001f2c;
    u = _GetUnit(arg0);
    r6 = (unsigned short *)(r7 + 0xe4 * 2);
    ret = Func_80a68ec(u, r6, 2);
    r5 = r7 + 0x86 * 4;
    *r5 = (unsigned char) ret;
    _Func_8016498(*(unsigned int *)(r7 + 0x20));
    Func_80a1bdc(0x6c, 0x20, 8);
    Func_80a68a8(r6);
    if (*r5 == 0) {
        _Func_801e7c0(0xaf2, *(unsigned int *)(r7 + 0x20), 0, 0x18);
    }
}
