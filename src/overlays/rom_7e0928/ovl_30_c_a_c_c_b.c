/* Cluster OvlFunc_956_2008714..OvlFunc_956_2008714 extracted from goldensun/asm/overlays/rom_7e0928/ovl_30_c_a_c_c.s.
 *
 * Total .text for this TU = 88 bytes (= 0x58).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7e0928/ovl_30_c_a_c_c_a.o and asm/overlays/rom_7e0928/ovl_30_c_a_c_c_c.o in
 * goldensun/overlays/rom_7e0928/overlay.ld.
 */
extern int OvlFunc_956_20086a4(int arg0, int arg1);

int OvlFunc_956_2008714(int arg0, int arg1)
{
    if (OvlFunc_956_20086a4(arg0, arg1 - 0x180000) != 0)
        return -1;
    if (OvlFunc_956_20086a4(arg0, arg1 - 0x80000) != 0)
        return -1;
    if (OvlFunc_956_20086a4(arg0, arg1 + 0x80000) != 0)
        return -1;
    if (OvlFunc_956_20086a4(arg0, arg1 + 0x180000) != 0)
        return -1;
    return 0;
}
