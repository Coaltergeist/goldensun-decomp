/* Cluster OvlFunc_923_2008eac..OvlFunc_923_2008eac extracted from goldensun/asm/overlays/rom_7aa430/ovl_e90_c_c_a_a.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7aa430/ovl_e90_c_c_a_a_a.o and asm/overlays/rom_7aa430/ovl_e90_c_c_a_a_c.o in
 * goldensun/overlays/rom_7aa430/overlay.ld.
 */

void OvlFunc_923_2008eac(void)
{
    __CutsceneStart();
    {
        unsigned int rq = 0;
        __MapActor_SetAnim(rq, 1);
    }
    {
        unsigned int rm = 0x1632;
        __Func_801776c(rm, 1);
    }
    __CutsceneEnd();
}
