/* Cluster OvlFunc_940_20082d0..OvlFunc_940_20082d0 extracted from goldensun/asm/overlays/rom_7c5974/ovl_30_c_c_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7c5974/ovl_30_c_c_c_a_a.o and asm/overlays/rom_7c5974/ovl_30_c_c_c_a_c.o in
 * goldensun/overlays/rom_7c5974/overlay.ld.
 */
void OvlFunc_940_20082d0(void) {
    unsigned int r5;
    unsigned int r3;

    r5 = *(unsigned short *)((char *)__MapActor_GetActor(0) + 6);
    if (__GetFlag(0x941) != 0) {
        r3 = r5 + 0xffff5fff;
        if (r3 <= 0x3ffe) {
            __Func_80b0278(0x1d, 0xe);
        } else {
            unsigned long long t;
            unsigned long v;
            __CutsceneStart();
            __MessageID(0x24f5);
            t = 0xe;
            do { t = (unsigned long) t; } while (0);
            v = t;
            __ActorMessage(v, 0);
            __CutsceneEnd();
        }
    } else {
        __MessageID(0x1bcd);
        __ActorMessage(0xe, 0);
    }
}
