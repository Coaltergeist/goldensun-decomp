/*
 * Requires GAIA_CFLAGS (-fstrict-aliasing) for OAM bitfield/update scheduling (`0xda..0x130`
 * and `0x64..0xd0` match 100% under -fstrict-aliasing).
 * Remaining diff under GAIA_CFLAGS: 14-insn register allocation hunk at `0x3e..0x5a` where
 * `store_bit_field` on `created->__unk55 = 0` leaves an unused `QImode 0` pseudo (`reg 54`)
 * that `local-alloc` assigns to `r3`, preventing `global` from assigning `created + 0x55`
 * (`pref STACK_REG`) to `r3` so `reload_cse_move2add` cannot fold `0x55 + 0x0f -> 0x64`.
 * Twin of `OvlFunc_882_200c41c` in `src/maps/vale_river_prologue.c`.
 */
struct AerieRingOAM {
    struct Sprite *dest;
    struct {
        u16 posY : 8;
        u16 affineMode : 2;
        u16 objMode : 2;
        u16 mosaic : 1;
        u16 bpp : 1;
        u16 shape : 2;
    } __attribute__((packed)) attr0;
    struct {
        u16 posX : 9;
        u16 pad : 5;
        u16 size : 2;
    } __attribute__((packed)) attr1;
    union {
        struct {
            u16 tile : 10;
            u16 priority : 2;
            u16 palette : 4;
        } __attribute__((packed));
        struct {
            u8 attr2Lo;
            u8 tileHi : 2;
            u8 prio : 2;
            u8 pal : 4;
        } __attribute__((packed));
    } __attribute__((packed)) attr2;
};

void OvlFunc_969_200a200(unsigned int arg0)
{
    extern u8 *iwram_3001f30;
    extern struct SpriteSlot gSpriteSlots[];
    extern struct Actor *__CreateActor(int, fx32, fx32, fx32);
    extern void __Sprite_SetAnim(struct Sprite *, int);
    extern void __Func_8003f3c(int);
    extern void OvlFunc_969_200a1ac(struct Actor *);
    extern void OvlFunc_969_200a15c(struct Actor *);
    struct Actor *actor = (struct Actor *)arg0;
    u8 *map = iwram_3001f30;
    struct Actor *spawned[2];
    struct Actor *a0, *a1;
    int i;

    __PlaySound(0x83);

    for (i = 0; i < 2; i++) {
        struct Actor *created = __CreateActor(0x1a, actor->pos.x, actor->pos.y, actor->pos.z);
        spawned[i] = created;
        if (created != NULL) {
            struct Sprite *sprite;

            created->floorPos = actor->floorPos;
            sprite = created->sprite;
            created->__unk55 = 0;
            created->waveCounter = 0;
            created->linkedActor = actor;
            if (sprite != NULL) {
                struct AerieRingOAM *oam = (struct AerieRingOAM *)sprite;

                __Sprite_SetAnim(sprite, 0);
                sprite->flags = 0;
                __Func_8003f3c(sprite->slot);
                sprite->slot = *(u16 *)(map + 0x46);
                sprite->__unk1D |= 1;
                oam->attr2.tile = gSpriteSlots[sprite->slot].vramOffset >> 5;
                oam->attr0.bpp = 0;
                oam->attr0.shape = 1;
                oam->attr1.size = 2;
                sprite->layers[0]->frameID = 0;
            }
        }
    }

    a0 = spawned[0];
    a0->update = (actorfun_t)OvlFunc_969_200a1ac;
    ((struct AerieRingOAM *)a0->sprite)->attr2.prio = ((struct AerieRingOAM *)actor->sprite)->attr2.prio;

    a1 = spawned[1];
    ((struct AerieRingOAM *)a1->sprite)->attr2.prio = ((struct AerieRingOAM *)actor->sprite)->attr2.prio;
    a1->update = (actorfun_t)OvlFunc_969_200a15c;
    a1->flags = 2;
}
