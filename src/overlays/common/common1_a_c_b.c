/* Cluster OvlFunc_common1_1550..OvlFunc_common1_1550 extracted from goldensun/asm/overlays/common/common1_a_c.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/common/common1_a_c_a.o and asm/overlays/common/common1_a_c_c.o in
 * goldensun/overlays/rom_7db0c8/overlay.ld.
 */
extern unsigned char L14[] __asm__(".L14");
extern void OvlFunc_common1_1354(void);

void OvlFunc_common1_1550(void) {
    short *r5;
    __StopTask(OvlFunc_common1_1354);
    r5 = (short *)L14;
    __Func_8003f3c(*(short *)r5);
    *(short *)r5 = -1;
}
