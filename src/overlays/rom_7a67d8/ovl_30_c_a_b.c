/* Cluster OvlFunc_919_20081d4..OvlFunc_919_20081d4 extracted from goldensun/asm/overlays/rom_7a67d8/ovl_30_c_a.s.
 *
 * Total .text for this TU = 44 bytes (= 0x2c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a67d8/ovl_30_c_a_a.o and asm/overlays/rom_7a67d8/ovl_30_c_a_c.o in
 * goldensun/overlays/rom_7a67d8/overlay.ld.
 */
extern void __Func_8005ee0(unsigned short *, unsigned short *);
extern unsigned short L590[2] __asm__(".L590");
extern unsigned short L5b0[] __asm__(".L5b0");
extern int gKeyHeld;
extern int gKeyRepeat;

void OvlFunc_919_20081d4(void) {
    L590[0] = gKeyHeld;
    L590[1] = gKeyRepeat;
    __Func_8005ee0(L590, L5b0);
}
