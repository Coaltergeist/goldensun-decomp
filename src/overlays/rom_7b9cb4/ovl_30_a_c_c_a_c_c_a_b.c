/* Cluster OvlFunc_932_200abb0..OvlFunc_932_200abb0 extracted from goldensun/asm/overlays/rom_7b9cb4/ovl_30_a_c_c_a_c_c_a.s.
 *
 * Total .text for this TU = 48 bytes (= 0x30).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b9cb4/ovl_30_a_c_c_a_c_c_a_a.o and asm/overlays/rom_7b9cb4/ovl_30_a_c_c_a_c_c_a_c.o in
 * goldensun/overlays/rom_7b9cb4/overlay.ld.
 */
extern unsigned char L5240[] __asm__(".L5240");
extern unsigned char L523c[] __asm__(".L523c");
extern void OvlFunc_932_200ab58(void);

void OvlFunc_932_200abb0(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3) {
    unsigned int *r4 = (unsigned int *)L5240;
    unsigned int *r2;
    r4[2] = arg2;
    r2 = (unsigned int *)L523c;
    r4[0] = arg0;
    r4[1] = arg1;
    r2[0] = arg3;
    __Func_8091ff0(0xaa);
    __StartTask(OvlFunc_932_200ab58, 0xc8 << 4);
}
