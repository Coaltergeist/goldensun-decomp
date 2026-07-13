/* Cluster OvlFunc_931_20084bc..OvlFunc_931_20084bc extracted from goldensun/asm/overlays/rom_7b8cb0/ovl_30_c_c_c_c_c_c_c_c_c_a.s.
 *
 * Total .text for this TU = 104 bytes (= 0x68).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b8cb0/ovl_30_c_c_c_c_c_c_c_c_c_a_a.o and asm/overlays/rom_7b8cb0/ovl_30_c_c_c_c_c_c_c_c_c_a_c.o in
 * goldensun/overlays/rom_7b8cb0/overlay.ld.
 */
void OvlFunc_931_20084bc(void)
{
    unsigned short v;

    v = *(unsigned short *)((char *)__MapActor_GetActor(0) + 6) + 0x5fff;
    if (v <= 0x3ffe) {
        __Func_80b3284(6, 0x12);
    } else {
        __CutsceneStart();
        if (__GetFlag(0x909) != 0) {
            __MessageID(0x1947);
            __ActorMessage(0x12, 0);
        } else {
            __MessageID(0x18f5);
            __Func_8093054(0x12, 0);
        }
        __CutsceneEnd();
    }
}
