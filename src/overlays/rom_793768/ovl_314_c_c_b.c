/* Cluster OvlFunc_898_2008c8c..OvlFunc_898_2008c8c extracted from goldensun/asm/overlays/rom_793768/ovl_314_c_c.s.
 *
 * Total .text for this TU = 56 bytes (= 0x38).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_793768/ovl_314_c_c_a.o and asm/overlays/rom_793768/ovl_314_c_c_c.o in
 * goldensun/overlays/rom_793768/overlay.ld.
 */
extern void __Func_80916b0(void);
extern int __Func_8079338(int id);
extern void __Func_8092b94(int id);
extern void OvlFunc_898_2008938(int n);
extern void __Func_8091750(void);

void OvlFunc_898_2008c8c(void) {
    __Func_80916b0();
    if (__Func_8079338(0x855) == 0) {
        __Func_8092b94(0x1239);
    } else {
        __Func_8092b94(0x1346);
    }
    OvlFunc_898_2008938(0xb);
    __Func_8091750();
}
