/* Non-matching drafts: Func_8011568 and Func_801161c
 * (from goldensun/asm/rom_9000/rom_11568_a.s).
 *
 * Both write REG_BG1CNT, then start a DMA3 transfer. In the original ROM gcc-2.96
 * fuses the DMA3 register base into the BG1CNT pointer it already holds in r3:
 *
 *     ldr   r3, =REG_BG1CNT     ; r3 = 0x0400000a
 *     strh  r2, [r3]
 *     add   r3, #0xca           ; r3 -> REG_DMA3SAD (0x040000d4)
 *     stmia r3!, {r0, r1, r2}
 *     sub   r3, #0xc
 *
 * The dma.h DMA3_COPY helper pins its base with `register r3 = 0x040000D4`, which
 * forces a fresh `ldr r3, =0x040000d4` pool load instead of the `add r3, #0xca`
 * register reuse, so the helper cannot reproduce the shared-base form. Left as
 * idiomatic (non-matching) C; the sole divergence is the DMA3 base computation.
 */
#include "gba/io.h"
#include "dma.h"

extern unsigned char ewram_2010000[];
extern unsigned char ewram_2038000[];

void Func_8011568(void) {
    REG_BG1CNT = 0x682;
    DMA3_COPY(ewram_2010000, (void *)0x6006a00, 0x9600);
}

void Func_801161c(void) {
    REG_BG1CNT = 0x501;
    DMA3_COPY(ewram_2038000, (void *)0x6008000, 0x8000);
}
