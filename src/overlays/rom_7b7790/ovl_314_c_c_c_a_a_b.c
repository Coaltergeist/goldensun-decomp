/* Cluster OvlFunc_929_200841c..OvlFunc_929_200841c extracted from goldensun/asm/overlays/rom_7b7790/ovl_314_c_c_c_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b7790/ovl_314_c_c_c_a_a_a.o and asm/overlays/rom_7b7790/ovl_314_c_c_c_a_a_c.o in
 * goldensun/overlays/rom_7b7790/overlay.ld.
 */
void OvlFunc_929_200841c(void)
{
    unsigned char *p;
    int v5;

    p = __MapActor_GetActor(0);
    v5 = *(unsigned short *)(p + 6);
    __CutsceneStart();
    if ((v5 + 0xffff5fff) <= 0x3ffe) {
        __Func_80b0278(0x12, 0x10);
    } else {
        if (!__GetFlag(0x895)) {
            __MessageID(0x181b);
            __ActorMessage(0x10, 0);
        } else {
            __MessageID(0x1a4a);
            __Func_8093054(0x10, 0);
        }
    }
    __CutsceneEnd();
}
