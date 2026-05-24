/* Standard LCG (multiplier 0x41c64e6d, increment 0x3039). The implicit
 * u16 truncation of (state >> 8) is what produces the lsl #8 / lsr #16
 * tail in the asm. */

extern unsigned iwram_1cb4;

/* FF: u16 Random(void) */
unsigned short Func_4458(void) {
    unsigned my_state = iwram_1cb4 * 0x41C64E6D + 12345;
    iwram_1cb4 = my_state;
    return my_state >> 8;
}
