/* Cluster OvlFunc_924_200b600..OvlFunc_924_200b600 extracted from goldensun/asm/overlays/rom_7ac2d8/ovl_35b8_a_a_a_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ac2d8/ovl_35b8_a_a_a_c_c_a.o and asm/overlays/rom_7ac2d8/ovl_35b8_a_a_a_c_c_c.o in
 * goldensun/overlays/rom_7ac2d8/overlay.ld.
 */
extern unsigned char *iwram_3001ebc;

void OvlFunc_924_200b600(void) {
    int r0;
    unsigned char *b;
    unsigned short *addr;
    unsigned short v;

    __CutsceneStart();
    __MapActor_SetAnim(0, 1);
    r0 = __GetFlag(0x881);
    if (r0 == 0) {
        __Func_801776c(0x1636, 1);
    } else {
        __Func_801776c(0x1635, 1);
    }
    r0 = __CheckPartyItem(0xb9);
    if (r0 != -1) {
        b = iwram_3001ebc;
        addr = (unsigned short *)(b + (0xb9 << 1));
        v = 1;
        *addr = v;
    }
    __CutsceneEnd();
}
