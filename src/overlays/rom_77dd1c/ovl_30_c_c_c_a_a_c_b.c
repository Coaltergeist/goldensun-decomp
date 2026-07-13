// fakematch
/* Cluster OvlFunc_882_2008278..OvlFunc_882_2008278 extracted from goldensun/asm/overlays/rom_77dd1c/ovl_30_c_c_c_a_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_77dd1c/ovl_30_c_c_c_a_a_c_a.o and asm/overlays/rom_77dd1c/ovl_30_c_c_c_a_a_c_c.o in
 * goldensun/overlays/rom_77dd1c/overlay.ld.
 */
extern unsigned char L57a0[] __asm__(".L57a0");
extern void OvlFunc_882_200950c(void);
extern void OvlFunc_882_200815c(int a);

void OvlFunc_882_2008278(void)
{
    unsigned int f = 0x206;
    __asm__ ("" : "+r" (f));
    if (!__GetFlag(f)) {
        __PlaySound(0x9e);
        __Func_8010560(L57a0, 0x2d, 0x27);
    }
    if (!__GetFlag(0x835) && !__GetFlag(0x831)) {
        OvlFunc_882_200950c();
        __SetFlag(0x206);
    } else {
        unsigned int w = 0x83;
        {
            register unsigned int rq __asm__("r0") = 0;
            __asm__ volatile ("" : : "r" (rq));
            w <<= 1;
            __Func_809218c(rq, w, 0x325);
        }
        __CutsceneWait(3);
        OvlFunc_882_200815c(6);
    }
}
