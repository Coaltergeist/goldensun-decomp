/* Cluster Func_808ece0..Func_808ece0 extracted from goldensun/asm/rom_8a000/rom_8d9a4_c_a_c.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_8d9a4_c_a_c_a.o and asm/rom_8a000/rom_8d9a4_c_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern int GetMapActorIndex(unsigned int param_1);
extern void _Actor_SetAnim(int a, int b);
extern void _PlaySound(int a);
extern void WaitFrames(unsigned int nframes);
extern unsigned int iwram_3001ebc;

void Func_808ece0(unsigned int param_1) {
    int idx;
    unsigned char *base;
    unsigned int val;

    idx = GetMapActorIndex(param_1);
    if (idx != -1) {
        base = (unsigned char *)iwram_3001ebc;
        val = *(unsigned int *)(base + (idx << 3) + 0x11c);
        if (val != 0) {
            _Actor_SetAnim(val, 4);
        }
        _PlaySound(0x7c);
        WaitFrames(0xc);
    }
}
