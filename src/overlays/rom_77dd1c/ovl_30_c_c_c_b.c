/* Cluster OvlFunc_882_2009684..OvlFunc_882_2009684 extracted from goldensun/asm/overlays/rom_77dd1c/ovl_30_c_c_c.s.
 *
 * Total .text for this TU = 72 bytes (= 0x48).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_77dd1c/ovl_30_c_c_c_a.o and asm/overlays/rom_77dd1c/ovl_30_c_c_c_c.o in
 * goldensun/overlays/rom_77dd1c/overlay.ld.
 */
extern int __GetFlag(int);
extern void __CutsceneStart(void);
extern void __Func_80925cc(int, int);
extern void __CutsceneWait(int);
extern void __Func_8092b94(int);
extern void OvlFunc_882_200973c(void);
extern void __Func_8091750(void);

void OvlFunc_882_2009684(void)
{
    if (__GetFlag(0x837) == 0 && __GetFlag(0x836) != 0)
    {
        __CutsceneStart();
        __Func_80925cc(0x16, 2);
        __CutsceneWait(0x14);
        __Func_8092b94(0xe71);
        OvlFunc_882_200973c();
        __Func_8091750();
    }
}
