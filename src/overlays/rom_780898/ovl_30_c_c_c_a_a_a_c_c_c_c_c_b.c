/* Cluster OvlFunc_883_2009590..OvlFunc_883_2009590 extracted from goldensun/asm/overlays/rom_780898/ovl_30_c_c_c_a_a_a_c_c_c_c_c.s.
 *
 * Total .text for this TU = 76 bytes (= 0x4c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_780898/ovl_30_c_c_c_a_a_a_c_c_c_c_c_a.o and asm/overlays/rom_780898/ovl_30_c_c_c_a_a_a_c_c_c_c_c_c.o in
 * goldensun/overlays/rom_780898/overlay.ld.
 */
extern unsigned int OvlFunc_883_2009490(unsigned int, unsigned int);
extern unsigned char L7748[] __asm__(".L7748");
extern unsigned char L76cc[] __asm__(".L76cc");
extern unsigned char L77c4[] __asm__(".L77c4");

void OvlFunc_883_2009590(void) {
    unsigned int r5;
    unsigned int v0;
    short v1;

    r5 = __MapActor_GetActor(0x16);
    v0 = __GetFlag(0x823);
    if (v0 != 0) {
        v1 = *(short *)((char *)r5 + 0x64);
        if (v1 == 1) {
            OvlFunc_883_2009490((unsigned int)L7748, (unsigned int)L76cc);
        } else if (v1 == 2) {
            OvlFunc_883_2009490((unsigned int)L7748, (unsigned int)L77c4);
        }
    }
}
