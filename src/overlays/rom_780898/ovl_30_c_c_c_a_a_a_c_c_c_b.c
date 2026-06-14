/* Cluster OvlFunc_883_2009454..OvlFunc_883_2009454 extracted from goldensun/asm/overlays/rom_780898/ovl_30_c_c_c_a_a_a_c_c_c.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_780898/ovl_30_c_c_c_a_a_a_c_c_c_a.o and asm/overlays/rom_780898/ovl_30_c_c_c_a_a_a_c_c_c_c.o in
 * goldensun/overlays/rom_780898/overlay.ld.
 */
extern unsigned char L763c[] __asm__(".L763c");
extern unsigned char L76cc[] __asm__(".L76cc");
extern void OvlFunc_883_2009490(unsigned int, unsigned int);

void OvlFunc_883_2009454(void) {
    unsigned int r5;

    r5 = __MapActor_GetActor(0x16);
    if (__GetFlag(0x823) != 0) {
        short v;
        v = *(short *)((char *)r5 + 0x64);
        if (v == 1) {
            OvlFunc_883_2009490((unsigned int)L763c, (unsigned int)L76cc);
        }
    }
}
