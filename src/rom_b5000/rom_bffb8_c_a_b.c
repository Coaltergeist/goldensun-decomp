/* Cluster Func_80c0eb8..Func_80c0eb8 extracted from goldensun/asm/rom_b5000/rom_bffb8_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_b5000/rom_bffb8_c_a_a.o and asm/rom_b5000/rom_bffb8_c_a_c.o in
 * goldensun/stage1.ld.
 */
/* Func_80c0eb8 @ 0x080c0eb8  [asm/rom_b5000/rom_bffb8_c_a.s]
 *
 * Same {0x10000,0,0,0}x3 stmia block as MatrixReset -- see
 * src/rom_c0/rom_49a8_c_c_c_a_b.c for why this needs the Dma3Raw-style
 * register-asm idiom + empty-asm barriers (the struct-by-value form goes
 * through the stack; 2026-06-10 diag). The original was likely a shared
 * macro/static inline; the definition here must stay identical.
 * Then m[1] = old + m[0], with old read BEFORE the block (m[0] is 0x10000
 * after it). ROM allocation: m -> r5 (live across the r0-clobbering asm),
 * old -> r6, push {r5,r6,lr} only (r4 is call-clobbered via the Makefile
 * -fcall-used-r4).
 */

static inline void MatrixResetRaw(int *dst)
{
    register int *_p __asm__("r0");
    register int _a __asm__("r1");
    register int _b __asm__("r2");
    register int _c __asm__("r3");
    register int _d __asm__("r4");

    __asm__ volatile ("" : : : "r0");
    _p = dst;
    __asm__ volatile ("" : : "r" (_p));
    _a = 0x80;
    _b = 0;
    _c = 0;
    _d = 0;
    _a <<= 9;
    __asm__ volatile (
        "stmia\tr0!, {r1, r2, r3, r4}\n\t"
        "stmia\tr0!, {r1, r2, r3, r4}\n\t"
        "stmia\tr0!, {r1, r2, r3, r4}"
        :
        : "r" (_p), "r" (_a), "r" (_b), "r" (_c), "r" (_d)
        : "r0", "memory"
    );
}

void Func_80c0eb8(int *m)
{
    int old = m[0];

    MatrixResetRaw(m);
    m[1] = old + m[0];
}
