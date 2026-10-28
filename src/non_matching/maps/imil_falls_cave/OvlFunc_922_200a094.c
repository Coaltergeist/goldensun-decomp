#include "actor.h"
struct CS922S_State { unsigned char pad[0x1f4]; int actorId; };
extern struct CS922S_State CS922S_State __asm__("gState");
extern volatile unsigned int CS922S_Keys __asm__("gKeyHeld");
extern void CS922S_Update(struct Actor *) __asm__("OvlFunc_922_200a014");
extern short Lm922_2464[] __asm__(".Lm922_2464");

extern struct Actor *__GetFieldActor(int);

extern int __Func_8012038(int, int, int);

extern int __Func_8011f54(int, int, int);

extern void __vec3_translate(int, int, vec3_t *);

static inline void CS922S_Advance(int distance, int direction, vec3_t *pos)
{ __vec3_translate(distance, direction, pos); }
void OvlFunc_922_200a094(void) {
    struct Actor *actor;
    short target;
    int saved_tile;
    vec3_t pos;

    actor = __GetFieldActor(CS922S_State.actorId);

loop_start:
    target = Lm922_2464[(CS922S_Keys >> 4) & 0xf];
    if ((unsigned short)target == 0xffff) {
        return;
    }

    {
        int half;
        int tile;
        int x;
        int z;
        u8 *layer;

        __CutsceneStart();
        half = 0x80 << 12;
        pos.x = (actor->pos.x & 0xfff00000) + half;
        pos.y = actor->pos.y;
        pos.z = (actor->pos.z & 0xfff00000) + half;
        x = pos.x;
        z = pos.z;

        layer = &actor->layer;
        saved_tile = __Func_8012038(*layer, x, z);
        __vec3_translate(0x80 << 13, target, &pos);
        tile = __Func_8012038(*layer, pos.x, pos.z);
        if (tile == 0xff || __Func_8011f54(*layer, pos.x, pos.z) - actor->pos.y > half) {
            actor->facing = target;
            goto exit_cutscene;
        }

        pos.x = x;
        pos.z = z;
        actor->speed = 0x80 << 10;
        actor->accel = 0x1999;
        actor->waveCounter = 0;
        __Actor_TravelTo(actor, x, actor->pos.y, z);
        __Actor_SetAnim(actor, 2);
        __Actor_SetAnimSpeed(actor, 0x30);
        __Actor_WaitMovement(actor);
        actor->update = (actorfun_t *)CS922S_Update;

        while (1) {
            CS922S_Advance(0x100000, target, &pos);
            tile = __Func_8012038(*layer, pos.x, pos.z);
            if (tile == 0xff)
                break;
            if (__Func_8011f54(*layer, pos.x, pos.z) - actor->pos.y > (0x80 << 12))
                break;
            x = pos.x;
            z = pos.z;
            actor->speed = 0x80 << 10;
            actor->accel = 0x1999;
            __Actor_TravelTo(actor, pos.x, pos.y, pos.z);
            __Actor_WaitMovement(actor);
            if (tile != saved_tile) {
                actor->update = 0;
                actor->__unk5A |= 1;
                actor->accel = 0x80 << 7;
                goto exit_cutscene;
            }
        }

        actor->speed = 0x80 << 10;
        actor->accel = 0x80 << 9;
        __Actor_TravelTo(actor, x, actor->pos.y, z);
        __Actor_WaitMovement(actor);
        __WaitFrames(2);
        goto loop_start;
    }
exit_cutscene:
    __WaitFrames(10);
    __CutsceneEnd();
}
