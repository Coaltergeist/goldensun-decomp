typedef unsigned char u8;
typedef unsigned short u16;
typedef signed int s32;

struct Actor {
    u8 pad0[6];
    u16 angle;
    s32 x;
    s32 y;
    s32 z;
    u8 pad14[0x14];
    s32 motionY;
    s32 pad2c;
    s32 speed;
    s32 bounce;
    u8 pad38[0x1d];
    u8 flags;
};

extern struct Actor *__MapActor_GetActor(int);
extern void __vec3_translate(int, unsigned int, s32 *);
extern int __TestCollision(struct Actor *, void *);
extern void __CutsceneStart(void);
extern void __Actor_SetAnim(struct Actor *, int);
extern void __WaitFrames(int);
extern void __PlaySound(int);
extern void __Actor_SetSpriteFlags(struct Actor *, int);
extern void __Func_8092158(int, int, int);
extern void __CutsceneEnd(void);

int OvlFunc_964_2008cd0(s32 *position)
{
    struct Actor *actor;
    u8 oldFlags;
    s32 destination[3];
    int angle;
    int result;

    actor = __MapActor_GetActor(0);
    oldFlags = actor->flags;
    destination[0] = (actor->x & 0xfff00000) + 0x80000;
    destination[1] = actor->y;
    destination[2] = (actor->z & 0xfff00000) + 0x80000;
    angle = 0x2000;
    angle += actor->angle;
    angle &= 0xc000;
    __vec3_translate(0x100000, angle, destination);
    if (__TestCollision(actor, destination) != 1 &&
        __TestCollision(actor, position) == 0) {
        __CutsceneStart();
        __Actor_SetAnim(actor, 6);
        __WaitFrames(6);
        __PlaySound(0x98);
        __Actor_SetAnim(actor, 7);
        actor->speed = 0xc0 << 10;
        actor->bounce = 0x80 << 10;
        actor->motionY = 0x80 << 11;
        actor->flags &= 0x7e;
        __Actor_SetSpriteFlags(actor, 0);
        __Func_8092158(0,
                       (position[0] >> 20) * 16 + 8,
                       (position[2] >> 20) * 16 + 8);
        __Actor_SetAnim(actor, 6);
        __Actor_SetSpriteFlags(actor, 1);
        __WaitFrames(6);
        actor->flags = oldFlags;
        __CutsceneEnd();
        result = 0;
    } else {
        result = 1;
    }
    return result;
}
