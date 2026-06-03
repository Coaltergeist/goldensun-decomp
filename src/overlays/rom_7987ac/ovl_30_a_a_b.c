/* Cluster OvlFunc_902_2008030..OvlFunc_902_2008030 extracted from goldensun/asm/overlays/rom_7987ac/ovl_30_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7987ac/ovl_30_a_a_a.o and asm/overlays/rom_7987ac/ovl_30_a_a_c.o in
 * goldensun/overlays/rom_7987ac/overlay.ld.
 */
extern int *__Func_8092054(int idx);
extern void __Func_8079358(int id);
extern void __Func_8079374(int id);

void OvlFunc_902_2008030(void)
{
    int r5;
    int r3;

    r5 = __Func_8092054(0)[2];
    r3 = __Func_8092054(0)[4];
    r5 >>= 20;
    r5 -= 0x22;
    r3 >>= 20;
    if ((unsigned int)r5 <= 1 && r3 > 0x28 && r3 <= 0x2a)
        __Func_8079358(0x94 << 2);
    else
        __Func_8079374(0x94 << 2);
}
