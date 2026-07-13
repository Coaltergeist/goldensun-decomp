// fakematch
/* Cluster OvlFunc_884_200887c..OvlFunc_884_200887c extracted from goldensun/asm/overlays/rom_784360/ovl_30_c_a_a_a_c_c_c_c_c_c.s.
 *
 * Total .text for this TU = 48 bytes (= 0x30).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_784360/ovl_30_c_a_a_a_c_c_c_c_c_c_a.o and asm/overlays/rom_784360/ovl_30_c_a_a_a_c_c_c_c_c_c_c.o in
 * goldensun/overlays/rom_784360/overlay.ld.
 */
extern unsigned char L3eb4[] __asm__(".L3eb4");
extern void OvlFunc_884_2008714(int a);

void OvlFunc_884_200887c(void)
{
    __PlaySound(0x9e);
    {
        register unsigned char *rp __asm__("r0") = L3eb4;
        __asm__ volatile ("" : : "r" (rp));
        __Func_8010560(rp, 0x23, 0x24);
    }
    {
        register unsigned int rq __asm__("r0") = 0;
        register unsigned int r1v __asm__("r1") = 0x66;
        __asm__ volatile ("" : : "r" (rq), "r" (r1v));
        __Func_809218c(rq, r1v, 0x263);
    }
    OvlFunc_884_2008714(6);
}
