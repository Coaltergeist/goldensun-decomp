/* Func_80251d4  [rom_15000]
 * Source asm: goldensun/asm/rom_15000/rom_23178_a_a.s
 *
 * Parked: logic faithful, does NOT byte-match (endgame permuter seed).
 * Candidate: tools/runs/run_20260607T010203Z/Func_80251d4-iter-10.c
 * TODO(residual): reg-alloc/scheduling divergence (register swap / op-order); logic correct. Permuter seed.
 */
#include "dma.h"

void Func_80251d4(unsigned int src, unsigned int dst)
{
    DMA3_COPY(((src & 0x3ff) << 5) + (0xc0 << 19),
              ((dst & 0x3ff) << 5) + (0xc0 << 19), 0x20);
}
