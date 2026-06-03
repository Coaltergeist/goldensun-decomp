/* Cluster OvlFunc_888_200b45c..OvlFunc_888_200b4a8 extracted from goldensun/asm/overlays/rom_7892c8/ovl_30_c_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7892c8/ovl_30_c_c_a_a.o and asm/overlays/rom_7892c8/ovl_30_c_c_a_c.o in
 * goldensun/overlays/rom_7892c8/overlay.ld.
 */
extern int OvlFunc_888_200b2a8(void);
extern void __Func_80b29a8(int);
extern void __Func_80916b0(void);
extern int __Func_8079338(int);
extern void __Func_8092b94(int);
extern void __Func_8092f84(int, int);
extern void __Func_8091750(void);

void OvlFunc_888_200b45c(void) {
    if (OvlFunc_888_200b2a8()) {
        __Func_80b29a8(8);
    } else {
        __Func_80916b0();
        if (__Func_8079338(0x845)) {
            __Func_8092b94(0x171c);
        } else {
            __Func_8092b94(0x1408);
        }
        __Func_8092f84(8, 0);
        __Func_8091750();
    }
}
void OvlFunc_888_200b4a8(void) {
    if (OvlFunc_888_200b2a8()) {
        __Func_80b29a8(8);
    } else {
        __Func_80916b0();
        __Func_8092b94(0x190a);
        if (__Func_8079338(0x909)) {
            __Func_8092b94(0x1951);
        }
        __Func_8092f84(8, 0);
        __Func_8091750();
    }
}
