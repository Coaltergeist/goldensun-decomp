/* Cluster MatrixReset..MatrixReset extracted from goldensun/asm/rom_c0/rom_49a8_c_c_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_49a8_c_c_c_a_a.o and asm/rom_c0/rom_49a8_c_c_c_a_c.o in
 * goldensun/stage1.ld.
 */
/* MatrixReset @ 0x08004a94  (was Func_8004a94; renamed by the weekend alias pass)
 * [asm/rom_c0/rom_49a8_c_c_c_a.s]
 *
 * Writes {0x10000,0,0,0} three times via stmia r0!,{r1,r2,r3,r4} (leaf, bx lr,
 * no push -- r4 is call-clobbered in this config). Straight C cannot reach a
 * 4-reg stmia of register-materialized constants: a 16-byte struct local goes
 * through the stack (sub sp,#16 + ldmia/stmia pairs -- see the 2026-06-10
 * diag), and the ROM's THREE distinct zero registers rule out constant-CSE.
 * This is the Dma3Raw idiom family (src/rom_c0/rom_447c_c_b.c): register-asm
 * locals pinned to r0-r4 feeding a volatile asm block. The empty asm barriers
 * pin placement: the leading r0-clobber + the use-barrier on _p force the
 * ldr r3,=Data; adds r0,r3 prelude (gcc otherwise copy-propagates the literal
 * straight into r0), and the split _a <<= 9 puts the lsls after the zero movs.
 *
 * Func_80c0eb8 (src/rom_b5000/rom_bffb8_c_a_b.c) inlines the same block -- the
 * original was likely a shared macro/static inline; keep the two definitions
 * identical.
 */
extern int Data_8000ac0[];

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

void MatrixReset(void)
{
    register int *p __asm__("r3") = Data_8000ac0;

    __asm__ volatile ("" : : "r" (p));
    MatrixResetRaw(p);
}
