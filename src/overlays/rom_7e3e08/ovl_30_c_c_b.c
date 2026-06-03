/* Cluster OvlFunc_957_2008f6c..OvlFunc_957_2008f6c extracted from goldensun/asm/overlays/rom_7e3e08/ovl_30_c_c.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7e3e08/ovl_30_c_c_a.o and asm/overlays/rom_7e3e08/ovl_30_c_c_c.o in
 * goldensun/overlays/rom_7e3e08/overlay.ld.
 */
extern void OvlFunc_957_2008f10(int a, int b, int c);

void OvlFunc_957_2008f6c(int arg0) {
    int i;

    for (i = 0; i <= 4; i++) {
        OvlFunc_957_2008f10(i + 0xb, 0xc0 << 13, arg0);
        arg0 += (int)0xffffcccd;
    }
}
