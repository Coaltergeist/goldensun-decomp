/* Cluster Func_80b7e24..Func_80b7e24 extracted from goldensun/asm/rom_b5000/rom_b7410_a_c.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_b5000/rom_b7410_a_c_a.o and asm/rom_b5000/rom_b7410_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_80b7e04(unsigned int);

void Func_80b7e24(unsigned char *p) {
    unsigned int v;

    if (p == (unsigned char *)0)
        return;

    switch (*(unsigned char *)(p + 0x54) & 0xf) {
    case 1:
        Func_80b7e04(*(unsigned int *)(p + 0x50));
        break;
    case 2:
        {
            unsigned int *q;
            int i;

            q = *(unsigned int **)(p + 0x50);
            for (i = 3; i >= 0; i--) {
                v = *q++;
                if (v != 0)
                    Func_80b7e04(v);
            }
        }
        break;
    }
}
