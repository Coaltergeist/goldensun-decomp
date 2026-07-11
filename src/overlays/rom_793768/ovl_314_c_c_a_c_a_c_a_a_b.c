// fakematch
/* Cluster OvlFunc_898_2008614..OvlFunc_898_2008614 extracted from goldensun/asm/overlays/rom_793768/ovl_314_c_c_a_c_a_c_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_793768/ovl_314_c_c_a_c_a_c_a_a_a.o and asm/overlays/rom_793768/ovl_314_c_c_a_c_a_c_a_a_c.o in
 * goldensun/overlays/rom_793768/overlay.ld.
 */
extern unsigned char *iwram_3001ebc;
extern void OvlFunc_898_200973c(int, int, int);

void OvlFunc_898_2008614(void)
{
    unsigned short *p;
    unsigned int w;

    __CutsceneStart();
    __MessageID(0x1223);
    OvlFunc_898_200973c(9, 0, 2);
    __Func_8092c40(9, 0);
    if (__Func_8091c7c(0, 0) != 0) {
        p = (unsigned short *)(iwram_3001ebc + (0xec << 1));
        *p = *p + 1;
    }
    {
        register unsigned int rq __asm__("r0") = 9;
        __asm__ volatile ("" : : "r" (rq));
        __ActorMessage(rq, 0);
    }
    w = 0xa0;
    {
        register unsigned int rq __asm__("r0") = 9;
        __asm__ volatile ("" : : "r" (rq));
        w <<= 7;
        __Func_8092adc(rq, w, 0);
    }
    __CutsceneEnd();
}
