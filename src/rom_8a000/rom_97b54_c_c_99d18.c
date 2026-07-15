typedef unsigned char u8; typedef unsigned short u16; typedef unsigned int u32;
typedef struct Vec3 { int x,y,z; } Vec3;
typedef struct Actor {
    u8 pad0[8]; Vec3 position; u8 pad14[0x34]; int field48;
    u8 pad4c[9]; u8 field55; u8 pad56[8]; u16 field5e;
} Actor;
typedef struct Root { u8 pad[0x14]; Actor *actor; } Root;
extern Root *iwram_3001f30;
extern u32 Random(void);
extern void vec3_translate(int magnitude, u32 angle, Vec3 *position);
extern Actor *CreateParticleActor(int kind, int x, int y, int z);
extern void _Actor_SetAnim(Actor *actor, int animation);
extern void _Actor_SetScript(Actor *actor, const u8 *script);
extern const u8 Data_9f0b0[];

void Func_8099d18(void)
{
    Actor *source = iwram_3001f30->actor;
    Vec3 position;
    Actor *particle;
    u32 magnitude;
    u32 angle;
    position.x = source->position.x;
    position.y = source->position.y - (Random() << 4) + 0x180000;
    position.z = source->position.z;
    magnitude = Random() * 3;
    angle = Random();
    vec3_translate(magnitude << 4, angle, &position);
    particle = CreateParticleActor(0x11d, position.x, position.y, position.z);
    if (particle != 0) {
        particle->field55 = 2;
        particle->field48 = 0x1999;
        _Actor_SetAnim(particle, 0);
        particle->field5e = 0xc;
        _Actor_SetScript(particle, Data_9f0b0);
    }
}
