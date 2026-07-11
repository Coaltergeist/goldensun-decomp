/* Cluster OvlFunc_898_20086d0..OvlFunc_898_20086d0 extracted from goldensun/asm/overlays/rom_793768/ovl_314_c_c_a_c_a_c_a_c.s.
 *
 * Total .text for this TU = 84 bytes (= 0x54).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_793768/ovl_314_c_c_a_c_a_c_a_c_a.o and asm/overlays/rom_793768/ovl_314_c_c_a_c_a_c_a_c_c.o in
 * goldensun/overlays/rom_793768/overlay.ld.
 */
extern unsigned char *iwram_3001ebc;
extern void OvlFunc_898_200973c(int, int, int);

void OvlFunc_898_20086d0(void) {
    unsigned short *p;
    unsigned long long t;
    unsigned long v;

    __CutsceneStart();
    __MessageID(0x122f);
    OvlFunc_898_200973c(0x11, 0, 2);
    __Func_8092c40(0x11, 0);
    if (__Func_8091c7c(0, 0)) {
        p = (unsigned short *)(iwram_3001ebc + (0xec << 1));
        *p = *p + 1;
    }
    t = 0x11;
    do { t = (unsigned long) t; } while (0);
    v = t;
    __ActorMessage(v, 0);
    __CutsceneEnd();
}
