/* Func_801e71c == SetTextColor(u8 color)  [rom_15000]
 * Source asm: goldensun/asm/rom_15000/rom_1de5c_c_a.s
 *
 * Logic is faithful; this does NOT yet byte-match. Single residual diff:
 * the ROM loads the mask 0xf from its literal pool (`ldr r2,.L1e72c; ands r0,r2`)
 * even though 0xf fits an imm8, whereas gcc-2.96 here emits the cheaper
 * `movs r3,#15; ands`. That movs-vs-pool choice cascades into a different
 * register assignment and pool order. The int param is required (a u8 param
 * makes gcc mask via lsl#24 shifts); the residual pooling of 0xf is the wall.
 */
extern unsigned char *iwram_3001e8c;

void Func_801e71c(int color) {
    unsigned char *base = iwram_3001e8c;
    int masked = color & 0xf;
    *(unsigned short *)(base + 0xeae) = masked;
}
