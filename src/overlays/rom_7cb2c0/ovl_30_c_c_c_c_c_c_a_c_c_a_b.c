/* Cluster OvlFunc_945_200c8ac..OvlFunc_945_200c8ac extracted from goldensun/asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_a_c_c_a.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_a_c_c_a_a.o and asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_a_c_c_a_c.o in
 * goldensun/overlays/rom_7cb2c0/overlay.ld.
 */
void OvlFunc_945_200c8ac(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3);

void OvlFunc_945_200c8ac(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3)
{
    unsigned int r6;

    __Func_80933f8(arg0, arg1, arg2, 1 & ~arg3);
    r6 = 0x1111 & arg3;
    if ((0x80 << 21) & arg3) {
        __Func_8093530();
    }
    if ((0x80 << 17) & arg3) {
        __Func_800fe9c();
    }
    __CutsceneWait(r6);
}
