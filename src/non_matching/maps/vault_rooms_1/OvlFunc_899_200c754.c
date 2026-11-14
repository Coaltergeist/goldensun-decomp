/*
 * Remaining diff (1 instruction + scratch register permutation r2<->r4):
 * Target ASM contains a second `ldrb r3, [r0]` (`best_idx = *node`) after
 * `if (node[0] != 0xff && diff < min_diff)`, whereas `18.greg` (`reload_cse_regs`)
 * eliminates the reload into `r3` because `(zero_extend:SI (mem:QI (reg 0)))` is
 * still live in `r3` from `node[0] != 0xff`.
 */
extern unsigned char Lm899_4f2c[] __asm__(".Lm899_4f2c");

unsigned char *OvlFunc_899_200c754(unsigned char *node, unsigned short *angle)
{
    unsigned int i;
    int min_diff = 0x8000;
    int best_idx = -1;
    short best_angle = *angle;
    unsigned char *result;

    node += 4;
    for (i = 0; i <= 2; i++, node += 4) {
        int diff;
        unsigned short a = node[1] << 8;
        diff = (short)(a - *angle);
        if (diff < 0) {
            diff = -diff;
        }
        if (node[0] != 0xff && diff < min_diff) {
            min_diff = diff;
            best_idx = *node;
            best_angle = a;
        }
    }

    result = 0;
    if (best_idx != -1) {
        *angle = best_angle;
        result = &Lm899_4f2c[best_idx * 16];
    }
    return result;
}
