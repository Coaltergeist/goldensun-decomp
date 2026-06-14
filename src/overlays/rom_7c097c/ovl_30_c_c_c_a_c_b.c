/* Cluster OvlFunc_936_20097e8..OvlFunc_936_20097e8 extracted from goldensun/asm/overlays/rom_7c097c/ovl_30_c_c_c_a_c.s.
 *
 * Total .text for this TU = 112 bytes (= 0x70).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7c097c/ovl_30_c_c_c_a_c_a.o and asm/overlays/rom_7c097c/ovl_30_c_c_c_a_c_c.o in
 * goldensun/overlays/rom_7c097c/overlay.ld.
 */
extern unsigned int gState;

void OvlFunc_936_20097e8(void) {
    unsigned int r3;
    unsigned int r2;
    short val;

    if (__GetFlag(0x941)) {
        __SetFlag(0x321);
        __SetFlag(0x913);
        __SetFlag(0x912);
        __SetFlag(0x915);
    }

    if (__GetFlag(0x94 << 4)) {
        __SetFlag(0x321);
    }

    r3 = (unsigned int)&gState;
    r2 = 0xe1;
    r2 <<= 1;
    r3 += r2;
    r2 = 0;
    val = *(short *)((char *)r3 + r2);

    if (val != 0) {
        if (__GetFlag(0x912)) {
            return;
        }
    } else {
        return;
    }

    OvlFunc_936_200a008();
}
