/* Cluster OvlFunc_884_2008714..OvlFunc_884_2008714 extracted from goldensun/asm/overlays/rom_784360/ovl_30_c_a_a_a_c_c.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_784360/ovl_30_c_a_a_a_c_c_a.o and asm/overlays/rom_784360/ovl_30_c_a_a_a_c_c_c.o in
 * goldensun/overlays/rom_784360/overlay.ld.
 */
extern unsigned char iwram_3001ebc[];

void OvlFunc_884_2008714(unsigned int arg0)
{
    unsigned char *base;

    if (__GetFlag(0x834)) {
        __Func_8095214();
    }
    base = *(unsigned char **)iwram_3001ebc;
    *(unsigned int *)(base + 0x1c0) = 0x100;
    *(unsigned int *)(base + 0x1c8) = 0x10;
    __Func_8091e9c(arg0);
}
