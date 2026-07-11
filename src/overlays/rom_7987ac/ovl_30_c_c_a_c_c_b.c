/* Cluster OvlFunc_902_2008410..OvlFunc_902_2008410 extracted from goldensun/asm/overlays/rom_7987ac/ovl_30_c_c_a_c_c.s.
 *
 * Total .text for this TU = 72 bytes (= 0x48).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7987ac/ovl_30_c_c_a_c_c_a.o and asm/overlays/rom_7987ac/ovl_30_c_c_a_c_c_c.o in
 * goldensun/overlays/rom_7987ac/overlay.ld.
 */
extern void __CutsceneStart(void);
extern void __MessageID(int a);
extern void __ActorMessage(int a, int b);
extern void __CutsceneEnd(void);
extern unsigned char *__MapActor_GetActor(int);
extern void __Func_80b0278(int, int);

void OvlFunc_902_2008410(void) {
    unsigned int r5;

    r5 = *(unsigned short *)((char *)__MapActor_GetActor(0) + 6);
    __CutsceneStart();
    r5 += 0xffff5fff;
    if (r5 <= 0x3ffe) {
        __Func_80b0278(6, 0x15);
    } else {
        __MessageID(0x1ce6);
        __ActorMessage(0x15, 0);
    }
    __CutsceneEnd();
}
