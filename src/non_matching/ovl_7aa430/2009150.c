/* OvlFunc_923_2009150  [ovl_7aa430]
 * Source asm: goldensun/asm/overlays/rom_7aa430/ovl_1150.s
 *
 * Parked: logic faithful, does NOT byte-match (endgame permuter seed).
 * Candidate: tools/runs/run_20260607T170736Z/OvlFunc_923_2009150-iter-10.c
 * TODO(residual): overlay data reconstruction: expected .data reloc vs candidate's fabricated Data_2820. Needs overlay .data symbol map. OvlFunc_919 class.
 */
extern void __Func_8079374(int);
extern void __Func_809207c(int, void *);
extern int Data_2820;

void OvlFunc_923_2009150(void) {
    __Func_8079374(0x205);
    __Func_809207c(8, &Data_2820);
}
