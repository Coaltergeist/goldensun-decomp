/* Cluster OvlFunc_954_2008134..OvlFunc_954_2008134 extracted from goldensun/asm/overlays/rom_7db0c8/ovl_30_c_c_a_a_a.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7db0c8/ovl_30_c_c_a_a_a_a.o and asm/overlays/rom_7db0c8/ovl_30_c_c_a_a_a_c.o in
 * goldensun/overlays/rom_7db0c8/overlay.ld.
 */
extern unsigned char L441c[] __asm__(".L441c");
extern void OvlFunc_954_200804c(void);

void OvlFunc_954_2008134(void)
{
    *(int *)L441c = 0;
    __StopTask(OvlFunc_954_200804c);
    ((void (*)(void))OvlFunc_954_200804c)();
}
