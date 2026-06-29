/* Cluster OvlFunc_948_20099cc..OvlFunc_948_20099cc extracted from goldensun/asm/overlays/rom_7d30e0/ovl_30_c_c_a_a.s.
 *
 * Total .text for this TU = 28 bytes (= 0x1c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7d30e0/ovl_30_c_c_a_a_a.o and asm/overlays/rom_7d30e0/ovl_30_c_c_a_a_c.o in
 * goldensun/overlays/rom_7d30e0/overlay.ld.
 */
extern void OvlFunc_948_2009b60(void);

void OvlFunc_948_20099cc(void)
{
    unsigned char *p;
    p = __MapActor_GetActor(0);
    if (*(unsigned short *)(p + 6) == 0) {
        __Func_8093c00();
    } else {
        OvlFunc_948_2009b60();
    }
}
