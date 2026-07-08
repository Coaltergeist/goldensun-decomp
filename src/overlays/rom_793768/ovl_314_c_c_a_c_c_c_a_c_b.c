/* Cluster OvlFunc_898_2008b98..OvlFunc_898_2008b98 extracted from goldensun/asm/overlays/rom_793768/ovl_314_c_c_a_c_c_c_a_c.s.
 *
 * Total .text for this TU = 84 bytes (= 0x54).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_793768/ovl_314_c_c_a_c_c_c_a_c_a.o and asm/overlays/rom_793768/ovl_314_c_c_a_c_c_c_a_c_c.o in
 * goldensun/overlays/rom_793768/overlay.ld.
 */
extern void OvlFunc_898_200973c(int a, int b, int c);
extern unsigned int iwram_3001ebc;

void OvlFunc_898_2008b98(void)
{
    unsigned short *p;
    unsigned long long t2;
    unsigned long v2;

    __CutsceneStart();
    __MessageID(0x133f);
    OvlFunc_898_200973c(0x12, 0, 2);
    __Func_8092c40(0x12, 0);
    if (__Func_8091c7c(0, 0)) {
        p = (unsigned short *)(iwram_3001ebc + (0xec << 1));
        *p = *p + 1;
    }
    t2 = 0x12;
    do { t2 = (unsigned long) t2; } while (0);
    v2 = t2;
    __ActorMessage(v2, 0);
    __CutsceneEnd();
}
