/* Cluster OvlFunc_882_2008328..OvlFunc_882_2008328 extracted from goldensun/asm/overlays/rom_77dd1c/ovl_30_c_c_c_a_c.s.
 *
 * Total .text for this TU = 56 bytes (= 0x38).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_77dd1c/ovl_30_c_c_c_a_c_a.o and asm/overlays/rom_77dd1c/ovl_30_c_c_c_a_c_c.o in
 * goldensun/overlays/rom_77dd1c/overlay.ld.
 */
extern unsigned char L57a0[] __asm__(".L57a0");

void OvlFunc_882_2008328(void)
{
    __PlaySound(0x9e);
    {
        unsigned char *rq = L57a0;
        __Func_8010560(rq, 0x31, 0x45);
    }
    __Func_809218c(0, 0xa3 << 1, 0x466);
    __CutsceneWait(3);
    OvlFunc_882_200815c(8);
}
