/* Cluster OvlFunc_908_2008250..OvlFunc_908_2008250 extracted from goldensun/asm/overlays/rom_79c0c4/ovl_30_c_c_c_a_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_79c0c4/ovl_30_c_c_c_a_a_c_a.o and asm/overlays/rom_79c0c4/ovl_30_c_c_c_a_a_c_c.o in
 * goldensun/overlays/rom_79c0c4/overlay.ld.
 */
// fakematch
extern unsigned char *iwram_3001ebc;

void OvlFunc_908_2008250(void)
{
    unsigned short *p;
    unsigned int w;

    __CutsceneStart();
    __MessageID(0x13f6);
    __Func_809280c(0x1b, 0, 0);
    __CutsceneWait(10);
    __Func_8092c40(0x1b, 0);
    if (__Func_8091c7c(0, 0) != 0) {
        p = (unsigned short *)(iwram_3001ebc + (0xec << 1));
        *p = *p + 1;
    }
    {
        register unsigned int rq __asm__("r0") = 0x1b;
        __asm__ volatile ("" : : "r" (rq));
        __ActorMessage(rq, 0);
    }
    w = 0x80;
    {
        register unsigned int rq __asm__("r0") = 0x1b;
        __asm__ volatile ("" : : "r" (rq));
        w <<= 7;
        __Func_8092adc(rq, w, 10);
    }
    __CutsceneEnd();
}
