// fakematch
/* Cluster OvlFunc_953_20084c8..OvlFunc_953_20084c8 extracted from goldensun/asm/overlays/rom_7d95dc/ovl_30_c_c_c_a_a_a_c_a.s.
 *
 * Total .text for this TU = 68 bytes (= 0x44).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7d95dc/ovl_30_c_c_c_a_a_a_c_a_a.o and asm/overlays/rom_7d95dc/ovl_30_c_c_c_a_a_a_c_a_c.o in
 * goldensun/overlays/rom_7d95dc/overlay.ld.
 */
// fakematch

void OvlFunc_953_20084c8(void) {
    register int flag __asm__("r1");
    register int actor __asm__("r0");
    register int arg2 __asm__("r2");
    unsigned long long ta;
    unsigned long msgactor;

    __CutsceneStart();

    flag = 0x81;
    __asm__ volatile ("" : "+r"(flag));
    actor = 0xe;
    __asm__ volatile ("" : "+r"(actor));
    flag <<= 1;
    __MapActor_Surprise(actor, flag);

    __Func_80925cc(0xe, 2);
    __MessageID(0x2116);
    OvlFunc_953_2009c48(0xe);

    flag = 0x81;
    __asm__ volatile ("" : "+r"(flag));
    arg2 = 0x28;
    actor = 0xe;
    __asm__ volatile ("" : "+r"(actor));
    flag <<= 1;
    __MapActor_Emote(actor, flag, arg2);

    ta = 0xe;
    do { ta = (unsigned long) ta; } while (0);
    msgactor = ta;
    __ActorMessage(msgactor, 0);

    __CutsceneEnd();
}
