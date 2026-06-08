/* Cluster OvlFunc_882_200815c..OvlFunc_882_200815c extracted from goldensun/asm/overlays/rom_77dd1c/ovl_30_c_c_a.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_77dd1c/ovl_30_c_c_a_a.o and asm/overlays/rom_77dd1c/ovl_30_c_c_a_c.o in
 * goldensun/overlays/rom_77dd1c/overlay.ld.
 */
extern int __GetFlag(int);
extern void __Func_8095214(void);
extern void __Func_8091e9c(unsigned int);
extern unsigned int iwram_3001ebc;

void OvlFunc_882_200815c(unsigned int arg0) {
    int res;
    unsigned char *base;

    res = __GetFlag(0x834);
    if (res != 0) {
        __Func_8095214();
    }
    base = (unsigned char *)iwram_3001ebc;
    *(int *)(base + 0x1c0) = 0x100;
    *(int *)(base + 0x1c8) = 0x10;
    __Func_8091e9c(arg0);
}
