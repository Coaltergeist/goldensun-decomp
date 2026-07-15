typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

typedef struct {
    s32 x;
    s32 y;
    s32 z;
} vec3_t;

struct Actor {
    void *script;
    u16 scriptPos;
    u16 facing;
    vec3_t pos;
};

struct State {
    u8 pad[500];
    u32 actor;
};

extern u8 gState[];
extern volatile u32 gKeyHeld;
extern struct Actor *__MapActor_GetActor(s32 actorID);
extern void OvlFunc_955_2008310(s32 actorID, s32 delta, s32 unused);
extern void __Func_8010704(s32 srcX, s32 srcY, s32 width, s32 height, s32 dstX, s32 dstY);

void OvlFunc_955_2008400(void)
{
    struct Actor *actor;
    s32 delta;
    s32 tileX;
    s32 targetActor;

    actor = __MapActor_GetActor(((struct State *)gState)->actor);
    tileX = actor->pos.x >> 20;
    delta = 0;
    targetActor = 0x20;
    if ((actor->pos.z >> 20) > 0xc) {
        targetActor = 0x21;
    }

    actor = __MapActor_GetActor(targetActor);
    if ((actor->pos.x >> 20) == tileX) {
        if (tileX > 0x33) {
            if (gKeyHeld & 0x20) {
                delta = -0x40;
            }
        } else {
            if (gKeyHeld & 0x10) {
                delta = 0x40;
            }
        }
        if (delta != 0) {
            OvlFunc_955_2008310(targetActor, delta, 0);
            __Func_8010704(0x78, 0xa, 5, 6, 0x30, 0xa);
            actor = __MapActor_GetActor(0x20);
            tileX = actor->pos.x >> 20;
            __Func_8010704(0x34, 0x1c, 1, 3, tileX, 0xa);
            actor = __MapActor_GetActor(0x21);
            tileX = actor->pos.x >> 20;
            __Func_8010704(0x34, 0x1c, 1, 3, tileX, 0xd);
        }
    }
}
