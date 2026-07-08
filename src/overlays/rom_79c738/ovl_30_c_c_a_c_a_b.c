// fakematch
/* Cluster OvlFunc_909_20082cc..OvlFunc_909_20082cc extracted from goldensun/asm/overlays/rom_79c738/ovl_30_c_c_a_c_a.s.
 *
 * Total .text for this TU = 108 bytes (= 0x6c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_79c738/ovl_30_c_c_a_c_a_a.o and asm/overlays/rom_79c738/ovl_30_c_c_a_c_a_c.o in
 * goldensun/overlays/rom_79c738/overlay.ld.
 */
void OvlFunc_909_20082cc(void) {
    unsigned long long t;
    unsigned long v;
    __CutsceneStart();
    if (__GetFlag(0x202) != 0) {
        __MessageID(0x174c);
    } else if (__GetFlag(0x845) == 0) {
        __MessageID(0x1436);
    } else {
        __MessageID(0x1434);
        if (__GetFlag(0x84e) != 0) {
            __MessageID(0x176f);
        }
    }
    t = 0x11;
    do { t = (unsigned long) t; } while (0);
    v = t;
    __ActorMessage(v, 0);
    __CutsceneEnd();
}
