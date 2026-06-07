/* OvlFunc_921_20096ac  [ovl_7a7298]
 * Source asm: goldensun/asm/overlays/rom_7a7298/ovl_30_c_c_c_c_c.s
 *
 * Parked: logic faithful, does NOT byte-match (endgame permuter seed).
 * Candidate: tools/runs/run_20260607T170736Z/OvlFunc_921_20096ac-iter-3.c
 * TODO(residual): overlay data reconstruction: .word reloc is .data (expected) vs .bss (candidate); only the section differs. Needs overlay .data symbol map. Same blindspot class as OvlFunc_919.
 */
extern void __Func_809207c(int, void *);
extern void __Func_8092f84(int, int);

static unsigned char _L25ec_data[0x1fc + 4];

void OvlFunc_921_20096ac(void) {
    __Func_809207c(9, &_L25ec_data[0x1fc]);
    __Func_8092f84(9, 0);
}
