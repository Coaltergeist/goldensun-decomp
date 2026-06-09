/* Cluster OvlFunc_897_200ad48..OvlFunc_897_200ad94 extracted from goldensun/asm/overlays/rom_791794/ovl_30_c_c.s.
 *
 * Total .text for this TU = 136 bytes (= 0x88).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_791794/ovl_30_c_c_a.o and asm/overlays/rom_791794/ovl_30_c_c_c.o in
 * goldensun/overlays/rom_791794/overlay.ld.
 */
extern void __PlaySound(unsigned int arg0);
extern void __Func_8091200(unsigned int arg0, unsigned int arg1);
extern void __Func_8091254(unsigned int arg0);
extern void __CutsceneWait(unsigned int arg0);
extern unsigned int iwram_3001e40;
extern void __Actor_SetColorswap(unsigned int a, unsigned int b);
extern void OvlFunc_897_200aeb0(unsigned int a);

void OvlFunc_897_200ad48(unsigned int arg0, unsigned int arg1, unsigned int arg2) {
    if (arg0 == 1) {
        __PlaySound(0x9a << 1);
        __Func_8091200(0x203a52, 1);
    } else {
        __PlaySound(0x121);
        __Func_8091200(0x80 << 9, 1);
    }
    __Func_8091254(arg1);
    if (arg2 != 0) {
        __CutsceneWait(arg2);
    }
}
void OvlFunc_897_200ad94(unsigned int arg0)
{
    if (iwram_3001e40 & 2) {
        __Actor_SetColorswap(arg0, 7);
    } else {
        __Actor_SetColorswap(arg0, 0);
    }
    if ((iwram_3001e40 & 0xf) == 0) {
        OvlFunc_897_200aeb0(arg0);
    }
}
