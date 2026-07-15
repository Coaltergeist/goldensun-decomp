typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern void __vec3_translate(u32 angle, u32 distance, u32 *vector);
extern void __Actor_SetAnim(u8 *actor, s32 animation);
extern void __PlaySound(s32 sound);
extern void __WaitFrames(s32 frames);

void OvlFunc_932_200b5ac(u8 *actor)
{
    u32 v[3];
    u32 dir;
    register u32 x asm("r9");
    register u32 z asm("r10");
    register s32 i asm("r8");

    dir = (*(u16 *)(actor + 6) + 0x4000) & 0xc000;
    v[0] = *(u32 *)(actor + 8);
    v[1] = *(u32 *)(actor + 0xc);
    v[2] = *(u32 *)(actor + 0x10);
    __vec3_translate(0x180000, dir, v);
    x = v[0] + 0x80000;
    x &= 0xfff00000;
    z = v[2] + 0x80000;
    z &= 0xfff00000;
    dir += 0x8000;
    __Actor_SetAnim(actor, 5);
    __PlaySound(0xb8);
    i = 15;
    do {
        dir += 0x400;
        v[0] = x;
        v[2] = z;
        __vec3_translate(0x180000, dir, v);
        *(u32 *)(actor + 8) = v[0];
        *(u32 *)(actor + 0x10) = v[2];
        *(u16 *)(actor + 6) = dir + 0x4000;
        __WaitFrames(1);
        i--;
    } while (i >= 0);
    __PlaySound(0xe9);
}
