/* Cluster Func_80922c4..Func_80922c4 extracted from goldensun/asm/rom_8a000/rom_91584_c_c_a_c_c_c.s.
 *
 * Total .text for this TU = 64 bytes (= 0x40).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_91584_c_c_a_c_c_c_a.o and asm/rom_8a000/rom_91584_c_c_a_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern int GetFieldActor(int actorID);
extern void _Func_800c4ac(void);
extern void _Actor_SetAnim(int a, int b);
extern void _Actor_TravelTo(int a, int b, int c, int d);

void Func_80922c4(int actorID, int dx, int dy) {
    unsigned char *base;

    base = (unsigned char *)GetFieldActor(actorID);
    if (base != (unsigned char *)0) {
        *(unsigned char *)(base + 0x5b) = 0;
        _Func_800c4ac();
        _Actor_SetAnim((int)base, 2);
        _Actor_TravelTo((int)base,
                      *(int *)(base + 8) + (dx << 16),
                      *(int *)(base + 0xc),
                      *(int *)(base + 0x10) + (dy << 16));
    }
}
