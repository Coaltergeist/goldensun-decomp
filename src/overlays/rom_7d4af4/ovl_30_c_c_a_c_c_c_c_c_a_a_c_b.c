// fakematch
/* Cluster OvlFunc_949_2008568..OvlFunc_949_2008568 extracted from goldensun/asm/overlays/rom_7d4af4/ovl_30_c_c_a_c_c_c_c_c_a_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7d4af4/ovl_30_c_c_a_c_c_c_c_c_a_a_c_a.o and asm/overlays/rom_7d4af4/ovl_30_c_c_a_c_c_c_c_c_a_a_c_c.o in
 * goldensun/overlays/rom_7d4af4/overlay.ld.
 */
extern int __MessageID(int);
extern void __ActorMessage(int, int);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __Func_8092adc(int, int, int);
extern void __Func_809259c(int, int);

void OvlFunc_949_2008568(void) {
    unsigned int w;
    unsigned int z;
    __CutsceneStart();
    w = 0x80;
    z = 0;
    {
        register unsigned int rq __asm__("r0") = 0x1a;
        __asm__ volatile ("" : : "r" (rq));
        w <<= 7;
        __Func_8092adc(rq, w, z);
    }
    __Func_809259c(0x1a, 2);
    __MessageID(0x1fa2);
    __ActorMessage(0x1a, 0);
    __CutsceneEnd();
}
