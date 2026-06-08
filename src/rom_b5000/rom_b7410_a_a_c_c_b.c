/* Cluster Func_80b7b30..Func_80b7b30 extracted from goldensun/asm/rom_b5000/rom_b7410_a_a_c_c.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_b5000/rom_b7410_a_a_c_c_a.o and asm/rom_b5000/rom_b7410_a_a_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int *Func_80b7dd0(void);
extern void _DeleteSprite(void);
extern unsigned int Func_80b7f70(unsigned int a, unsigned int b);

void Func_80b7b30(void) {
    unsigned int *actor;
    unsigned int r5;
    unsigned int r6;

    actor = Func_80b7dd0();
    if (actor == (unsigned int *)0) {
        return;
    }
    r5 = actor[0];
    if (r5 == 0) {
        return;
    }
    actor[8] = 0;
    actor[9] = 0;
    r6 = 0;
    while (Func_80b7f70(r5, r6) != 0) {
        _DeleteSprite();
        r6++;
    }
    *(unsigned char *)((char *)r5 + 0x54) = 0;
    *(unsigned int *)((char *)r5 + 0x50) = 0;
}
