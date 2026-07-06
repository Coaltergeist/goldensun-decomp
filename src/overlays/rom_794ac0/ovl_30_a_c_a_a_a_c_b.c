/* Cluster OvlFunc_899_200813c..OvlFunc_899_200813c extracted from goldensun/asm/overlays/rom_794ac0/ovl_30_a_c_a_a_a_c.s.
 *
 * Total .text for this TU = 96 bytes (= 0x60).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_794ac0/ovl_30_a_c_a_a_a_c_a.o and asm/overlays/rom_794ac0/ovl_30_a_c_a_a_a_c_c.o in
 * goldensun/overlays/rom_794ac0/overlay.ld.
 */
void OvlFunc_899_200813c(void)
{
    unsigned char *p;
    int v5;
    extern int _MSG_1280;

    p = __MapActor_GetActor(0);
    v5 = *(unsigned short *)(p + 6);
    __CutsceneStart();
    if ((v5 + 0xffff5fff) <= 0x3ffe) {
        __Func_80b0278(4, 0x13);
    } else {
        if (!__GetFlag(0x855)) {
            __MessageID((int)&_MSG_1280);
        } else {
            __MessageID(0x1370);
        }
        __ActorMessage(0x13, 0);
    }
    __CutsceneEnd();
}
