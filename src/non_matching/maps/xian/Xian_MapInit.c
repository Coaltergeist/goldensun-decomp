/* Remaining diff: minor register allocation / QImode 0 spill difference on the final
 * actor 0x15 __unk55 store (target reloads .word 0 into r5; camelot-gcc reuses r7 = 0).
 */
#include "api.h"
#include "actor.h"

struct XianStateView {
    u8 pad[0x1c2];
    s16 room;
};

extern struct XianStateView gState;
extern unsigned char *iwram_3001ebc;
extern void __Func_8091ff0(int);
extern void __Func_80929d8(void *, int);
extern void __Func_8092950(int, int);
extern void __Actor_SetSpriteFlags(int, int);
extern void OvlFunc_928_2008324(void);
extern int OvlFunc_928_2008500(struct Actor *);

static inline void CS928_Half(unsigned short *p, int value) { *p = value; }

int Xian_MapInit(void)
{
    u32 i;
    struct Actor *actor;
    struct Actor *actor2;
    struct Sprite *sprite;
    u8 *flags;
    int x;
    int z;

    *(int *)(iwram_3001ebc + 0x1c0) = 0x100;
    __Func_8091ff0(0xa9);

    if (gState.room > 9) {
        API_ClearFlag(0x12f);
    }

    if (API_GetFlag(0x895)) {
        API_Func_8092adc(0xd, 0x8000, 0);
        API_MapActor_SetPos(0xe, 0x92 << 16, 0x9c << 17);
        API_Func_8092adc(0xe, 0, 0);
        if (API_GetFlag(0x89a)) {
            API_MapActor_SetPos(0x11, 0, 0);
        }
    }

    if (API_GetFlag(0x8b0)) {
        API_MapActor_SetPos(0x11, 0, 0);
    }

    for (i = 0; i <= 2; i++) {
        actor = (struct Actor *)__MapActor_GetActor(i + 0x17);
        sprite = actor->sprite;
        sprite->oam.priority = 1;
        actor->__unk55 = 0;
        actor->collision = 8;
        __Actor_SetSpriteFlags((int)actor, 0);
        __Func_80929d8(actor, 0xf);
        flags = &actor->flags;
        *flags = (*flags & 0xfe) | 2;
    }

    if (API_GetFlag(0x202)) {
        API_MapActor_SetPos(0xe, 0x92 << 16, 0x9c << 17);
        API_Func_8092adc(0xe, 0, 0);
    }

    if (API_GetFlag(0x201)) {
        __MapActor_SetAnim(0x14, 5);
        x = ((struct Actor *)__MapActor_GetActor(0x14))->pos.x;
        z = ((struct Actor *)__MapActor_GetActor(0x14))->pos.z;
        __Func_8010704(3, 0x11, 1, 1, x >> 20, z >> 20);
        __StartTask(OvlFunc_928_2008324, 0xc8 << 4);
    }

    __Func_8092950(0x12, 2);
    ((struct Actor *)__MapActor_GetActor(0x12))->update = (actorfun_t)OvlFunc_928_2008500;

    actor2 = (struct Actor *)__MapActor_GetActor(0x13);
    actor2->__unk55 = 0;
    actor2->pos.y = 0x80 << 13;
    actor2->prevPos.y = 0x80 << 13;
    actor2->scale.x = 0x8ccc;
    actor2->scale.y = 0x6666;
    CS928_Half(&actor2->sprite->rotation, 0x8000);

    __Actor_SetSpriteFlags((int)__MapActor_GetActor(0x15), 0);
    ((struct Actor *)__MapActor_GetActor(0x15))->__unk55 = 0;
    ((struct Actor *)__MapActor_GetActor(0x15))->pos.y = 0;
    ((struct Actor *)__MapActor_GetActor(0x15))->prevPos.y = 0x80 << 24;

    return 0;
}
