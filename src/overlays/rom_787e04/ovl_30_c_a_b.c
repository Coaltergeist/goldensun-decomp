/* Cluster OvlFunc_887_20082e0..OvlFunc_887_20082e0 extracted from goldensun/asm/overlays/rom_787e04/ovl_30_c_a.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_787e04/ovl_30_c_a_a.o and asm/overlays/rom_787e04/ovl_30_c_a_c.o in
 * goldensun/overlays/rom_787e04/overlay.ld.
 */
extern int __GetFlag(int);
extern void __Func_8095214(void);
extern void __MapTransitionOut(void);
extern void __WaitMapTransition(void);
extern void __Func_8091e9c(int);
extern unsigned int iwram_3001ebc;

void OvlFunc_887_20082e0(int arg0) {
    unsigned char *base;

    if (__GetFlag(0x834) != 0) {
        __Func_8095214();
    }
    base = (unsigned char *)iwram_3001ebc;
    *(unsigned int *)(base + (0xe0 << 1)) = (0xe0 << 1) + 0x49;
    __MapTransitionOut();
    __WaitMapTransition();
    __Func_8091e9c(arg0);
}
