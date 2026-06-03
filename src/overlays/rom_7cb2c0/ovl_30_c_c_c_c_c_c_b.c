/* Cluster OvlFunc_945_200d038..OvlFunc_945_200d038 extracted from goldensun/asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c.s.
 *
 * Total .text for this TU = 48 bytes (= 0x30).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_a.o and asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_c.o in
 * goldensun/overlays/rom_7cb2c0/overlay.ld.
 */
extern int __Func_8079338(unsigned int arg);
extern void __Func_80923e4(unsigned int a, int b, int c);

void OvlFunc_945_200d038(unsigned int arg0, unsigned int arg1)
{
    unsigned int p6;
    unsigned int p5;
    unsigned int i;

    p6 = arg0;
    p5 = arg1;
    for (i = 0; i <= 8; i++, p6++, p5++) {
        if (__Func_8079338(p5)) {
            __Func_80923e4(p6, 0, 0);
            return;
        }
    }
}
