/* Cluster OvlFunc_883_200d8f0..OvlFunc_883_200d8f0 extracted from goldensun/asm/overlays/rom_780898/ovl_30_c_c_c_c.s.
 *
 * Total .text for this TU = 56 bytes (= 0x38).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_780898/ovl_30_c_c_c_c_a.o and asm/overlays/rom_780898/ovl_30_c_c_c_c_c.o in
 * goldensun/overlays/rom_780898/overlay.ld.
 */
extern void __vec3_translate(unsigned int a, unsigned int b, unsigned int *c);
extern void __Actor_TravelTo(unsigned int a, unsigned int b, unsigned int c, unsigned int d);

void OvlFunc_883_200d8f0(unsigned int *arg0, unsigned int arg1, unsigned int arg2) {
    unsigned int v[3];

    if (arg0 != (unsigned int *)0) {
        v[0] = arg0[2];
        v[1] = arg0[3];
        v[2] = arg0[4];
        __vec3_translate(arg1, arg2, v);
        __Actor_TravelTo((unsigned int)arg0, v[0], v[1], v[2]);
    }
}
