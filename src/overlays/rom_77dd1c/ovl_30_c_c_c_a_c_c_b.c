/* Cluster OvlFunc_882_2008360..OvlFunc_882_2008360 extracted from goldensun/asm/overlays/rom_77dd1c/ovl_30_c_c_c_a_c_c.s.
 *
 * Total .text for this TU = 56 bytes (= 0x38).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_77dd1c/ovl_30_c_c_c_a_c_c_a.o and asm/overlays/rom_77dd1c/ovl_30_c_c_c_a_c_c_c.o in
 * goldensun/overlays/rom_77dd1c/overlay.ld.
 */
extern unsigned char L57b6[] __asm__(".L57b6");

void OvlFunc_882_2008360(void)
{
    __PlaySound(0x9e);
    {
        unsigned char *rq = L57b6;
        __Func_8010560(rq, 0x34, 0x4c);
    }
    __Func_809218c(0, 0xbb << 1, 0x4d6);
    __CutsceneWait(3);
    OvlFunc_882_200815c(9);
}
