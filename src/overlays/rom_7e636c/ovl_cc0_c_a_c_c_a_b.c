// fakematch
/* Cluster OvlFunc_958_2009080..OvlFunc_958_2009080 extracted from goldensun/asm/overlays/rom_7e636c/ovl_cc0_c_a_c_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7e636c/ovl_cc0_c_a_c_c_a_a.o and asm/overlays/rom_7e636c/ovl_cc0_c_a_c_c_a_c.o in
 * goldensun/overlays/rom_7e636c/overlay.ld.
 */
extern unsigned char iwram_3001ebc[];

void OvlFunc_958_2009080(void) {
    int r5;
    int r3;
    int r2;
    int a;
    int b;
    int c;
    int d;

    r5 = *(int *)iwram_3001ebc;
    __CutsceneStart();
    if (__GetFlag(0x204) != 0) {
        __ClearFlag(0x9a3);
        a = 0x9a5;
        __asm__ ("" : "+r" (a));
        __ClearFlag(a);
        b = 0x9a4;
        __asm__ ("" : "+r" (b));
        __ClearFlag(b);
        __ClearFlag(0x9a6);
        c = 0x9a5;
        __asm__ ("" : "+r" (c));
        __SetFlag(c);
        d = 0x9a4;
        __asm__ ("" : "+r" (d));
        __SetFlag(d);
    }
    r2 = 0xb6;
    r2 <<= 1;
    r3 = r5 + r2;
    r2 = 0;
    __Func_8091e9c(*(short *)(r3 + r2));
    __MapTransitionOut();
    __WaitMapTransition();
    __CutsceneEnd();
}
