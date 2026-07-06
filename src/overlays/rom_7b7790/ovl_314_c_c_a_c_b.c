/* Cluster OvlFunc_929_200835c..OvlFunc_929_200835c extracted from goldensun/asm/overlays/rom_7b7790/ovl_314_c_c_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b7790/ovl_314_c_c_a_c_a.o and asm/overlays/rom_7b7790/ovl_314_c_c_a_c_c.o in
 * goldensun/overlays/rom_7b7790/overlay.ld.
 */
void OvlFunc_929_200835c(void)
{
    unsigned char *p;
    int v5;

    p = __MapActor_GetActor(0);
    v5 = *(unsigned short *)(p + 6);
    __CutsceneStart();
    if ((v5 + 0xffff5fff) <= 0x3ffe) {
        __Func_80b0278(0x10, 0xe);
    } else {
        if (!__GetFlag(0x895)) {
            __MessageID(0x1817);
        } else {
            __MessageID(0x1a46);
        }
        __ActorMessage(0xe, 0);
    }
    __CutsceneEnd();
}
