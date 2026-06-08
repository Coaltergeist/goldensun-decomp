/* Cluster Func_8092ab4..Func_8092ab4 extracted from goldensun/asm/rom_8a000/rom_92950_a.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_92950_a_a.o and asm/rom_8a000/rom_92950_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char *GetFieldActor(unsigned int actorID);
extern void _Func_800c4ac(void);
extern void _Actor_SetAnim(unsigned char *actor, int arg1);

void Func_8092ab4(unsigned int actorID) {
    unsigned char *r5;

    r5 = GetFieldActor(actorID);
    if (r5 != 0) {
        *(unsigned int *)(r5 + 0x38) = 0x80 << 24;
        *(unsigned int *)(r5 + 0x3c) = 0x80 << 24;
        *(unsigned int *)(r5 + 0x40) = 0x80 << 24;
        _Func_800c4ac();
        _Actor_SetAnim(r5, 1);
    }
}
