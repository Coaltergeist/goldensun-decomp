/* Func_8019d0c  [rom_15000]
 * Source asm: goldensun/asm/rom_15000/rom_1908c_c_c.s
 *
 * Writes 0x3e7 to two adjacent u16 fields at iwram_3001e8c[0x12ec] and [0x12ee].
 * Logic is faithful; this does NOT yet byte-match. The residual diff is pure
 * scheduling / pool-ordering: the ROM keeps the offset in its own register and
 * delays the global deref until AFTER the offset load, then mutates the offset
 * (add r0,#2) and recomputes base+off for the second store:
 *
 *     ldr  r3, =iwram_3001e8c
 *     ldr  r0, =0x12ec          ; offset materialized before the deref
 *     ldr  r3, [r3]             ; deref delayed
 *     ldr  r2, .L19d20  @ 0x3e7
 *     add  r1, r3, r0           ; base + off
 *     add  r0, #2               ; off += 2 (mutate the offset reg)
 *     strh r2, [r1]
 *     add  r1, r3, r0           ; recompute base + off
 *     strh r2, [r1]
 *
 * gcc-2.96 derefs the global immediately instead, shifting the pool order
 * (extra `ldr r3,[pc,#20]` at a different position). Not reachable by rewriting
 * the C; 0x3e7 is a plain pooled constant (no =.L cross-ref), so this is a good
 * permuter candidate. Left as idiomatic (non-matching) C until then.
 */
extern unsigned char *iwram_3001e8c;

void Func_8019d0c(void) {
    unsigned char *base = iwram_3001e8c;
    int off = 0x12ec;
    *(unsigned short *)(base + off) = 0x3e7;
    off += 2;
    *(unsigned short *)(base + off) = 0x3e7;
}
