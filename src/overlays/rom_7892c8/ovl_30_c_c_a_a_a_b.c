/* Cluster OvlFunc_888_2008574..OvlFunc_888_2008574 extracted from goldensun/asm/overlays/rom_7892c8/ovl_30_c_c_a_a_a.s.
 *
 * Total .text for this TU = 88 bytes (= 0x58).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7892c8/ovl_30_c_c_a_a_a_a.o and asm/overlays/rom_7892c8/ovl_30_c_c_a_a_a_c.o in
 * goldensun/overlays/rom_7892c8/overlay.ld.
 */
extern unsigned char iwram_3001ebc[];

void OvlFunc_888_2008574(void) {
    unsigned short *r2;
    unsigned short r3;
    unsigned long long t;
    unsigned long v;

    __CutsceneStart();
    __Func_809280c(10, 0, 0);
    __CutsceneWait(10);
    __MessageID(0x119f);
    __Func_8092c40(10, 0);
    if (__Func_8091c7c(0, 0) == 1) {
        r2 = (unsigned short *)(*(unsigned int *)iwram_3001ebc + (0xec << 1));
        r3 = *r2;
        r3 += 1;
        *r2 = r3;
    }
    t = 10;
    do { t = (unsigned long) t; } while (0);
    v = t;
    __ActorMessage(v, 0);
    __CutsceneEnd();
}
