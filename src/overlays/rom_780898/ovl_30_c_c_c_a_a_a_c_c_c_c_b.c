/* Cluster OvlFunc_883_2009554..OvlFunc_883_2009554 extracted from goldensun/asm/overlays/rom_780898/ovl_30_c_c_c_a_a_a_c_c_c_c.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_780898/ovl_30_c_c_c_a_a_a_c_c_c_c_a.o and asm/overlays/rom_780898/ovl_30_c_c_c_a_a_a_c_c_c_c_c.o in
 * goldensun/overlays/rom_780898/overlay.ld.
 */
extern unsigned int OvlFunc_883_2009490(unsigned char *, unsigned char *);
extern unsigned char L7748[] __asm__(".L7748");
extern unsigned char L77c4[] __asm__(".L77c4");

void OvlFunc_883_2009554(void) {
    unsigned int r5;

    r5 = __MapActor_GetActor(0x16);
    if (__GetFlag(0x823) != 0) {
        if (*(short *)((char *)r5 + 0x64) == 2) {
            OvlFunc_883_2009490(L7748, L77c4);
        }
    }
}
