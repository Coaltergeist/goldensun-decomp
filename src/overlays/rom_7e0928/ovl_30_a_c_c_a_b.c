/* Cluster OvlFunc_956_2008188..OvlFunc_956_2008188 extracted from goldensun/asm/overlays/rom_7e0928/ovl_30_a_c_c_a.s.
 *
 * Total .text for this TU = 44 bytes (= 0x2c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7e0928/ovl_30_a_c_c_a_a.o and asm/overlays/rom_7e0928/ovl_30_a_c_c_a_c.o in
 * goldensun/overlays/rom_7e0928/overlay.ld.
 */
extern unsigned char L5484[] __asm__(".L5484");
extern unsigned char L5480[] __asm__(".L5480");
extern void OvlFunc_956_200804c(void);

void OvlFunc_956_2008188(void)
{
    void (*r5)(void);

    *(int *)L5484 = 0;
    r5 = OvlFunc_956_200804c;
    *(int *)L5480 = 0;
    __StopTask(r5);
    r5();
}
