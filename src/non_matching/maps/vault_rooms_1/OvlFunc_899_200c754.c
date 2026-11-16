/*
 * Remaining diff (-2 bytes code + 2-byte .short 0x0000 alignment = -4 bytes total;
 * single missing instruction, 0 reorderings):
 * - Target ASM contains a second `ldrb r3, [r0]` (`best_idx = node[0]`) at +0x38 after
 *   `if (node[0] != 0xff && diff < min_diff)`, whereas `18.greg` (`reload_cse_regs_1`)
 *   eliminates the reload into `r3` because `(zero_extend:SI (mem:QI (reg 0)))` is
 *   still live in `r3` from `node[0] != 0xff` (+0x2e) with no intervening clobber or label.
 * - All other instructions (+0x00..+0x36 and +0x3a..+0x64, including +0x12..+0x14 and
 *   +0x52..+0x5a) match byte-for-byte.
 */
extern unsigned char Lm899_4f2c[] __asm__(".Lm899_4f2c");

unsigned char *OvlFunc_899_200c754(unsigned char *node, short *angle)
{
    unsigned int i;
    int best_idx = -1;
    short best_angle = *angle;
    int min_diff;

    node += 4;
    min_diff = 0x8000;
    for (i = 0; i <= 2; i++, node += 4) {
        int diff;
        unsigned short a = node[1] << 8;
        diff = (short)(a - *angle);
        if (diff < 0) {
            diff = -diff;
        }
        if (node[0] != 0xff && diff < min_diff) {
            min_diff = diff;
            best_idx = node[0];
            best_angle = a;
        }
    }

    if (best_idx == -1) {
        return 0;
    }
    *angle = best_angle;
    return &Lm899_4f2c[best_idx * 16];
}
