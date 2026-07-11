/* Cluster OvlFunc_926_2009d50..OvlFunc_926_2009d50 extracted from goldensun/asm/overlays/rom_7b2078/ovl_314_c_c_a_c_c_c_a.s.
 *
 * Total .text for this TU = 108 bytes (= 0x6c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b2078/ovl_314_c_c_a_c_c_c_a_a.o and asm/overlays/rom_7b2078/ovl_314_c_c_a_c_c_c_a_c.o in
 * goldensun/overlays/rom_7b2078/overlay.ld.
 */
extern unsigned char iwram_3001ebc[];

void OvlFunc_926_2009d50(void) {
    unsigned short *r2;
    unsigned short r3;
    unsigned short t;

    __CutsceneStart();
    __MessageID(0x186e);
    __Func_8092c40(0x12, 0);
    if (__Func_8091c7c(0, 0) == 0) {
        __CutsceneWait(0x14);
        t = 0x12;
        do { t = (unsigned short) t; } while (0);
        __Func_8093040(t, 0, 0x14);
        __SetFlag(0x898);
        __CutsceneEnd();
    } else {
        r2 = (unsigned short *)(*(unsigned int *)iwram_3001ebc + (0xec << 1));
        r3 = *r2;
        r3 += 1;
        *r2 = r3;
        t = 0x12;
        do { t = (unsigned short) t; } while (0);
        __Func_8093040(t, 0, 0x14);
        __CutsceneEnd();
    }
}
