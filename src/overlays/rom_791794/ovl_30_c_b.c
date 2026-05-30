/* Cluster OvlFunc_897_2008f54..OvlFunc_897_2008f54 extracted from goldensun/asm/overlays/rom_791794/ovl_30_c.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_791794/ovl_30_c_a.o and asm/overlays/rom_791794/ovl_30_c_c.o in
 * goldensun/overlays/rom_791794/overlay.ld.
 */
unsigned int OvlFunc_897_2008f54(unsigned int arg0) {
    unsigned short val;
    unsigned int ptr;

    val = *((unsigned short *)((char *)arg0 + 6));
    ptr = *((unsigned int *)((char *)arg0 + 0x50));
    val += 0x4000;
    *((unsigned short *)((char *)ptr + 0x1e)) = val;
    return 1;
}
