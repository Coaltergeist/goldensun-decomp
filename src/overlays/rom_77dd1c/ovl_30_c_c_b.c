/* Cluster OvlFunc_882_200820c..OvlFunc_882_200820c extracted from goldensun/asm/overlays/rom_77dd1c/ovl_30_c_c.s.
 *
 * Total .text for this TU = 52 bytes (= 0x34).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_77dd1c/ovl_30_c_c_a.o and asm/overlays/rom_77dd1c/ovl_30_c_c_c.o in
 * goldensun/overlays/rom_77dd1c/overlay.ld.
 */
extern void __Func_80f9080(int);
extern int __Func_8079338(int);
extern void OvlFunc_882_200bfb0(void);
extern void OvlFunc_882_200815c(int);

void OvlFunc_882_200820c(void)
{
    __Func_80f9080(0x7b);
    if (__Func_8079338(0x841) != 0 && __Func_8079338(0x842) == 0)
        OvlFunc_882_200bfb0();
    OvlFunc_882_200815c(2);
}
