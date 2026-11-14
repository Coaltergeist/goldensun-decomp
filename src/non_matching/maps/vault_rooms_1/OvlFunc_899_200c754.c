/*
 * Remaining diff (1 instruction):
 * Target ASM contains a redundant `ldrb r3, [r0]` (`best_idx = node[0]`) after
 * `if (node[0] != 0xff && diff < min_diff)` because `18.greg` (`reload_cse_regs`)
 * eliminates the second `ldrb r3, [r0]` in clean C when `node[0]` is already in `r3`.
 */
extern unsigned char Lm899_4f2c[] __asm__(".Lm899_4f2c");

unsigned char *OvlFunc_899_200c754(unsigned char *node, unsigned short *angle)
{
    unsigned char *result;
    int best_idx = -1;
    short best_angle = *angle;
    int min_diff;
    unsigned int i;
    int diff;

    node += 4;
    min_diff = 0x8000;
    for (i = 0; i <= 2; i++, node += 4) {
        short a = node[1] << 8;
        diff = (short)((unsigned short)a - *angle);
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
