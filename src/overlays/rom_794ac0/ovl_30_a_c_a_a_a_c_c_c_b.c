/* Cluster OvlFunc_899_20081fc..OvlFunc_899_20081fc extracted from goldensun/asm/overlays/rom_794ac0/ovl_30_a_c_a_a_a_c_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_794ac0/ovl_30_a_c_a_a_a_c_c_c_a.o and asm/overlays/rom_794ac0/ovl_30_a_c_a_a_a_c_c_c_c.o in
 * goldensun/overlays/rom_794ac0/overlay.ld.
 */
void OvlFunc_899_20081fc(void)
{
    unsigned char *p;
    int v5;

    p = __MapActor_GetActor(0);
    v5 = *(unsigned short *)(p + 6);
    __CutsceneStart();
    if ((v5 + 0xffff5fff) <= 0x3ffe) {
        __Func_80b3284(1, 0x17);
    } else {
        if (!__GetFlag(0x855)) {
            __MessageID(0x128d);
        } else {
            __MessageID(0x137b);
        }
        __ActorMessage(0x17, 0);
    }
    __CutsceneEnd();
}
