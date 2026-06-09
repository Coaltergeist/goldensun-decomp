/* OvlFunc_923_2009150  [ovl_7aa430]
 * Source asm: goldensun/asm/overlays/rom_7aa430/ovl_1150.s
 *
 * Parked: logic faithful, does NOT byte-match (endgame permuter seed).
 * Candidate: tools/runs/run_20260607T170736Z/OvlFunc_923_2009150-iter-10.c
 * TODO(residual): overlay data reconstruction: expected .data reloc vs candidate's fabricated Data_2820. Needs overlay .data symbol map. OvlFunc_919 class.
 */
extern void __ClearFlag(int);
extern void __MapActor_SetBehavior(int, void *);
extern int Data_2820;

void OvlFunc_923_2009150(void) {
    __ClearFlag(0x205);
    __MapActor_SetBehavior(8, &Data_2820);
}
