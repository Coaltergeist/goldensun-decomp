/* Cluster OvlFunc_932_200aeec..OvlFunc_932_200aeec extracted from goldensun/asm/overlays/rom_7b9cb4/ovl_30_a_c_c_a_c_c.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b9cb4/ovl_30_a_c_c_a_c_c_a.o and asm/overlays/rom_7b9cb4/ovl_30_a_c_c_a_c_c_c.o in
 * goldensun/overlays/rom_7b9cb4/overlay.ld.
 */
extern unsigned char L51b0[] __asm__(".L51b0");

void OvlFunc_932_200aeec(void)
{
    unsigned int *p;
    unsigned int v;

    p = (unsigned int *)L51b0;
    v = *p + 1;
    *p = v;
    if (v != 0x3c) {
        return;
    }
    __PlaySound(0xb7);
    *p = 0;
}
