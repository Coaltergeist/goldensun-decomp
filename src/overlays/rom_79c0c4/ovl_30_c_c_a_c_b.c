/* Cluster OvlFunc_908_200805c..OvlFunc_908_200805c extracted from goldensun/asm/overlays/rom_79c0c4/ovl_30_c_c_a_c.s.
 *
 * Total .text for this TU = 96 bytes (= 0x60).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_79c0c4/ovl_30_c_c_a_c_a.o and asm/overlays/rom_79c0c4/ovl_30_c_c_a_c_c.o in
 * goldensun/overlays/rom_79c0c4/overlay.ld.
 */
void OvlFunc_908_200805c(void)
{
    unsigned char *p;
    int v5;

    p = __MapActor_GetActor(0);
    v5 = *(unsigned short *)(p + 6);
    __CutsceneStart();
    if ((v5 + 0xffff5fff) <= 0x3ffe) {
        __Func_80b0278(7, 0x10);
    } else {
        if (!__GetFlag(0x845)) {
            __MessageID(0x13e3);
        } else {
            __MessageID(0x16f5);
        }
        __ActorMessage(0x10, 0);
    }
    __CutsceneEnd();
}
