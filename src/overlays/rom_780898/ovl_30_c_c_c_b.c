/* Cluster OvlFunc_883_200d72c..OvlFunc_883_200d72c extracted from goldensun/asm/overlays/rom_780898/ovl_30_c_c_c.s.
 *
 * Total .text for this TU = 48 bytes (= 0x30).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_780898/ovl_30_c_c_c_a.o and asm/overlays/rom_780898/ovl_30_c_c_c_c.o in
 * goldensun/overlays/rom_780898/overlay.ld.
 */
extern int __MapActor_GetActor(int);
extern void OvlFunc_883_200d64c(unsigned char *arg, int a, int b, int c);

unsigned int OvlFunc_883_200d72c(unsigned char *arg0) {
    int r1;
    int r2;

    r1 = __MapActor_GetActor(0);
    r2 = *(int *)((char *)arg0 + 0x38);
    if (r2 == (0x80 << 24)) {
        if (*(int *)((char *)arg0 + 0x40) == r2) {
            return 0;
        }
    }
    OvlFunc_883_200d64c(arg0, r1, 0x12, 0);
    return 0;
}
