/* Cluster OvlFunc_948_2009c28..OvlFunc_948_2009c28 extracted from goldensun/asm/overlays/rom_7d30e0/ovl_30_c_c_a_a_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7d30e0/ovl_30_c_c_a_a_c_c_a.o and asm/overlays/rom_7d30e0/ovl_30_c_c_a_a_c_c_c.o in
 * goldensun/overlays/rom_7d30e0/overlay.ld.
 */
extern void *__MapActor_GetActor(int a);
extern void OvlFunc_948_2009bc4(void);

void OvlFunc_948_2009c28(void)
{
    unsigned char *p;
    int a, b;

    p = (unsigned char *)__MapActor_GetActor(9);
    b = *(int *)(p + 8) / 0x100000;
    a = *(int *)(p + 0x10) / 0x100000;
    if (b == 0x2d && a == 0x2b)
        OvlFunc_948_2009bc4();
}
