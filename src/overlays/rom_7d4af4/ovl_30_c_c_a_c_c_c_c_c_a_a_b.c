// fakematch
/* Cluster OvlFunc_949_2008528..OvlFunc_949_2008528 extracted from goldensun/asm/overlays/rom_7d4af4/ovl_30_c_c_a_c_c_c_c_c_a_a.s.
 *
 * Total .text for this TU = 64 bytes (= 0x40).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7d4af4/ovl_30_c_c_a_c_c_c_c_c_a_a_a.o and asm/overlays/rom_7d4af4/ovl_30_c_c_a_c_c_c_c_c_a_a_c.o in
 * goldensun/overlays/rom_7d4af4/overlay.ld.
 */
extern int __MessageID(int);
extern void __ActorMessage(int, int);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __Func_8092adc(int, int, int);
extern int _MSG_1fa0;

void OvlFunc_949_2008528(void) {
    unsigned int w;
    unsigned int z;
    __CutsceneStart();
    __MessageID((int) (&_MSG_1fa0));
    w = 0xc0;
    z = 0;
    {
        register unsigned int rq __asm__("r0") = 0x19;
        __asm__ volatile ("" : : "r" (rq));
        w <<= 8;
        __Func_8092adc(rq, w, z);
    }
    __ActorMessage(0x19, 0);
    w = 0x80;
    z = 0;
    {
        register unsigned int rq __asm__("r0") = 0x19;
        __asm__ volatile ("" : : "r" (rq));
        w <<= 8;
        __Func_8092adc(rq, w, z);
    }
    __ActorMessage(0x19, 0);
    __CutsceneEnd();
}
