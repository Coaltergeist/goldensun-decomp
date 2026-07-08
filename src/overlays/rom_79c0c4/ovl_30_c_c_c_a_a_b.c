// fakematch
/* Cluster OvlFunc_908_20081e0..OvlFunc_908_20081e0 extracted from goldensun/asm/overlays/rom_79c0c4/ovl_30_c_c_c_a_a.s.
 *
 * Total .text for this TU = 112 bytes (= 0x70).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_79c0c4/ovl_30_c_c_c_a_a_a.o and asm/overlays/rom_79c0c4/ovl_30_c_c_c_a_a_c.o in
 * goldensun/overlays/rom_79c0c4/overlay.ld.
 */
// fakematch
extern unsigned char *iwram_3001ebc;

void OvlFunc_908_20081e0(void)
{
    unsigned short *p;
    int r;
    unsigned short u;
    unsigned long long t2;
    unsigned long v2;
    unsigned int w;

    __CutsceneStart();
    __MessageID(0x13f0);
    u = 0x18;
    do { u = (unsigned short) u; } while (0);
    __Func_8093040(u, 0, 0x14);
    __Func_809280c(0x18, 0, 0);
    __CutsceneWait(10);
    __Func_8092c40(0x18, 0);
    r = __Func_8091c7c(0, 0);
    if (r != 0) {
        p = (unsigned short *)(iwram_3001ebc + (0xec << 1));
        *p = *p + 1;
    }
    t2 = 0x18;
    do { t2 = (unsigned long) t2; } while (0);
    v2 = t2;
    __ActorMessage(v2, 0);
    w = 0x80;
    {
        register unsigned int rq __asm__("r0") = 0x18;
        __asm__ volatile ("" : : "r" (rq));
        w <<= 7;
        __Func_8092adc(rq, w, 10);
    }
    __CutsceneEnd();
}
