// fakematch
/* Cluster OvlFunc_882_200973c..OvlFunc_882_200973c extracted from goldensun/asm/overlays/rom_77dd1c/ovl_30_c_c_c_c_a_a_a_c.s.
 *
 * Total .text for this TU = 236 bytes (= 0xec).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_77dd1c/ovl_30_c_c_c_c_a_a_a_c_a.o and asm/overlays/rom_77dd1c/ovl_30_c_c_c_c_a_a_a_c_c.o in
 * goldensun/overlays/rom_77dd1c/overlay.ld.
 */
extern int __MessageID(int);
extern void __ActorMessage(int, int);
extern void __CutsceneWait(int);
extern void __SetFlag(int);
extern void __Func_8092c40(int, int);
extern void __Func_8092848(int, int, int);
extern int __Func_8091c7c(int, int);
extern void __Func_8093040(int, int, int);
extern void __MapActor_Surprise(int, int);
extern void __MapActor_SetAnim(int, int);
extern void __MapActor_DoAnim(int, int);
extern void __Func_809280c(int, int, int);
extern int __MapActor_GetActor(int);
extern void __MapActor_TravelTo(int, int, int);
extern void __MapActor_WaitMovement(int);
extern void __MapActor_SetPos(int, int, int);
extern void __Func_80917d0(int, int);
extern int _MSG_e70;

void OvlFunc_882_200973c(void) {
    int r5v;
    int a;
    unsigned int w;
    unsigned int z;

    {
        register unsigned int zp __asm__("r1") = 0;
        __asm__ volatile ("" : : "r" (zp));
        __Func_8092c40(0x16, zp);
    }
    __Func_8092848(0, 0x16, 0);
    r5v = 0;
    if (__Func_8091c7c(0, 0) == 0) {
        __MessageID(0xee5);
        r5v = 1;
    } else {
        __MessageID(0xee6);
    }
    __CutsceneWait(0x14);
    z = 0x28;
    __asm__ volatile ("" : : "r" (z));
    __Func_8093040(0x16, 0, z);
    w = 0x80;
    {
        register unsigned int rq __asm__("r0") = 0x16;
        __asm__ volatile ("" : : "r" (rq));
        w <<= 1;
        __MapActor_Surprise(rq, w);
    }
    __MapActor_SetAnim(0x15, 3);
    __MapActor_SetAnim(0x16, 1);
    __CutsceneWait(0x28);
    __Func_809280c(0x16, 0, 0);
    __CutsceneWait(0x14);
    __MapActor_DoAnim(0x16, 3);
    if (r5v != 0) {
        __MessageID((int) (&_MSG_e70));
    } else {
        __MessageID(0xee7);
    }
    __ActorMessage(0x16, 0);
    __MapActor_SetAnim(0x16, 2);
    a = __MapActor_GetActor(0);
    if (a != 0) {
        __MapActor_TravelTo(0x16, *(short *)(a + 0xa), *(short *)(a + 0x12));
    }
    __MapActor_WaitMovement(0x16);
    __MapActor_SetPos(0x16, 0, 0);
    __Func_80917d0(1, 1);
    __SetFlag(0x837);
}
