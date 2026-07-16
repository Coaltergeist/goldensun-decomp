/* Cluster OvlFunc_895_20083bc..OvlFunc_895_20083bc extracted from goldensun/asm/overlays/rom_78dee8/ovl_30_c_c_a.s.
 *
 * Total .text for this TU = 100 bytes (= 0x64).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_78dee8/ovl_30_c_c_a_a.o and asm/overlays/rom_78dee8/ovl_30_c_c_a_c.o in
 * goldensun/overlays/rom_78dee8/overlay.ld.
 */
extern unsigned char *iwram_3001ebc;

void OvlFunc_895_20083bc(void)
{
    unsigned char *b;
    unsigned short *p;
    unsigned short v;

    __CutsceneStart();
    if (__GetFlag(0x821)) {
        __Func_801776c(0x1034, 1);
    } else if (__GetFlag(0xf02)) {
        b = iwram_3001ebc;
        __Func_801776c(0x1031, 1);
        p = (unsigned short *)(b + (0xb9 << 1));
        v = 1;
        *p = v;
    } else {
        __Func_801776c(0x1031, 1);
    }
    __CutsceneEnd();
}
