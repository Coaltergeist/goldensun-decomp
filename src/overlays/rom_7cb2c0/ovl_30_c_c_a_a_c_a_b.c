/* Cluster OvlFunc_945_2008a80..OvlFunc_945_2008a80 extracted from goldensun/asm/overlays/rom_7cb2c0/ovl_30_c_c_a_a_c_a.s.
 *
 * Total .text for this TU = 260 bytes (= 0x104).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7cb2c0/ovl_30_c_c_a_a_c_a_a.o and asm/overlays/rom_7cb2c0/ovl_30_c_c_a_a_c_a_c.o in
 * goldensun/overlays/rom_7cb2c0/overlay.ld.
 */
extern int __GetFlag(int);
extern int __MessageID(int);
extern void __ActorMessage(int, int);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __CutsceneWait(int);
extern void __MapActor_Surprise(int, int);
extern void __MapActor_SetAnim(int, int);
extern int __MapActor_GetActor(int);
extern void __MapActor_TravelTo(int, int, int);
extern void __MapActor_WaitMovement(int);
extern void __MapActor_SetPos(int, int, int);
extern int OvlFunc_945_20092dc(void);
extern void OvlFunc_945_2009190(int);
extern void OvlFunc_945_200c86c(int);
extern void OvlFunc_945_2009804(int, int, int);
extern int _MSG_1ea0;

void OvlFunc_945_2008a80(void) {
    int r5v;
    int a;

    if (__GetFlag(0x8a << 4)) {
        __CutsceneStart();
        __MapActor_Surprise(0xb, 0x81 << 1);
        __CutsceneWait(0x28);
        __MessageID(0x1f47);
        __ActorMessage(0xb, 0);
        __CutsceneEnd();
    } else if (__GetFlag(0xc0 << 2)) {
        r5v = OvlFunc_945_20092dc();
        __CutsceneStart();
        OvlFunc_945_2009190(r5v);
        __MessageID((int) (&_MSG_1ea0));
        OvlFunc_945_200c86c(0xb);
        __MapActor_SetAnim(r5v, 2);
        a = __MapActor_GetActor(0);
        if (a != 0) {
            __MapActor_TravelTo(r5v, *(short *)(a + 0xa), *(short *)(a + 0x12));
        }
        __MapActor_WaitMovement(r5v);
        __MapActor_SetPos(r5v, 0, 0);
        __CutsceneEnd();
    } else if (__GetFlag(0x92b)) {
        OvlFunc_945_2009804(0xb, 0x1e7e, 0x993);
    } else if (__GetFlag(0x92a)) {
        OvlFunc_945_2009804(0xb, 0x1e7e, 0x91a);
    } else if (__GetFlag(0x929)) {
        OvlFunc_945_2009804(0xb, 0x1e7e, 0x938);
    } else {
        OvlFunc_945_2009804(0xb, 0x1e7e, 0x92f);
    }
}
