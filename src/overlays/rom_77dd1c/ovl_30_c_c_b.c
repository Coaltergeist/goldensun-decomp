/* Cluster OvlFunc_882_200820c..OvlFunc_882_200820c extracted from goldensun/asm/overlays/rom_77dd1c/ovl_30_c_c.s.
 *
 * Total .text for this TU = 52 bytes (= 0x34).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_77dd1c/ovl_30_c_c_a.o and asm/overlays/rom_77dd1c/ovl_30_c_c_c.o in
 * goldensun/overlays/rom_77dd1c/overlay.ld.
 */
extern void __PlaySound(int);
extern int __GetFlag(int);
extern void OvlFunc_882_200bfb0(void);
extern void OvlFunc_882_200815c(int);

void OvlFunc_882_200820c(void)
{
    __PlaySound(0x7b);
    if (__GetFlag(0x841) != 0 && __GetFlag(0x842) == 0)
        OvlFunc_882_200bfb0();
    OvlFunc_882_200815c(2);
}
