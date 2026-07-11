/* Cluster OvlFunc_912_2008174..OvlFunc_912_2008174 extracted from goldensun/asm/overlays/rom_7a0010/ovl_30_c_c_a_c_c_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a0010/ovl_30_c_c_a_c_c_c_c_a.o and asm/overlays/rom_7a0010/ovl_30_c_c_a_c_c_c_c_c.o in
 * goldensun/overlays/rom_7a0010/overlay.ld.
 */
extern void __CutsceneStart(void);
extern void __MessageID(int a);
extern void __ActorMessage(int a, int b);
extern void __CutsceneEnd(void);
extern unsigned char *__MapActor_GetActor(int);
extern void __Func_80b3284(int, int);

void OvlFunc_912_2008174(void) {
    unsigned int r5;

    r5 = *(unsigned short *)((char *)__MapActor_GetActor(0) + 6);
    __CutsceneStart();
    r5 += 0xffff5fff;
    if (r5 <= 0x3ffe) {
        __Func_80b3284(3, 0x13);
    } else {
        __MessageID(0x16b7);
        __ActorMessage(0x13, 0);
    }
    __CutsceneEnd();
}
