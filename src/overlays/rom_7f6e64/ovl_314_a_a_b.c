/* Cluster OvlFunc_969_2008400..OvlFunc_969_2008400 extracted from goldensun/asm/overlays/rom_7f6e64/ovl_314_a_a.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7f6e64/ovl_314_a_a_a.o and asm/overlays/rom_7f6e64/ovl_314_a_a_c.o in
 * goldensun/overlays/rom_7f6e64/overlay.ld.
 */
void OvlFunc_969_2008400(unsigned char *p)
{
    unsigned char *q;
    unsigned short h;
    int a;
    int b;

    q = *(unsigned char **)(p + 0x50);
    a = 0xffff;
    h = *(unsigned short *)(q + 0x1e);
    if ((int)((h + a) << 16) < 0) {
        b = 0xfffff600;
        *(unsigned short *)(q + 0x1e) = h + b;
    }
}
