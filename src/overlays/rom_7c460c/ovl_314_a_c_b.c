/* Cluster OvlFunc_939_2008980..OvlFunc_939_2008980 extracted from goldensun/asm/overlays/rom_7c460c/ovl_314_a_c.s.
 *
 * Total .text for this TU = 84 bytes (= 0x54).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7c460c/ovl_314_a_c_a.o and asm/overlays/rom_7c460c/ovl_314_a_c_c.o in
 * goldensun/overlays/rom_7c460c/overlay.ld.
 */
extern unsigned char ewram_2000240;
extern void __Func_8092b94(int);
extern int __Func_8079338(int);
extern void __Func_8092f84(int, int);

void OvlFunc_939_2008980(void) {
    unsigned int r3;
    unsigned int r2;

    r3 = (unsigned int)&ewram_2000240;
    r2 = 0x93;
    r2 <<= 2;
    r3 += r2;
    r2 = 0;
    if (*(short *)((char *)r3 + r2) != 0) {
        __Func_8092b94(0x2412);
    } else if (__Func_8079338(0x941) != 0) {
        __Func_8092b94(0x24dd);
    } else {
        __Func_8092b94(0x1bb6);
    }
    __Func_8092f84(9, 0);
}
