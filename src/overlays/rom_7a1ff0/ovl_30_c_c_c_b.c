/* Cluster OvlFunc_914_2008a68..OvlFunc_914_2008a68 extracted from goldensun/asm/overlays/rom_7a1ff0/ovl_30_c_c_c.s.
 *
 * Total .text for this TU = 84 bytes (= 0x54).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a1ff0/ovl_30_c_c_c_a.o and asm/overlays/rom_7a1ff0/ovl_30_c_c_c_c.o in
 * goldensun/overlays/rom_7a1ff0/overlay.ld.
 */
extern int iwram_3001ebc;
extern int __Func_8079338(int id);
extern void OvlFunc_914_2008cb4(int x);
extern void OvlFunc_914_20088c0(int x);
extern void OvlFunc_914_2008abc(int x);

int OvlFunc_914_2008a68(void) {
    unsigned char *base;

    base = (unsigned char *)iwram_3001ebc;
    *(int *)(base + 0x1c0) = 0x204;
    if (__Func_8079338(0xfd3) == 0) {
        OvlFunc_914_2008cb4(0xb);
    }
    OvlFunc_914_20088c0(8);
    OvlFunc_914_20088c0(9);
    OvlFunc_914_20088c0(0xa);
    if (__Func_8079338(0x845) == 0) {
        OvlFunc_914_2008abc(0xb);
    }
    return 0;
}
