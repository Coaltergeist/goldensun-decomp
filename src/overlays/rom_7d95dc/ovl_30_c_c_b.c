/* Cluster OvlFunc_953_20082a0..OvlFunc_953_20082e4 extracted from goldensun/asm/overlays/rom_7d95dc/ovl_30_c_c.s.
 *
 * Total .text for this TU = 148 bytes (= 0x94).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7d95dc/ovl_30_c_c_a.o and asm/overlays/rom_7d95dc/ovl_30_c_c_c.o in
 * goldensun/overlays/rom_7d95dc/overlay.ld.
 */
extern void __CutsceneStart(void);
extern int __GetFlag(int);
extern void __Func_8092b94(int);
extern void __ActorMessage(int, int);
extern void __Func_8093054(int, int);
extern void __Func_8091750(void);
extern void __MapActor_Emote(int, int, int);

void OvlFunc_953_20082a0(void) {
    __CutsceneStart();
    if (__GetFlag(0x962)) {
        __Func_8092b94(0x2251);
        __ActorMessage(0xa, 0);
    } else {
        __Func_8092b94(0x2057);
        __Func_8093054(0xa, 0);
    }
    __Func_8091750();
}
void OvlFunc_953_20082e4(void) {
    __CutsceneStart();
    if (__GetFlag(0x962)) {
        __MapActor_Emote(0xd, 0x81 << 1, 0x28);
        __Func_8092b94(0x2254);
        __ActorMessage(0xd, 0);
    } else {
        __Func_8092b94(0x205c);
        __ActorMessage(0xd, 0);
    }
    __Func_8091750();
}
