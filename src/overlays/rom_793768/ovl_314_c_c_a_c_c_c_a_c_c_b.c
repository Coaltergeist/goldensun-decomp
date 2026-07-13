/* Cluster OvlFunc_898_2008bec..OvlFunc_898_2008bec extracted from goldensun/asm/overlays/rom_793768/ovl_314_c_c_a_c_c_c_a_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_793768/ovl_314_c_c_a_c_c_c_a_c_c_a.o and asm/overlays/rom_793768/ovl_314_c_c_a_c_c_c_a_c_c_c.o in
 * goldensun/overlays/rom_793768/overlay.ld.
 */
extern void OvlFunc_898_200973c(int a, int b, int c);
extern unsigned char *iwram_3001ebc;

void OvlFunc_898_2008bec(void)
{
    int r0;
    unsigned char *b;
    unsigned short *addr;
    unsigned short v;
    unsigned short t1;
    unsigned short t2;
    unsigned long long t3;
    unsigned long v3;

    __CutsceneStart();
    __MessageID(0x1342);
    t1 = 0x13;
    do { t1 = (unsigned short) t1; } while (0);
    __MapActor_SetAnim(t1, 0);
    t3 = 2;
    do { t3 = (unsigned long) t3; } while (0);
    v3 = t3;
    OvlFunc_898_200973c(0x13, 0, v3);
    t2 = 0x13;
    do { t2 = (unsigned short) t2; } while (0);
    __ActorMessage(t2, 0);
    __MapActor_SetAnim(0x13, 1);
    r0 = __CheckPartyItem(0xe7);
    if (r0 != -1) {
        r0 = __GetFlag(0x858);
        if (r0 == 0) {
            b = iwram_3001ebc;
            addr = (unsigned short *)(b + (0xb9 << 1));
            v = 1;
            *addr = v;
        }
    }
    __CutsceneEnd();
}
