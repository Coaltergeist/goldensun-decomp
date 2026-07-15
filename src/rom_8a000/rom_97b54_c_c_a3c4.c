typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

typedef struct Actor {
    u8 pad0[6];
    u16 angle;
    u8 pad8[0x10];
    int scaleX;
    int scaleY;
    u8 pad20[0x10];
    int field30;
    int field34;
    u8 pad38[0x22];
    u8 animFlag;
} Actor;

extern void _PlaySound(int soundId);
extern Actor *CreateParticleActor(int kind, int x, int y, int z);
extern void _Actor_SetAnim(Actor *actor, int animation);
extern void WaitFrames(int frames);

Actor *Func_809a3c4(int x, int y, int z, int finalAngle)
{
    Actor *actor;
    _PlaySound(0x8a);
    actor = CreateParticleActor(0xd7, x, y, z);
    if (actor != 0) {
        int scale = 0x4000;
        actor->scaleY = scale;
        actor->scaleX = scale;
        actor->field30 = 0x30000;
        actor->field34 = 0x30000;
        actor->animFlag = 0;
        _Actor_SetAnim(actor, 1);
        scale = actor->scaleX;
        if (scale < 0x10000) {
            do {
                scale += 0x800;
                actor->scaleY = scale;
                actor->scaleX = scale;
                actor->angle += 0x2000;
                WaitFrames(1);
                scale = actor->scaleX;
            } while (scale <= 0xffff);
        }
        actor->angle = finalAngle;
    }
    return actor;
}
