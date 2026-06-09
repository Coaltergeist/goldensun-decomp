/* Cluster OvlFunc_953_20082a0..OvlFunc_953_20082e4 extracted from goldensun/asm/overlays/rom_7d95dc/ovl_30_c_c.s.
 *
 * Total .text for this TU = 148 bytes (= 0x94).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7d95dc/ovl_30_c_c_a.o and asm/overlays/rom_7d95dc/ovl_30_c_c_c.o in
 * goldensun/overlays/rom_7d95dc/overlay.ld.
 */
extern void __CutsceneStart(void);
extern int __GetFlag(int);
extern void __MessageID(int);
extern void __ActorMessage(int, int);
extern void __Func_8093054(int, int);
extern void __CutsceneEnd(void);
extern void __MapActor_Emote(int, int, int);

void OvlFunc_953_20082a0(void) {
    __CutsceneStart();
    if (__GetFlag(0x962)) {
        __MessageID(0x2251);
        __ActorMessage(0xa, 0);
    } else {
        __MessageID(0x2057);
        __Func_8093054(0xa, 0);
    }
    __CutsceneEnd();
}
void OvlFunc_953_20082e4(void) {
    __CutsceneStart();
    if (__GetFlag(0x962)) {
        __MapActor_Emote(0xd, 0x81 << 1, 0x28);
        __MessageID(0x2254);
        __ActorMessage(0xd, 0);
    } else {
        __MessageID(0x205c);
        __ActorMessage(0xd, 0);
    }
    __CutsceneEnd();
}
