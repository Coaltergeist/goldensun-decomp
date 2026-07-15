typedef unsigned char u8; typedef unsigned int u32;
typedef struct Vec3 { int x,y,z; } Vec3;
typedef struct Actor {
    u8 pad0[8]; Vec3 position; u8 pad14[0x14]; int field28;
    u8 pad2c[0x24]; u8 *sprite;
} Actor;
extern u32 Random(void);
extern void vec3_translate(int magnitude, u32 angle, Vec3 *position);
extern Actor *CreateParticleActor(int kind, int x, int y, int z);
extern void _Actor_SetScript(Actor *actor, const u8 *script);
extern void _Actor_SetAnim(Actor *actor, int animation);
extern const u8 L9e87c[] asm(".L9e87c");

void Func_808eee4(Actor *self)
{
    Vec3 position;
    Actor *particle;
    if ((unsigned)(self->field28 + 0xff) <= 0x1fe)
        *((u8 *)self + 0x55) = 0;
    if ((Random() * 100 >> 16) < 10) {
        position.x = self->position.x;
        position.y = self->position.y;
        position.z = self->position.z;
        {
            u32 magnitude = Random();
            u32 angle = Random();
            vec3_translate(magnitude << 4, angle, &position);
        }
        particle = CreateParticleActor(0x11d, position.x, position.y, position.z);
        if (particle != 0) {
            _Actor_SetScript(particle, L9e87c);
            _Actor_SetAnim(particle, 0);
            { register int mask asm("r3"); register int value asm("r2"); mask = 13; value = particle->sprite[9]; mask = -mask; mask = mask & value; mask |= 4; particle->sprite[9] = mask; }
        }
    }
}
