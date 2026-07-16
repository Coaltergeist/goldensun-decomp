typedef unsigned char u8;
typedef unsigned short u16;

typedef struct {
    u8 pad0[6];
    u16 direction;
    int x;
    int y;
    int z;
    u8 pad14[0x47];
    u8 state;
    u8 pad5c[6];
    u8 done;
} Actor;

extern int OvlFunc_883_200d610(int *a, int *b);
extern int __atan2(int y, int x);
extern void __Actor_SetAnim(Actor *actor, int animation);

int OvlFunc_883_200d64c(Actor *actor, Actor *target, int distance, int force)
{
    int result = 0;
    u16 angle;
    int direction;
    int ahead;
    int left;
    int right;
    u8 *state;
    u8 *done;
    int *targetPos;
    int *actorPos;

    state = &actor->state;
    if (*state == 1 && *(done = &actor->done) == 0) {
        __Actor_SetAnim(actor, 1);
        return 1;
    }
    done = &actor->done;

    targetPos = &target->x;
    actorPos = &actor->x;
    if (OvlFunc_883_200d610(targetPos, actorPos) < distance || force != 0) {
        angle = __atan2(target->z - actor->z, *targetPos - *actorPos);
        left = (angle - 0x1000) & 0xf000;
        right = (angle + 0x1000) & 0xf000;
        ahead = angle & 0xf000;
        direction = actor->direction & 0xf000;
        if (ahead == direction ||
            right == direction ||
            left == direction ||
            force != 0) {
            *state = 1;
            __Actor_SetAnim(actor, 1);
            result = 1;
            *done = 1;
        } else {
            *state = force;
            __Actor_SetAnim(actor, 2);
            *done = force;
        }
    } else {
        *state = force;
        __Actor_SetAnim(actor, 2);
        *done = force;
    }
    return result;
}
