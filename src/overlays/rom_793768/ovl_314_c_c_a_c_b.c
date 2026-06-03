/* Cluster OvlFunc_898_20089f0..OvlFunc_898_20089f0 extracted from goldensun/asm/overlays/rom_793768/ovl_314_c_c_a_c.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_793768/ovl_314_c_c_a_c_a.o and asm/overlays/rom_793768/ovl_314_c_c_a_c_c.o in
 * goldensun/overlays/rom_793768/overlay.ld.
 */
extern void __Func_80916b0(void);
extern void __Func_8092b94(int);
extern int __Func_8079338(int);
extern void OvlFunc_898_200890c(int);
extern void __Func_8091750(void);
extern unsigned int iwram_3001ebc;

void OvlFunc_898_20089f0(void) {
    unsigned short *p;

    __Func_80916b0();
    __Func_8092b94(0x1336);
    if (__Func_8079338(2)) {
        p = (unsigned short *)(iwram_3001ebc + (0xec << 1));
        *p = *p + 1;
    }
    OvlFunc_898_200890c(0xc);
    __Func_8091750();
}
