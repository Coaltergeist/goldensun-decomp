/* Func_80ad5f4  [rom_a1000]
 * Source asm: goldensun/asm/rom_a1000/rom_ad274_c.s
 *
 * Parked: logic faithful, does NOT byte-match (endgame permuter seed).
 * Candidate: tools/runs/run_20260606T183812Z/Func_80ad5f4-iter-1.c
 * TODO(residual): `ptr[arg0 + 0x91] = arg1` is correct, but the ROM keeps the
 * 0x91<<2 index in its own register and uses a register-indexed store
 * (`str r1,[r3,r0]`), while the candidate folds the offset into the base
 * (`str r1,[r0,#0]`). Addressing-mode / reg-alloc divergence. Permuter seed.
 */
extern unsigned int *iwram_3001f2c;

void Func_80ad5f4(unsigned int arg0, unsigned int arg1)
{
    unsigned int *ptr = (unsigned int *)iwram_3001f2c;
    ptr[arg0 + 0x91] = arg1;
}
