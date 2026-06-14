/* Cluster OvlFunc_929_20083bc..OvlFunc_929_20083bc extracted from goldensun/asm/overlays/rom_7b7790/ovl_314_c_c.s.
 *
 * Total .text for this TU = 96 bytes (= 0x60).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b7790/ovl_314_c_c_a.o and asm/overlays/rom_7b7790/ovl_314_c_c_c.o in
 * goldensun/overlays/rom_7b7790/overlay.ld.
 */
void OvlFunc_929_20083bc(void)
{
    unsigned char *p;
    int v5;

    p = __MapActor_GetActor(0);
    v5 = *(unsigned short *)(p + 6);
    __CutsceneStart();
    if ((v5 + 0xffff5fff) <= 0x3ffe) {
        __Func_80b0278(0x11, 0xf);
    } else {
        if (!__GetFlag(0x895)) {
            __MessageID(0x1819);
        } else {
            __MessageID(0x1a48);
        }
        __ActorMessage(0xf, 0);
    }
    __CutsceneEnd();
}
