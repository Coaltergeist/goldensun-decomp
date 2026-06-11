/* Func_80b09fc  [rom_b0000]
 * Source asm: goldensun/asm/rom_b0000/rom_b0070_a_a_c.s
 *
 * Parked: logic faithful, does NOT byte-match standalone. Registered in
 * unmatchable.txt (class: tu-pool midpool).
 * TODO(residual): two scheduler slots; the pooled-zero load (ldr r6,=0; the
 *   anonymous direct `= 0` HImode/QImode store form DOES pool it, see the
 *   2026-06-11 wave-4 diag) sits one slot late, and the ROM dumps its literal
 *   pool MID-FUNCTION with a skip-branch before the epilogue (b.n; .word 0;
 *   pop) with no loop to anchor the dump. That midpool placement is an
 *   original-TU pool-pressure artifact: a standalone TU always end-pools a
 *   function this small, and the pc-relative offsets then differ. Sibling
 *   Func_80b0a20 (same source file) has the identical b.n-over-pool tail and
 *   will hit the same wall.
 */
struct S {
    unsigned int p;
    unsigned short a;
    unsigned short b;
    unsigned short c;
    unsigned short d;
    unsigned char e;
    unsigned char f;
};

void Func_80b09fc(struct S *arg0, unsigned short arg1, unsigned short arg2, unsigned char arg3)
{
    unsigned short *src;

    src = (unsigned short *)arg0->p;
    arg0->a = src[3];
    arg0->b = src[4];
    arg0->c = arg1;
    arg0->d = arg2;
    arg0->f = arg3;
    arg0->e = 0;
}
