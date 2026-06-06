/* OvlFunc_932_200b410 == ((u16*)iwram_3001ebc)[0xbf] = 0x1018  [overlay rom_7b9cb4]
 * Source asm: goldensun/asm/overlays/rom_7b9cb4/ovl_30_a_c_c_c.s
 *
 * Logic is faithful; this does NOT yet byte-match. Single residual diff:
 * literal-pool ORDER. The ROM lays out the iwram_3001ebc reloc word first and
 * the 0x1018 store-value word second; gcc-2.96 here consistently emits 0x1018
 * first, regardless of source ordering (reading the global first, splitting
 * out the slot address; neither flips it). A pool-ordering quirk; permuter or
 * a structural change may move it.
 */
extern unsigned short *iwram_3001ebc;

void OvlFunc_932_200b410(void) {
    unsigned short *base = iwram_3001ebc;
    unsigned short *slot = &base[0xbf];
    *slot = 0x1018;
}
