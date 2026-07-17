/* Cluster OvlFunc_924_200b5b8..OvlFunc_924_200b5b8 extracted from goldensun/asm/overlays/rom_7ac2d8/ovl_35b8_a_a_a.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ac2d8/ovl_35b8_a_a_a_a.o and asm/overlays/rom_7ac2d8/ovl_35b8_a_a_a_c.o in
 * goldensun/overlays/rom_7ac2d8/overlay.ld.
 */

void OvlFunc_924_200b5b8(void)
{
    __CutsceneStart();
    {
        unsigned int rq = 0;
        __MapActor_SetAnim(rq, 1);
    }
    {
        unsigned int rm = 0x1576;
        __Func_801776c(rm, 1);
    }
    __CutsceneEnd();
}
