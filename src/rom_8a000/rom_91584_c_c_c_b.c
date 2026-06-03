/* Cluster Func_8092560..Func_8092560 extracted from goldensun/asm/rom_8a000/rom_91584_c_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_91584_c_c_c_a.o and asm/rom_8a000/rom_91584_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern int Func_808ba1c(int actorID);
extern void _Func_80f9080(int param);
extern void Func_809163c(unsigned int param);

void Func_8092560(int actor, int height, unsigned int holdTime) {
    int res;
    unsigned char *p;
    unsigned char v;

    res = Func_808ba1c(actor);
    if (res != 0) {
        p = (unsigned char *)((char *)res + 0x55);
        v = 2 | *p;
        *p = v;
        *(unsigned int *)((char *)res + 0x28) = height << 16;
        if (height > 5)
            _Func_80f9080(0x99);
        else
            _Func_80f9080(0x98);
        Func_809163c(holdTime);
    }
}
