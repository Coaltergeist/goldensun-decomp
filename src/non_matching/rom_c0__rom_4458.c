/* Func_4458 — global LCG PRNG step.
 *
 * Reads the 32-bit state at iwram_1cb4, advances it with the BSD libc
 * constants (multiplier 0x41c64e6d, increment 0x3039), writes it back,
 * and returns the middle 16 bits as the random sample.
 */

extern unsigned int iwram_1cb4;

unsigned int Func_4458(void) {
    unsigned int state = iwram_1cb4;
    iwram_1cb4 = state * 0x41c64e6dU + 0x3039U;
    return (iwram_1cb4 << 8) >> 16;
}
