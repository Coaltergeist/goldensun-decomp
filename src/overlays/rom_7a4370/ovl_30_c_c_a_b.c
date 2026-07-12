// fakematch
/* Cluster OvlFunc_917_2008088..OvlFunc_917_2008088 extracted from goldensun/asm/overlays/rom_7a4370/ovl_30_c_c_a.s.
 *
 * Total .text for this TU = 208 bytes (= 0xd0).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a4370/ovl_30_c_c_a_a.o and asm/overlays/rom_7a4370/ovl_30_c_c_a_c.o in
 * goldensun/overlays/rom_7a4370/overlay.ld.
 */
extern int __GetFlag(int);
extern void __SetFlag(int);
extern int __MessageID(int);
extern void __ActorMessage(int, int);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __CutsceneWait(int);
extern void __Func_8093040(int, int, int);
extern void __MapActor_DoAnim(int, int);
extern void OvlFunc_917_20092f4(int, int);
extern int _MSG_1520;

void OvlFunc_917_2008088(void) {
    int x;
    __CutsceneStart();
    OvlFunc_917_20092f4(0xb, 1);
    if (__GetFlag(0x845)) {
        __MessageID(0x151d);
        __ActorMessage(9, 0);
    } else if (({ x = 0x84c; __asm__("" : "+r"(x)); __GetFlag(x); })) {
        __MessageID(0x1525);
        __ActorMessage(9, 0);
    } else {
        __MessageID((int) (&_MSG_1520));
        __Func_8093040(9, 0, 0x14);
        OvlFunc_917_20092f4(0xb, 0);
        __CutsceneWait(0x3c);
        OvlFunc_917_20092f4(0xb, 1);
        __Func_8093040(9, 0, 0xa);
        __MapActor_DoAnim(0, 3);
        __CutsceneWait(0x28);
        __ActorMessage(9, 0);
        OvlFunc_917_20092f4(0xb, 0);
        __CutsceneWait(0x50);
        __Func_8093040(9, 0, 0x14);
        OvlFunc_917_20092f4(0xb, 1);
        __Func_8093040(9, 0, 0x14);
        __SetFlag(0x84c);
    }
    OvlFunc_917_20092f4(0xb, 0);
    __CutsceneEnd();
}
