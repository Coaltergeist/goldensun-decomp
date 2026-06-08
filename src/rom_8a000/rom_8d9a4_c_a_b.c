/* Cluster Func_808ec50..Func_808ec50 extracted from goldensun/asm/rom_8a000/rom_8d9a4_c_a.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_8d9a4_c_a_a.o and asm/rom_8a000/rom_8d9a4_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern int Func_808ec14(void);
extern void _Actor_SetAnim(int a, int b);
extern void _PlaySound(int a);
extern void WaitFrames(int nframes);
extern unsigned int iwram_3001ebc;

void Func_808ec50(void) {
    int idx;
    unsigned char *base;

    idx = Func_808ec14();
    if (idx != -1) {
        base = (unsigned char *)iwram_3001ebc;
        if (*(unsigned int *)(base + (idx << 3) + 0x11c) != 0) {
            _Actor_SetAnim(*(unsigned int *)(base + (idx << 3) + 0x11c), 5);
        }
        _PlaySound(0x7d);
        WaitFrames(0xc);
    }
}
