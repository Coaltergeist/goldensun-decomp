/* Cluster Func_80bb8e8..Func_80bb8e8 extracted from goldensun/asm/rom_b5000/rom_bb588_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_b5000/rom_bb588_c_a_a.o and asm/rom_b5000/rom_bb588_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char *_GetUnit(unsigned int arg0);
extern void _Func_80782a0(unsigned char *base, int arg1);
extern void Func_80bac6c(unsigned int arg0);
extern void Func_80b7e60(unsigned int arg0);
extern unsigned char *Func_80b7dd0(unsigned int arg0);
extern void _DeleteActor(unsigned int arg0);

unsigned int Func_80bb8e8(unsigned int arg0) {
    unsigned char *r5;
    unsigned char *base;

    base = _GetUnit(arg0);
    if (*(unsigned char *)(base + 0x12a) == 1) {
        _Func_80782a0(base, 0);
        Func_80bac6c(arg0);
        Func_80b7e60(arg0);
        r5 = Func_80b7dd0(arg0);
        _DeleteActor(*(unsigned int *)r5);
        *(unsigned int *)r5 = 0;
        *(unsigned short *)(r5 + 0x28) = 0;
    }
}
