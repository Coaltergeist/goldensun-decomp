// fakematch
/* Cluster OvlFunc_901_2008e90..OvlFunc_901_2008e90 extracted from goldensun/asm/overlays/rom_797990/ovl_314_c_c_a_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_797990/ovl_314_c_c_a_c_a_a.o and asm/overlays/rom_797990/ovl_314_c_c_a_c_a_c.o in
 * goldensun/overlays/rom_797990/overlay.ld.
 */
extern unsigned char *iwram_3001ebc;

void OvlFunc_901_2008e90(void) {
    int r0;
    unsigned char *b;
    unsigned short *addr;
    unsigned short v;

    __CutsceneStart();
    __MessageID(0x1342);

    {
        unsigned short t = 0x12;
        do { t = (unsigned short) t; } while (0);
        __MapActor_SetAnim(t, 0);
    }

    {
        register unsigned int a2 __asm__("r2") = 0;
        register unsigned int a1 __asm__("r1") = 0;
        register unsigned int a0 __asm__("r0") = 0x12;
        __asm__ volatile ("" : : "r"(a2), "r"(a1), "r"(a0));
        __Func_8092848(a0, a1, a2);
    }

    __CutsceneWait(2);

    {
        register unsigned int rp __asm__("r0") = 0x12;
        __asm__ volatile ("" : : "r" (rp));
        __ActorMessage(rp, 0);
    }

    __MapActor_SetAnim(0x12, 1);
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
