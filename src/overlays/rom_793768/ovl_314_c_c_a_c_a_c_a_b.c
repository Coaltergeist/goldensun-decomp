/* Cluster OvlFunc_898_2008674..OvlFunc_898_2008674 extracted from goldensun/asm/overlays/rom_793768/ovl_314_c_c_a_c_a_c_a.s.
 *
 * Total .text for this TU = 92 bytes (= 0x5c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_793768/ovl_314_c_c_a_c_a_c_a_a.o and asm/overlays/rom_793768/ovl_314_c_c_a_c_a_c_a_c.o in
 * goldensun/overlays/rom_793768/overlay.ld.
 */
extern unsigned char iwram_3001ebc[];
extern void OvlFunc_898_200973c(int a, int b, int c);

void OvlFunc_898_2008674(void) {
    unsigned short *p;
    unsigned long long t;
    unsigned long long t2;

    __CutsceneStart();
    __MessageID(0x1229);
    t = 0xd;
    do {
        t = (unsigned short) t;
    } while (0);
    __MapActor_SetAnim((unsigned short) t, 1);
    OvlFunc_898_200973c(0xd, 0, 2);
    __Func_8092c40(0xd, 0);
    if (__Func_8091c7c(0, 0)) {
        p = (unsigned short *)(*(unsigned char **)iwram_3001ebc + (0xec << 1));
        *p = *p + 1;
    }
    t2 = 0xd;
    do {
        t2 = (unsigned long) t2;
    } while (0);
    __ActorMessage((unsigned long) t2, 0);
    __CutsceneEnd();
}
