// fakematch
/* Cluster OvlFunc_971_20082d8..OvlFunc_971_20082d8 extracted from goldensun/asm/overlays/rom_7fb4a8/ovl_30_a_c_c_c_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7fb4a8/ovl_30_a_c_c_c_a_a_a.o and asm/overlays/rom_7fb4a8/ovl_30_a_c_c_c_a_a_c.o in
 * goldensun/overlays/rom_7fb4a8/overlay.ld.
 */
extern unsigned long L1f50 __asm__(".L1f50");

unsigned int OvlFunc_971_20082d8(void)
{
    unsigned int result;
    unsigned int f;

    result = __GetFlag(0x203);
    if (result == 0) {
        L1f50 = L1f50 + 1;
        if (L1f50 == 300) {
            L1f50 = 0;
            __ClearFlag(0x200);
        }
        f = 0x200;
        __asm__ ("" : "+r" (f));
        result = __GetFlag(f);
        if (result == 0) {
            __CutsceneStart();
            __MessageID(0x292e);
            __Func_8092c40(8, 0);
            __WaitFrames(5);
            __SetFlag(0x200);
            result = __CutsceneEnd();
        }
    }
    return result;
}
