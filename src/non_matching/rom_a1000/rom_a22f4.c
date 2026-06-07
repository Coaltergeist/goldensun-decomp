/* Func_80a22f4  [rom_a1000]
 * Source asm: goldensun/asm/rom_a1000/rom_a1814_c_a_a_c.s
 *
 * Parked: logic faithful, does NOT byte-match. HAND-ONLY (idiom mismatch, not a
 * schedule the permuter can reach).
 * Candidate: tools/runs/run_20260606T194103Z/Func_80a22f4-iter-5.c
 * TODO(residual): the ROM does NOT call a DMA copy helper — it writes the DMA3
 *   registers inline as two 3-word block stores:
 *       ldr r3,=0x040000d4        ; &REG_DMA3SAD
 *       stmia r3!,{src,dst,cnt}   ; SAD/DAD/CNT, then subs r3,#12 to rewind
 *       adds r1,#28               ; reuse dst (0x50001c0 -> 0x50001dc)
 *       stmia r3!,{src,dst,cnt}
 *   Needs the raw DMA3 register-struct idiom (memory: §9 DMA3), e.g. a
 *   `struct { const void*src; void*dst; u32 cnt; } *d = (void*)0x040000d4;` written
 *   field-by-field so gcc fuses to stmia, with the dst pointer reused across both.
 */
extern void DMA3_COPY16(void *src, void *dst, unsigned int control);

void Func_80a22f4(void) {
    DMA3_COPY16((void *)0x5000200, (void *)0x50001c0, 0x80000010);
    DMA3_COPY16((void *)0x50001e8, (void *)(0x50001c0 + 0x1c), 0x80000001);
}
