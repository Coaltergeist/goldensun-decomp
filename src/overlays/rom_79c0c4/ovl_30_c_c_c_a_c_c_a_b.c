/* Cluster OvlFunc_908_20083f4..OvlFunc_908_20083f4 extracted from goldensun/asm/overlays/rom_79c0c4/ovl_30_c_c_c_a_c_c_a.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_79c0c4/ovl_30_c_c_c_a_c_c_a_a.o and asm/overlays/rom_79c0c4/ovl_30_c_c_c_a_c_c_a_c.o in
 * goldensun/overlays/rom_79c0c4/overlay.ld.
 */
void OvlFunc_908_20083f4(void) {
    unsigned short a;
    int p0, p1, p2;
    __CutsceneStart();
    __MessageID(0x1703);

    a = 0x16;
    do { a = (unsigned short) a; } while (0);
    __ActorMessage(a, 0);

    p2 = 0;
    __asm__ volatile ("" : : "r" (p2));
    p0 = 0x16;
    __asm__ volatile ("" : : "r" (p0));
    p1 = 0;
    __asm__ volatile ("" : : "r" (p1));
    __Func_809280c(p0, p1, p2);

    a = 0x16;
    do { a = (unsigned short) a; } while (0);
    __ActorMessage(a, 0);

    a = 0x16;
    do { a = (unsigned short) a; } while (0);
    __Func_8092adc(a, 0, 0xa);

    __CutsceneEnd();
}
