/* Cluster OvlFunc_911_200a6a4..OvlFunc_911_200a6a4 extracted from goldensun/asm/overlays/rom_79e5c0/ovl_30_c.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_79e5c0/ovl_30_c_a.o and asm/overlays/rom_79e5c0/ovl_30_c_c.o in
 * goldensun/overlays/rom_79e5c0/overlay.ld.
 */
extern int __Func_80929d8(int a, int b);
extern unsigned int iwram_3001e40;

unsigned int OvlFunc_911_200a6a4(int a)
{
    if ((iwram_3001e40 >> 1) & 1) {
        __Func_80929d8(a, 0xa);
    } else {
        __Func_80929d8(a, 7);
    }
    return 0;
}
