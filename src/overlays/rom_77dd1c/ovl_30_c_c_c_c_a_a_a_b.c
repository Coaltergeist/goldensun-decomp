// fakematch
/* Cluster OvlFunc_882_20096cc..OvlFunc_882_20096cc extracted from goldensun/asm/overlays/rom_77dd1c/ovl_30_c_c_c_c_a_a_a.s.
 *
 * Total .text for this TU = 112 bytes (= 0x70).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_77dd1c/ovl_30_c_c_c_c_a_a_a_a.o and asm/overlays/rom_77dd1c/ovl_30_c_c_c_c_a_a_a_c.o in
 * goldensun/overlays/rom_77dd1c/overlay.ld.
 */
extern int __GetFlag(int);
extern int __MessageID(int);
extern void __ActorMessage(int, int);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __CutsceneWait(int);
extern void __Func_809280c(int, int, int);
extern void __Func_8092adc(int, int, int);
extern void OvlFunc_882_200973c(void);
extern int _MSG_ed0;

void OvlFunc_882_20096cc(void) {
    unsigned int w;
    if (__GetFlag(0x841)) {
        __CutsceneStart();
        __Func_809280c(0x16, 0, 0);
        __CutsceneWait(0x14);
        __MessageID((int) (&_MSG_ed0));
        __ActorMessage(0x16, 0);
        w = 0xe0;
        {
            register unsigned int rq __asm__("r0") = 0x16;
            __asm__ volatile ("" : : "r" (rq));
            w <<= 8;
            __Func_8092adc(rq, w, 0xa);
        }
        __CutsceneEnd();
    } else if (!__GetFlag(0x837)) {
        __CutsceneStart();
        __MessageID(0xe6e);
        OvlFunc_882_200973c();
        __CutsceneEnd();
    }
}
