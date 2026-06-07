/* OvlFunc_919_20081d4  [ovl_7a67d8]
 * Source asm: goldensun/asm/overlays/rom_7a67d8/ovl_30_c.s
 *
 * Parked: logic faithful, does NOT byte-match (endgame permuter seed).
 * Candidate: tools/runs/run_20260607T031612Z/OvlFunc_919_20081d4-iter-3.c
 * TODO(residual): overlay .bss reconstruction: writes two overlay-local .bss globals at .bss+8/.bss+0x28; candidate uses extern Data_8/Data_28, only reloc names differ. Needs overlay .bss symbol map. (iter-4 'passed' judge via fabricated static arrays = reloc-blindspot; not a real match.)
 */
extern unsigned int iwram_3001ae8;
extern unsigned int iwram_3001b04;
extern unsigned short Data_8[2];
extern unsigned short Data_28[];
extern void __Func_8005ee0(unsigned short *, unsigned short *);

void OvlFunc_919_20081d4(void) {
    Data_8[0] = iwram_3001ae8;
    Data_8[1] = iwram_3001b04;
    __Func_8005ee0(Data_8, Data_28);
}
