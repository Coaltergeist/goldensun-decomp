/* Cluster OvlFunc_922_2009f58..OvlFunc_922_2009f58 extracted from goldensun/asm/overlays/rom_7a8c8c/ovl_30_c_c_c_c_c_c.s.
 *
 * Total .text for this TU = 84 bytes (= 0x54).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a8c8c/ovl_30_c_c_c_c_c_c_a.o and asm/overlays/rom_7a8c8c/ovl_30_c_c_c_c_c_c_c.o in
 * goldensun/overlays/rom_7a8c8c/overlay.ld.
 */
extern unsigned char *iwram_3001ebc;

void OvlFunc_922_2009f58(void) {
    int r0;
    unsigned char *b;
    unsigned short *addr;
    unsigned short v;

    __CutsceneStart();
    r0 = __GetFlag(0x820);
    if (r0 != 0) {
        __Func_801776c(0x17e5, 1);
    } else {
        __Func_801776c(0x17e4, 1);
        r0 = __CheckPartyItem(0xe6);
        if (r0 != -1) {
            b = iwram_3001ebc;
            addr = (unsigned short *)(b + (0xb9 << 1));
            v = 1;
            *addr = v;
        }
    }
    __CutsceneEnd();
}
