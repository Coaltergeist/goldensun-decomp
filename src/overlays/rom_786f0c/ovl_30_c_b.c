/* Cluster OvlFunc_886_20082bc..OvlFunc_886_20082bc extracted from goldensun/asm/overlays/rom_786f0c/ovl_30_c.s.
 *
 * Total .text for this TU = 76 bytes (= 0x4c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_786f0c/ovl_30_c_a.o and asm/overlays/rom_786f0c/ovl_30_c_c.o in
 * goldensun/overlays/rom_786f0c/overlay.ld.
 */
extern int __GetFlag(int);
extern void __Func_8095214(void);
extern void __PlaySound(int);
extern void __MapTransitionOut(void);
extern void __WaitMapTransition(void);
extern void __Func_8091e9c(int);
extern unsigned int iwram_3001ebc;

void OvlFunc_886_20082bc(int arg0)
{
    unsigned char *base;

    if (__GetFlag(0x834))
        __Func_8095214();
    __PlaySound(0x7b);
    base = (unsigned char *)iwram_3001ebc;
    *(int *)(base + 0x1c0) = 0x209;
    *(int *)(base + 0x1c8) = 0x10;
    __MapTransitionOut();
    __WaitMapTransition();
    __Func_8091e9c(arg0);
}
