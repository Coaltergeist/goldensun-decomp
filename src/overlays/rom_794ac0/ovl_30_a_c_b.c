/* Cluster OvlFunc_899_2008a14..OvlFunc_899_2008abc extracted from goldensun/asm/overlays/rom_794ac0/ovl_30_a_c.s.
 *
 * Total .text for this TU = 224 bytes (= 0xe0).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_794ac0/ovl_30_a_c_a.o and asm/overlays/rom_794ac0/ovl_30_a_c_c.o in
 * goldensun/overlays/rom_794ac0/overlay.ld.
 */
extern void __CutsceneStart(void);
extern int __GetFlag(int id);
extern void __MessageID(int id);
extern void OvlFunc_899_2008378(int n);
extern void __CutsceneEnd(void);

void OvlFunc_899_2008a14(void) {
    __CutsceneStart();
    if (__GetFlag(0x855) == 0) {
        __MessageID(0x1245);
    } else {
        __MessageID(0x1355);
    }
    OvlFunc_899_2008378(9);
    __CutsceneEnd();
}
extern void __CutsceneStart(void);
extern int __GetFlag(int);
extern void __MessageID(int);
extern void OvlFunc_899_2008378(int);
extern void __CutsceneEnd(void);

void OvlFunc_899_2008a4c(void) {
    __CutsceneStart();
    if (__GetFlag(0x855) == 0) {
        __MessageID(0x124b);
    } else {
        __MessageID(0x135b);
    }
    OvlFunc_899_2008378(0xb);
    __CutsceneEnd();
}
extern void __CutsceneStart(void);
extern int __GetFlag(int);
extern void __MessageID(int);
extern void OvlFunc_899_2008378(int);
extern void __CutsceneEnd(void);

void OvlFunc_899_2008a84(void) {
    __CutsceneStart();
    if (__GetFlag(0x855) == 0) {
        __MessageID(0x124e);
    } else {
        __MessageID(0x135e);
    }
    OvlFunc_899_2008378(0xc);
    __CutsceneEnd();
}
extern void __CutsceneStart(void);
extern int __GetFlag(int);
extern void __MessageID(int);
extern void OvlFunc_899_2008378(int);
extern void __CutsceneEnd(void);

void OvlFunc_899_2008abc(void) {
    __CutsceneStart();
    if (__GetFlag(0x855) == 0) {
        __MessageID(0x127c);
    } else {
        __MessageID(0x136c);
    }
    OvlFunc_899_2008378(0x10);
    __CutsceneEnd();
}
