/* Cluster OvlFunc_889_2008054..OvlFunc_889_2008054 extracted from goldensun/asm/overlays/rom_78ac38/ovl_30_c_c.s.
 *
 * Total .text for this TU = 32 bytes (= 0x20).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_78ac38/ovl_30_c_c_a.o and asm/overlays/rom_78ac38/ovl_30_c_c_c.o in
 * goldensun/overlays/rom_78ac38/overlay.ld.
 */
typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern void OvlFunc_889_2008074(void);

int OvlFunc_889_2008054(void) {
    unsigned int r3;
    unsigned int r2;

    r3 = (unsigned int)&gState;
    r2 = 0xe1;
    r2 <<= 1;
    r3 += r2;
    r2 = 0;
    if (*(short *)((char *)r3 + r2) == 0xf) {
        OvlFunc_889_2008074();
    }
    return 0;
}
