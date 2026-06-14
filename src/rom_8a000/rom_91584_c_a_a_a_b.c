/* Cluster Func_8091780..Func_8091780 extracted from goldensun/asm/rom_8a000/rom_91584_c_a_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_91584_c_a_a_a_a.o and asm/rom_8a000/rom_91584_c_a_a_a_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_809177c(void);
extern void InitMapActors(unsigned int);
extern void WaitFrames(unsigned int);
extern unsigned int GetFieldActor(unsigned int);
extern unsigned int gState;

void Func_8091780(unsigned int arg0) {
    unsigned int r5;
    unsigned int r3;
    unsigned int r2;

    r5 = arg0;
    Func_809177c();
    InitMapActors(r5);
    WaitFrames(1);
    r3 = (unsigned int)&gState;
    r2 = 0xfa;
    r2 <<= 1;
    r3 += r2;
    GetFieldActor(*(unsigned int *)r3);
}
