/* Cluster OvlFunc_945_20096cc..OvlFunc_945_2009774 extracted from goldensun/asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_a_a.o and asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_a_c.o in
 * goldensun/overlays/rom_7cb2c0/overlay.ld.
 */
extern void __Func_80916b0(void);
extern int __Func_8079338(int);
extern void __Func_8092b94(int);
extern void __Func_8092f84(int, int);
extern void __Func_8091750(void);

void OvlFunc_945_20096cc(void) {
    __Func_80916b0();
    if (__Func_8079338(0x93 << 4)) {
        __Func_8092b94(0x1edb);
    } else if (__Func_8079338(0x939)) {
        __Func_8092b94(0x1edc);
    } else {
        __Func_8092b94(0x1edd);
    }
    __Func_8092f84(0x16, 0);
    __Func_8091750();
}
void OvlFunc_945_2009720(void) {
    __Func_80916b0();
    if (__Func_8079338(0x931)) {
        __Func_8092b94(0x1edb);
    } else if (__Func_8079338(0x93a)) {
        __Func_8092b94(0x1edc);
    } else {
        __Func_8092b94(0x1edd);
    }
    __Func_8092f84(0x17, 0);
    __Func_8091750();
}
void OvlFunc_945_2009774(void) {
    __Func_80916b0();
    if (__Func_8079338(0x932)) {
        __Func_8092b94(0x1edb);
    } else if (__Func_8079338(0x93b)) {
        __Func_8092b94(0x1edc);
    } else {
        __Func_8092b94(0x1edd);
    }
    __Func_8092f84(0x18, 0);
    __Func_8091750();
}
