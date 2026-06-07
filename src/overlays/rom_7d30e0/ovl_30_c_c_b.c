/* Cluster OvlFunc_948_2009d78..OvlFunc_948_2009d78 extracted from goldensun/asm/overlays/rom_7d30e0/ovl_30_c_c.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7d30e0/ovl_30_c_c_a.o and asm/overlays/rom_7d30e0/ovl_30_c_c_c.o in
 * goldensun/overlays/rom_7d30e0/overlay.ld.
 */
extern unsigned char *__MapActor_GetActor(int);
extern void __Func_8092708(int, int, int);
extern void OvlFunc_948_2009d64(void);

void OvlFunc_948_2009d78(void) {
    unsigned char *p;
    p = __MapActor_GetActor(0);
    if (*(unsigned short *)(p + 6) == (0x80 << 7)) {
        __Func_8092708(0, 6, 0);
    } else {
        OvlFunc_948_2009d64();
    }
}
