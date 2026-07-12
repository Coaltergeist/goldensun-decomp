/* Cluster OvlFunc_885_2008ba8..OvlFunc_885_2008ba8 extracted from goldensun/asm/overlays/rom_78603c/ovl_30_c_c_a_c_a.s.
 *
 * Total .text for this TU = 56 bytes (= 0x38).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_78603c/ovl_30_c_c_a_c_a_a.o and asm/overlays/rom_78603c/ovl_30_c_c_a_c_a_c.o in
 * goldensun/overlays/rom_78603c/overlay.ld.
 */
// fakematch
extern unsigned char L20ac[] __asm__(".L20ac");

void OvlFunc_885_2008ba8(void)
{
    if (!__GetFlag(0x242)) {
        __PlaySound(0x9e);
        __Func_8010560(L20ac, 0x2b, 8);
    }
    {
        register unsigned int rq __asm__("r0") = 0;
        __asm__ volatile ("" : : "r" (rq));
        __Func_809218c(rq, 0xe5, 0xd9);
    }
    __Func_8091e9c(3);
}
