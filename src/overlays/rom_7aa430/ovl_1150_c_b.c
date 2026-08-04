/* Cluster OvlFunc_923_200916c..OvlFunc_923_200916c extracted from goldensun/asm/overlays/rom_7aa430/ovl_1150_c.s.
 *
 * Total .text for this TU = 72 bytes (= 0x48).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7aa430/ovl_1150_c_a.o and asm/overlays/rom_7aa430/ovl_1150_c_c.o in
 * goldensun/overlays/rom_7aa430/overlay.ld.
 */
typedef struct { unsigned char _bytes[4]; } ActorCmd;
extern ActorCmd gScript_884__0200a874[29];
extern ActorCmd gScript_923__0200a8c8[21];

void OvlFunc_923_200916c(void)
{
    unsigned char *p;
    int v;

    p = __MapActor_GetActor(0);
    v = *(int *)(p + 8);
    if (v < 0) {
        v += 0xfffff;
    }
    v >>= 20;
    __SetFlag(0x205);
    if (v == 7) {
        __MapActor_SetBehavior(8, gScript_884__0200a874);
    } else {
        __MapActor_SetBehavior(8, gScript_923__0200a8c8);
    }
}
