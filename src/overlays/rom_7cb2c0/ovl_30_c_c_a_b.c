/* Cluster OvlFunc_945_2009324..OvlFunc_945_20093cc extracted from goldensun/asm/overlays/rom_7cb2c0/ovl_30_c_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7cb2c0/ovl_30_c_c_a_a.o and asm/overlays/rom_7cb2c0/ovl_30_c_c_a_c.o in
 * goldensun/overlays/rom_7cb2c0/overlay.ld.
 * Reconciled conflicting decls of __GetFlag: kept `extern int __GetFlag(int);`, dropped `extern int __GetFlag(int id);`.
 * Reconciled conflicting decls of __Func_8092b94: kept `extern void __Func_8092b94(int);`, dropped `extern void __Func_8092b94(int id);`.
 * Reconciled conflicting decls of __ActorMessage: kept `extern void __ActorMessage(int, int);`, dropped `extern void __ActorMessage(int a, int b);`.
 */
extern void __CutsceneStart(void);
extern int __GetFlag(int);
extern void __Func_8092b94(int);
extern void __ActorMessage(int, int);
extern void __Func_8091750(void);

void OvlFunc_945_2009324(void) {
    __CutsceneStart();
    if (__GetFlag(0x92c)) {
        __Func_8092b94(0x1ece);
    } else if (__GetFlag(0x935)) {
        __Func_8092b94(0x1ecf);
    } else {
        __Func_8092b94(0x1ed0);
    }
    __ActorMessage(0x12, 0);
    __Func_8091750();
}
void OvlFunc_945_2009378(void) {
    __CutsceneStart();
    if (__GetFlag(0x92d)) {
        __Func_8092b94(0x1ece);
    } else if (__GetFlag(0x936)) {
        __Func_8092b94(0x1ecf);
    } else {
        __Func_8092b94(0x1ed0);
    }
    __ActorMessage(0x13, 0);
    __Func_8091750();
}
void OvlFunc_945_20093cc(void) {
    __CutsceneStart();
    if (__GetFlag(0x92e)) {
        __Func_8092b94(0x1ece);
    } else if (__GetFlag(0x937)) {
        __Func_8092b94(0x1ecf);
    } else {
        __Func_8092b94(0x1ed0);
    }
    __ActorMessage(0x14, 0);
    __Func_8091750();
}
