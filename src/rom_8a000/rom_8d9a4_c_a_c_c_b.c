/* Cluster Func_808ed1c..Func_808ed1c extracted from goldensun/asm/rom_8a000/rom_8d9a4_c_a_c_c.s.
 *
 * Total .text for this TU = 48 bytes (= 0x30).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_8d9a4_c_a_c_c_a.o and asm/rom_8a000/rom_8d9a4_c_a_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern int GetMapActorIndex();
extern void _Actor_SetAnim();
extern unsigned int iwram_3001ebc;

void Func_808ed1c(void) {
    int idx;
    unsigned char *base;
    int val;

    idx = GetMapActorIndex();
    if (idx != -1) {
        base = (unsigned char *)iwram_3001ebc;
        val = *(unsigned int *)(base + (idx << 3) + 0x11c);
        if (val != 0) {
            _Actor_SetAnim(val, 2);
        }
    }
}
