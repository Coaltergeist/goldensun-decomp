/* Cluster Func_80b8418..Func_80b8418 extracted from goldensun/asm/rom_b5000/rom_b8228_c_a.s.
 *
 * Total .text for this TU = 68 bytes (= 0x44).
 * Preserves the original ROM layout when slotted between
 * asm/rom_b5000/rom_b8228_c_a_a.o and asm/rom_b5000/rom_b8228_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int *Func_80b7dd0(void);
extern unsigned char *_Func_800b8ac(unsigned int a, unsigned int b);
extern void _Func_800b9f4(unsigned char *p, unsigned int b);
extern void Func_80030f8(unsigned int nframes);

void Func_80b8418(void) {
    unsigned char *actor;
    unsigned char *r5;
    actor = *(unsigned char **)Func_80b7dd0();
    if (actor != (unsigned char *)0 && (*(unsigned char *)(actor + 0x54) & 0xf) == 1) {
        r5 = _Func_800b8ac(*(unsigned int *)(actor + 0x50), 0x11b);
        if (r5 != (unsigned char *)0) {
            _Func_800b9f4(r5, 1);
            *(unsigned char *)(r5 + 6) = 3;
        }
        Func_80030f8(0xa);
    }
}
