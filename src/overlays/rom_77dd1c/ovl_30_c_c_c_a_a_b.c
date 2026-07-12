// fakematch
/* Cluster OvlFunc_882_2008240..OvlFunc_882_2008240 extracted from goldensun/asm/overlays/rom_77dd1c/ovl_30_c_c_c_a_a.s.
 *
 * Total .text for this TU = 56 bytes (= 0x38).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_77dd1c/ovl_30_c_c_c_a_a_a.o and asm/overlays/rom_77dd1c/ovl_30_c_c_c_a_a_c.o in
 * goldensun/overlays/rom_77dd1c/overlay.ld.
 */
extern unsigned char L578a[] __asm__(".L578a");

void OvlFunc_882_2008240(void)
{
    __PlaySound(0x9e);
    {
        register unsigned char *rq __asm__("r0") = L578a;
        __asm__ volatile ("" : : "r" (rq));
        __Func_8010560(rq, 0x36, 0x20);
    }
    __Func_809218c(0, 0xcb << 1, 0x2d7);
    __CutsceneWait(3);
    OvlFunc_882_200815c(5);
}
