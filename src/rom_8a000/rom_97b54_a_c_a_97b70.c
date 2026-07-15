typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern s32 Random(void);
extern s32 atan2(s32 y, s32 x);
extern void vec3_translate(s32 distance, s32 angle, s32 *position);
extern u8 *CreateParticleActor(s32 type, s32 x, s32 y, s32 z);
extern void _Actor_SetAnim(u8 *actor, s32 anim);
extern void _Actor_SetScript(u8 *actor, const void *script);
extern const u8 Data_9f0b0[];

void Func_8097b70(u8 *self)
{
    u8 *target = *(u8 **)(self + 0x68);
    s32 position[3];
    s32 distance;
    u8 *particle;

    if (target != 0) {
        s32 dx = *(s32 *)(target + 8) - *(s32 *)(self + 8);
        s32 dz = *(s32 *)(target + 0x10) - *(s32 *)(self + 0x10);

        if (dx != 0 || dz != 0) {
            s32 raw = atan2(dz, dx);
            u16 angle = *(u16 *)(self + 6);
            s16 delta = (s16)(raw - angle);

            if (delta > 0x1000)
                delta = 0x1000;
            if (delta < -0x1000)
                delta = -0x1000;
            *(u16 *)(self + 6) = angle + delta;
        }
        *(u8 *)(self + 0x5a) = 0;
    }

    position[0] = *(s32 *)(self + 8);
    position[1] = *(s32 *)(self + 0xc) - Random() * 16 - 0x80000;
    position[2] = *(s32 *)(self + 0x10);
    distance = Random() * 3 * 16;
    vec3_translate(distance, Random(), position);

    particle = CreateParticleActor(0x11d, position[0], position[1], position[2]);
    if (particle != 0) {
        *(u8 *)(particle + 0x55) = 2;
        *(u32 *)(particle + 0x48) = 0x1999;
        _Actor_SetAnim(particle, 0);
        {
            u16 *dst = (u16 *)(particle + 0x5e);
            s32 wait = 0xc;
            *dst = wait;
        }
        _Actor_SetScript(particle, Data_9f0b0);
    }
}
