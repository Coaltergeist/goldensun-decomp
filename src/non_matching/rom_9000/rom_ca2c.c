/* Func_800ca2c  [rom_9000]
 * Source asm: goldensun/asm/rom_9000/rom_ca2c_a.s
 *
 * Parked: logic faithful, does NOT byte-match (endgame permuter seed).
 * Candidate: tools/runs/run_20260606T183812Z/Func_800ca2c-iter-1.c
 * TODO(residual): the `*(u16*)(actor+4) = 0` store materializes 0 via a pooled
 * load (`ldr r3,[pc,#8]` + `.word 0`) instead of the ROM's `movs r3,#0`. Logic
 * is correct; it's a const-synth / reg-alloc divergence. Permuter seed.
 */
unsigned char Func_800ca2c(unsigned char *actor) {
    *(unsigned int *)actor = *(unsigned int *)actor + (*(short *)(actor + 4) << 2) + 4;
    *(unsigned short *)(actor + 4) = 0;
    return 1;
}
