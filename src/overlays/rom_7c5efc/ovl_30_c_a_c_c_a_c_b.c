// fakematch
/* Cluster OvlFunc_941_20081b0..OvlFunc_941_20081b0 extracted from goldensun/asm/overlays/rom_7c5efc/ovl_30_c_a_c_c_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7c5efc/ovl_30_c_a_c_c_a_c_a.o and asm/overlays/rom_7c5efc/ovl_30_c_a_c_c_a_c_c.o in
 * goldensun/overlays/rom_7c5efc/overlay.ld.
 */
struct Actor {
unsigned char pad[0x23];
unsigned char unk23;
};
void OvlFunc_941_20080d4(void);

void OvlFunc_941_20081b0(void) {
    struct Actor *actor;
    int flag;

    actor = __MapActor_GetActor(10);
    __SetFlag(0x80 << 2);
    if (actor != 0) {
        __Actor_SetSpriteFlags(actor, 0);
        actor->unk23 = 1;
    }
    flag = 0x202;
    __asm__ volatile ("" : "+r" (flag));
    if (__GetFlag(flag) == 0) {
        __PlaySound(0x9d);
        OvlFunc_941_20080d4();
        __PlaySound(0x50);
        __SetFlag(0x202);
    }
}
