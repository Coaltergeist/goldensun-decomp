/* Cluster OvlFunc_935_2008b54..OvlFunc_935_2008b54 extracted from goldensun/asm/overlays/rom_7bf5a8/ovl_2e0_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7bf5a8/ovl_2e0_c_c_a.o and asm/overlays/rom_7bf5a8/ovl_2e0_c_c_c.o in
 * goldensun/overlays/rom_7bf5a8/overlay.ld.
 */
extern void __vec3_translate(unsigned int arg0, unsigned int arg1, unsigned int *arg2);
extern void __Actor_TravelTo(unsigned char *arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3);

void OvlFunc_935_2008b54(unsigned char *arg0, unsigned int arg1, unsigned int arg2) {
    unsigned int tmp[3];

    if (arg0 != (unsigned char *)0) {
        tmp[0] = *(unsigned int *)(arg0 + 8);
        tmp[1] = *(unsigned int *)(arg0 + 0xc);
        tmp[2] = *(unsigned int *)(arg0 + 0x10);
        __vec3_translate(arg1, arg2, tmp);
        __Actor_TravelTo(arg0, tmp[0], tmp[1], tmp[2]);
    }
}
