/* Cluster OvlFunc_929_2008570..OvlFunc_929_2008570 extracted from goldensun/asm/overlays/rom_7b7790/ovl_314_c_c_c_c_c.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b7790/ovl_314_c_c_c_c_c_a.o and asm/overlays/rom_7b7790/ovl_314_c_c_c_c_c_c.o in
 * goldensun/overlays/rom_7b7790/overlay.ld.
 */
typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char Ld4c[] __asm__(".Ld4c");
extern unsigned char La28[] __asm__(".La28");

unsigned int OvlFunc_929_2008570(void) {
    unsigned int r3;
    unsigned int r2;

    r3 = (unsigned int)&gState;
    r2 = 0xe1;
    r2 <<= 1;
    r3 += r2;
    r2 = 0;
    if (*(short *)((char *)r3 + r2) == 8) {
        return (unsigned int)Ld4c;
    }
    return (unsigned int)La28;
}
