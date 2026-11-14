/*
 * Remaining diff (exact byte size 0x264, `sub sp, #4`, `0x00..0xa8` 100% match):
 * At `+0xaa`, `02.jump` inverts `bge <+0xb6>; b <+0xc4>` to `blt <+0xc4>; b <+0xb6>`
 * before `07.gcse` inserts the common `dx*dx` / `dz*dz` block at `<+0xae>`, shifting
 * one scratch register choice (`r1` vs `r2`) in the subsequent actor 24/25 blocks.
 */
#include "api.h"
#include "actor.h"
#include "sprite.h"

extern unsigned char *OvlFunc_899_200c704(vec3_t *pos);
extern unsigned char *OvlFunc_899_200c754(unsigned char *, short *);
extern int OvlFunc_899_200c840(unsigned char *p);
extern void OvlFunc_899_200c8a4(int arg0, unsigned char *p);
extern struct Actor *__GetFieldActor(int);
extern unsigned int __Random(void);
extern int __atan2(int, int);
extern void __Actor_SetAnim(struct Actor *, int);
extern unsigned short Lm899_64f8 __asm__(".Lm899_64f8");

void OvlFunc_899_200c8c8(void)
{
    extern unsigned char *scene_3001ebc __asm__("iwram_3001ebc");
    struct Actor *actor;
    unsigned char *scene, *node, *next;
    short facing;
    int dx, dz, angle, blocked;
    {
        struct Actor *leader = __GetFieldActor(0);
        u16 f, u;
        blocked = 0;
        scene = scene_3001ebc;
        actor = __GetFieldActor(2);
        node = OvlFunc_899_200c704(&actor->pos);
        if (node && actor->prevPos.x == (int)0x80000000) {
            dx = (unsigned int)actor->pos.x - (unsigned int)leader->pos.x;
            dz = (unsigned int)actor->pos.z - (unsigned int)leader->pos.z;
            facing = leader->facing;
            angle = (short)__atan2(dz, dx);
            dx >>= 16;
            dz >>= 16;
            if (*(short *)(scene + 0x19c) > 0 &&
                dx * dx + dz * dz <= 400 &&
                (f = facing, u = angle, angle = (short)(f - u), angle > -0x1000) &&
                angle < 0x1000) {
            } else if (dx * dx + dz * dz > 64) {
                facing = actor->facing;
            }
            next = OvlFunc_899_200c754(node, &facing);
            if (!OvlFunc_899_200c840(next)) {
                OvlFunc_899_200c8a4((int)actor, next);
                __Actor_SetAnim(actor, 2);
            } else {
                __Actor_SetAnim(actor, 1);
            }
        }
    }
    actor = __GetFieldActor(24);
    node = OvlFunc_899_200c704(&actor->pos);
    if (node && actor->prevPos.x == (int)0x80000000) {
        {
            int nf = (u16)(((__Random() << 1) >> 16) * 0x6000 - 0x3000) + actor->facing;
            facing = nf;
        }
        next = OvlFunc_899_200c754(node, &facing);
        if (OvlFunc_899_200c840(next)) {
            facing = actor->facing + 0x8000;
            next = OvlFunc_899_200c754(node, &facing);
            if (!OvlFunc_899_200c840(next)) {
                API_MapActor_Surprise(24, 2);
            } else {
                __Actor_SetAnim(actor, 4);
                blocked = 1;
                goto actor25;
            }
        }
        OvlFunc_899_200c8a4((int)actor, next);
        __Actor_SetAnim(actor, 2);
    }
actor25:
    actor = __GetFieldActor(25);
    node = OvlFunc_899_200c704(&actor->pos);
    if (node && actor->prevPos.x == (int)0x80000000) {
        {
            int nf = (u16)(((__Random() * 3) >> 16) * 0x3000 - 0x3000) + actor->facing;
            facing = nf;
        }
        next = OvlFunc_899_200c754(node, &facing);
        if (OvlFunc_899_200c840(next)) {
            facing = actor->facing + 0x8000;
            next = OvlFunc_899_200c754(node, &facing);
            if (!OvlFunc_899_200c840(next)) {
                API_MapActor_Surprise(25, 2);
            } else {
                __Actor_SetAnim(actor, 4);
                blocked += 2;
                goto finish;
            }
        }
        OvlFunc_899_200c8a4((int)actor, next);
        __Actor_SetAnim(actor, 2);
    }
finish:
    if (blocked) {
        if (++Lm899_64f8 > 29)
            *(short *)(scene + 0x182) = blocked + 200;
    } else {
        Lm899_64f8 = blocked;
    }
}
