/* Cluster OvlFunc_945_20096cc..OvlFunc_945_2009774 extracted from goldensun/asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_a_a.o and asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_a_c.o in
 * goldensun/overlays/rom_7cb2c0/overlay.ld.
 */
extern void __CutsceneStart(void);
extern int __GetFlag(int);
extern void __MessageID(int);
extern void __ActorMessage(int, int);
extern void __CutsceneEnd(void);

void OvlFunc_945_20096cc(void) {
    __CutsceneStart();
    if (__GetFlag(0x93 << 4)) {
        __MessageID(0x1edb);
    } else if (__GetFlag(0x939)) {
        __MessageID(0x1edc);
    } else {
        __MessageID(0x1edd);
    }
    __ActorMessage(0x16, 0);
    __CutsceneEnd();
}
void OvlFunc_945_2009720(void) {
    __CutsceneStart();
    if (__GetFlag(0x931)) {
        __MessageID(0x1edb);
    } else if (__GetFlag(0x93a)) {
        __MessageID(0x1edc);
    } else {
        __MessageID(0x1edd);
    }
    __ActorMessage(0x17, 0);
    __CutsceneEnd();
}
void OvlFunc_945_2009774(void) {
    __CutsceneStart();
    if (__GetFlag(0x932)) {
        __MessageID(0x1edb);
    } else if (__GetFlag(0x93b)) {
        __MessageID(0x1edc);
    } else {
        __MessageID(0x1edd);
    }
    __ActorMessage(0x18, 0);
    __CutsceneEnd();
}
