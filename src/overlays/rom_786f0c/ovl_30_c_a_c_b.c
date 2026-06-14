/* Cluster OvlFunc_886_20080fc..OvlFunc_886_20080fc extracted from goldensun/asm/overlays/rom_786f0c/ovl_30_c_a_c.s.
 *
 * Total .text for this TU = 68 bytes (= 0x44).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_786f0c/ovl_30_c_a_c_a.o and asm/overlays/rom_786f0c/ovl_30_c_a_c_c.o in
 * goldensun/overlays/rom_786f0c/overlay.ld.
 */
extern unsigned char L18b8[] __asm__(".L18b8");
extern unsigned char L1738[] __asm__(".L1738");
extern unsigned char L15b8[] __asm__(".L15b8");

unsigned int OvlFunc_886_20080fc(void) {
    unsigned int r5;
    if (__GetFlag(0x87a)) {
        r5 = (unsigned int)L18b8;
    } else if (__GetFlag(0x815)) {
        r5 = (unsigned int)L1738;
    } else {
        r5 = (unsigned int)L15b8;
    }
    __Func_808b868(r5);
    return r5;
}
