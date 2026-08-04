/* Cluster Func_80a3e88..Func_80a3e88 extracted from goldensun/asm/rom_a1000/rom_a1814_c_a_c_c_c_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_a1000/rom_a1814_c_a_c_c_c_c_c_a.o and asm/rom_a1000/rom_a1814_c_a_c_c_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char *iwram_3001f2c;
extern unsigned int _GetUnit(unsigned int arg0);
extern unsigned int Func_80a3ddc(unsigned int unit, unsigned short *ptr, int flag);
extern void _Func_8016498(unsigned int box);
extern void Func_80a1cb0(unsigned int arg1);
extern void Func_80a3e28(unsigned short *ptr, int flag);
extern unsigned int Func_80a3d6c(unsigned int arg0);
extern void _Func_801e7c0(unsigned int msg, unsigned int arg1, int arg2, int arg3);

void Func_80a3e88(unsigned int arg0, unsigned int arg1) {
    unsigned char *r7;
    unsigned short *r5;
    unsigned char *r3;
    unsigned int u;
    unsigned int ret;

    r7 = iwram_3001f2c;
    u = _GetUnit(arg0);
    r5 = (unsigned short *)(r7 + 0xe4 * 2);
    ret = Func_80a3ddc(u, r5, 0);
    r3 = r7 + 0x86 * 4;
    *r3 = (unsigned char) ret;
    _Func_8016498(*(unsigned int *)(r7 + 0x20));
    Func_80a1cb0(arg1);
    Func_80a3e28(r5, 0);
    if (Func_80a3d6c(arg0) == 0) {
        _Func_801e7c0(0xad7, *(unsigned int *)(r7 + 0x20), 8, 0x18);
    }
}
