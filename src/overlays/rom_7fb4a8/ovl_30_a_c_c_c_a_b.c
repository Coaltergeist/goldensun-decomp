/* Cluster OvlFunc_971_2008340..OvlFunc_971_2008340 extracted from goldensun/asm/overlays/rom_7fb4a8/ovl_30_a_c_c_c_a.s.
 *
 * Total .text for this TU = 88 bytes (= 0x58).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7fb4a8/ovl_30_a_c_c_c_a_a.o and asm/overlays/rom_7fb4a8/ovl_30_a_c_c_c_a_c.o in
 * goldensun/overlays/rom_7fb4a8/overlay.ld.
 */
extern unsigned char iwram_3001ebc[];
extern void OvlFunc_971_2008128(int a);

unsigned int OvlFunc_971_2008340(void) {
    unsigned int r5;
    unsigned short *p;
    unsigned short v;

    r5 = *(unsigned int *)iwram_3001ebc;
    OvlFunc_971_2008128(4);
    __ClearFlag(0x80 << 2);
    __ClearFlag(0x203);
    __CutsceneStart();
    p = (unsigned short *)(r5 + (0xc1 << 1));
    v = 0;
    *p = v;
    __MessageID(0x2927);
    __Func_8092c40(8, 0);
    __ClearFlag(0x205);
    return __CutsceneEnd();
}
