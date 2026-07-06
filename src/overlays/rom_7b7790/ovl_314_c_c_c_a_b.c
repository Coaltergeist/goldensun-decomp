/* Cluster OvlFunc_929_2008484..OvlFunc_929_2008484 extracted from goldensun/asm/overlays/rom_7b7790/ovl_314_c_c_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b7790/ovl_314_c_c_c_a_a.o and asm/overlays/rom_7b7790/ovl_314_c_c_c_a_c.o in
 * goldensun/overlays/rom_7b7790/overlay.ld.
 */
void OvlFunc_929_2008484(void) {
    void *r0;
    unsigned int r5;

    r0 = __MapActor_GetActor(0);
    r5 = *(unsigned short *)((char *)r0 + 6);
    __CutsceneStart();
    r5 += 0xffffe000;
    if (r5 > 0xc000) {
        __Func_80b3284(5, 0x11);
    } else {
        if (!__GetFlag(0x895)) {
            __MessageID(0x181d);
        } else {
            __MessageID(0x1a4e);
        }
        __ActorMessage(0x11, 0);
    }
    __CutsceneEnd();
}
