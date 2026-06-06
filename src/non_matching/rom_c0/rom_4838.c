/* Func_8004838  [rom_c0]
 * Source asm: goldensun/asm/rom_c0/rom_45e8_c_c.s
 *
 * Parked: logic faithful, does NOT byte-match (endgame permuter seed).
 * Candidate: tools/runs/run_20260606T183812Z/Func_8004838-iter-9.c
 * TODO(residual): two diffs. (1) The ROM is a 16-BIT DMA (control word
 * 0x800000e0), but dma.h DMA3_COPY hardwires the 32-bit flag (0x84000000) ->
 * 0x84000070; needs a DMA16 helper or a hand-built stmia. (2) src is the
 * same-file .rodata local label .L779c (use `extern u16 L779c[] __asm__(".L779c")`
 * so the splitter globalizes it, cf. Func_8185008). The 16-bit DMA is the wall.
 */
#include "dma.h"

extern const unsigned short L779c[];

void Func_8004838(void) {
    DMA3_COPY(L779c, (void *)0x05000200, 0xe0 * 2);
}
