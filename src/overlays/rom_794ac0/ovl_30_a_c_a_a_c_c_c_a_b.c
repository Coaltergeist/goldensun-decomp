/* Cluster OvlFunc_899_2008454..OvlFunc_899_2008454 extracted from goldensun/asm/overlays/rom_794ac0/ovl_30_a_c_a_a_c_c_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_794ac0/ovl_30_a_c_a_a_c_c_c_a_a.o and asm/overlays/rom_794ac0/ovl_30_a_c_a_a_c_c_c_a_c.o in
 * goldensun/overlays/rom_794ac0/overlay.ld.
 */
extern unsigned char *__MapActor_GetActor(int a);
extern void __CutsceneStart(void);
extern void __Func_80b0278(int a, int b);
extern int __GetFlag(int flag);
extern void __MessageID(int id);
extern void OvlFunc_899_20083bc(int a);
extern void __ActorMessage(int a, int b);
extern void __CutsceneEnd(void);

void OvlFunc_899_2008454(void) {
    unsigned char *p;
    unsigned int v5;

    p = __MapActor_GetActor(0);
    v5 = *(unsigned short *)(p + 6);
    __CutsceneStart();
    if ((v5 + 0xffff5fff) <= 0x3ffe) {
        __Func_80b0278(6, 0x15);
    } else {
        if (!__GetFlag(0x855)) {
            __MessageID(0x1284);
            OvlFunc_899_20083bc(0x15);
        } else {
            __MessageID(0x1374);
            __ActorMessage(0x15, 0);
        }
    }
    __CutsceneEnd();
}
