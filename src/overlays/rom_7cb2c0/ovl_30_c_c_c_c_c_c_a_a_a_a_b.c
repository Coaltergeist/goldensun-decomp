// fakematch
/* Cluster OvlFunc_945_200c0e8..OvlFunc_945_200c0e8 extracted from goldensun/asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_a_a_a_a.s.
 *
 * Total .text for this TU = 84 bytes (= 0x54).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_a_a_a_a_a.o and asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_a_a_a_a_c.o in
 * goldensun/overlays/rom_7cb2c0/overlay.ld.
 */
extern int __MessageID(int);
extern void __CutsceneStart(void);
extern void __CutsceneWait(int);
extern void __Func_8092adc(int, int, int);
extern void __Func_80925cc(int, int);
extern void __Func_809259c(int, int);
extern void __Func_8093040(int, int, int);
extern void OvlFunc_945_200c8e8(int, int, int);
extern int _MSG_1e40;

void OvlFunc_945_200c0e8(void) {
    unsigned int w;
    unsigned int z;
    __CutsceneStart();
    OvlFunc_945_200c8e8(0xf, 1, 1);
    __Func_80925cc(8, 1);
    __CutsceneWait(0xa);
    w = 0xc0;
    z = 0x14;
    {
        register unsigned int rq __asm__("r0") = 8;
        __asm__ volatile ("" : : "r" (rq));
        w <<= 6;
        __Func_8092adc(rq, w, z);
    }
    __Func_809259c(8, 2);
    __MessageID((int) (&_MSG_1e40));
    __Func_8093040(8, 0, 0x14);
    OvlFunc_945_200c8e8(9, 0xe, 0);
}
