/* Cluster OvlFunc_937_200818c..OvlFunc_937_200818c extracted from goldensun/asm/overlays/rom_7c3044/ovl_30_c_c_c_c.s.
 *
 * Total .text for this TU = 112 bytes (= 0x70).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7c3044/ovl_30_c_c_c_c_a.o and asm/overlays/rom_7c3044/ovl_30_c_c_c_c_c.o in
 * goldensun/overlays/rom_7c3044/overlay.ld.
 */
void OvlFunc_937_200818c(void)
{
    unsigned short v;

    v = *(unsigned short *)((char *)__MapActor_GetActor(0) + 6) - 0x6001;
    if (v <= 0x3ffe) {
        __Func_80b3284(7, 8);
    } else {
        __CutsceneStart();
        if (__GetFlag(0x911) != 0) {
            __MessageID(0x1afb);
            __ActorMessage(8, 0);
        } else {
            __MessageID(0x1ad7);
            __Func_8093054(8, 0);
            __SetFlag(0x910);
        }
        __CutsceneEnd();
    }
}
