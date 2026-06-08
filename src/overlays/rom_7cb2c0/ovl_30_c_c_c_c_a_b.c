/* Cluster OvlFunc_945_2009594..OvlFunc_945_200963c extracted from goldensun/asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_a_a.o and asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_a_c.o in
 * goldensun/overlays/rom_7cb2c0/overlay.ld.
 */
extern void __CutsceneStart(void);
extern int __GetFlag(int);
extern void __Func_8092b94(int);
extern void __ActorMessage(int, int);
extern void __Func_8091750(void);

void OvlFunc_945_2009594(void) {
    __CutsceneStart();
    if (__GetFlag(0x92c)) {
        __Func_8092b94(0x1edb);
    } else if (__GetFlag(0x935)) {
        __Func_8092b94(0x1edc);
    } else {
        __Func_8092b94(0x1edd);
    }
    __ActorMessage(0x12, 0);
    __Func_8091750();
}
void OvlFunc_945_20095e8(void) {
    __CutsceneStart();
    if (__GetFlag(0x92d)) {
        __Func_8092b94(0x1edb);
    } else if (__GetFlag(0x936)) {
        __Func_8092b94(0x1edc);
    } else {
        __Func_8092b94(0x1edd);
    }
    __ActorMessage(0x13, 0);
    __Func_8091750();
}
void OvlFunc_945_200963c(void) {
    __CutsceneStart();
    if (__GetFlag(0x92e)) {
        __Func_8092b94(0x1edb);
    } else if (__GetFlag(0x937)) {
        __Func_8092b94(0x1edc);
    } else {
        __Func_8092b94(0x1edd);
    }
    __ActorMessage(0x14, 0);
    __Func_8091750();
}
