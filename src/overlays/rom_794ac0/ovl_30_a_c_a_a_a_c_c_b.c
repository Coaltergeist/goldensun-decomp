/* Cluster OvlFunc_899_200819c..OvlFunc_899_200819c extracted from goldensun/asm/overlays/rom_794ac0/ovl_30_a_c_a_a_a_c_c.s.
 *
 * Total .text for this TU = 96 bytes (= 0x60).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_794ac0/ovl_30_a_c_a_a_a_c_c_a.o and asm/overlays/rom_794ac0/ovl_30_a_c_a_a_a_c_c_c.o in
 * goldensun/overlays/rom_794ac0/overlay.ld.
 */
void OvlFunc_899_200819c(void)
{
    unsigned char *p;
    int v5;

    p = __MapActor_GetActor(0);
    v5 = *(unsigned short *)(p + 6);
    __CutsceneStart();
    if ((v5 + 0xffff5fff) <= 0x3ffe) {
        __Func_80b0278(5, 0x14);
    } else {
        if (!__GetFlag(0x855)) {
            __MessageID(0x1282);
        } else {
            __MessageID(0x1372);
        }
        __ActorMessage(0x14, 0);
    }
    __CutsceneEnd();
}
