/* Cluster OvlFunc_908_20082f4..OvlFunc_908_20082f4 extracted from goldensun/asm/overlays/rom_79c0c4/ovl_30_c_c_c_a_c_c_a_a.s.
 *
 * Total .text for this TU = 104 bytes (= 0x68).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_79c0c4/ovl_30_c_c_c_a_c_c_a_a_a.o and asm/overlays/rom_79c0c4/ovl_30_c_c_c_a_c_c_a_a_c.o in
 * goldensun/overlays/rom_79c0c4/overlay.ld.
 */
void OvlFunc_908_20082f4(void) {
    unsigned int r5;

    r5 = *(unsigned short *)((char *)__MapActor_GetActor(0) + 6);
    __CutsceneStart();
    r5 += 0xffff5fff;
    if (r5 <= 0x3ffe) {
        __Func_80b3284(2, 0x13);
    } else {
        if (__GetFlag(0x845) != 0) {
            __MessageID(0x16fb);
            __Func_8093054(0x13, 0);
        } else {
            __MessageID(0x13eb);
            __ActorMessage(0x13, 0);
        }
    }
    __CutsceneEnd();
}
