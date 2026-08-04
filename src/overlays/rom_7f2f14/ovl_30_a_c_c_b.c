/* Cluster OvlFunc_968_2008c5c..OvlFunc_968_2008c5c extracted from goldensun/asm/overlays/rom_7f2f14/ovl_30_a_c_c.s.
 *
 * Total .text for this TU = 108 bytes (= 0x6c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7f2f14/ovl_30_a_c_c_a.o and asm/overlays/rom_7f2f14/ovl_30_a_c_c_c.o in
 * goldensun/overlays/rom_7f2f14/overlay.ld.
 */
struct Actor {
unsigned char pad0[0xc];
int posY;
unsigned char pad1[0x13];
unsigned char flags;
unsigned char pad2[0xc];
unsigned int speed;
unsigned int accel;
unsigned char pad3[0x1d];
unsigned char unk55;
unsigned char pad4[3];
unsigned char unk59;
unsigned char pad5[9];
unsigned char unk63;
unsigned char pad6[8];
void *update;
};
extern void __Actor_SetSpriteFlags(struct Actor *actor, int flags);
extern void __Actor_SetAnim(struct Actor *actor, int anim);
extern void __Actor_SetScript(struct Actor *actor, void *script);
extern void OvlFunc_968_2008b98(void);

struct Actor *OvlFunc_968_2008c5c(unsigned int param_1, unsigned int param_2, void *param_3) {
    struct Actor *actor;
    unsigned int y;

    y = param_2 << 16;
    actor = __CreateActor(0x11c, param_1 << 16, 0, y);
    if (actor == 0) {
        return 0;
    }
    actor->speed = 0x10000;
    actor->accel = 0x10000;
    __Actor_SetSpriteFlags(actor, 0);
    __Actor_SetAnim(actor, 7);
    actor->unk55 = 0;
    actor->posY = 0;
    actor->unk59 = 0;
    actor->flags = 2;
    actor->update = (void *)OvlFunc_968_2008b98;
    actor->unk63 = 0;
    __Actor_SetScript(actor, param_3);
    return actor;
}
