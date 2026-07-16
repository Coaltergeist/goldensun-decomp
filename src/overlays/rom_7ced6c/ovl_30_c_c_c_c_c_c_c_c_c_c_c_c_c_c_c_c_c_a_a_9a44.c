typedef unsigned char u8;
typedef unsigned short u16;
typedef short s16;
typedef unsigned int u32;
typedef int s32;

extern void __vec3_translate(int distance, unsigned int angle, int *position);
extern int __TestCollision(u8 *actor, s32 *position);
extern void __CutsceneStart(void);
extern void __Actor_SetAnim(u8 *actor, int animation);
extern void __WaitFrames(int frames);
extern void __PlaySound(int sound);
extern void __Actor_SetSpriteFlags(u8 *actor, int flags);
extern void __Func_8092158(int a, int b, int c);
extern void __CutsceneEnd(void);

int OvlFunc_946_2009a44(u8 *actor)
{
    s32 buf[3];
    u8 *flags = actor + 0x55;
    s32 *target = buf;
    u8 savedFlags = *flags;

    target[0] = (*(u32 *)(actor + 8) & 0xfff00000) + 0x80000;
    target[1] = *(s32 *)(actor + 0xc);
    target[2] = (*(u32 *)(actor + 0x10) & 0xfff00000) + 0x80000;
    {
        u32 angle = (*(u16 *)(actor + 6) + 0x2000) & 0xc000;
        __vec3_translate(0x200000, angle, target);
    }

    if (__TestCollision(actor, target) == 0) {
        __CutsceneStart();
        __Actor_SetAnim(actor, 6);
        __WaitFrames(6);
        __PlaySound(0x98);
        __Actor_SetAnim(actor, 7);
        *(s32 *)(actor + 0x30) = 0x30000;
        *(s32 *)(actor + 0x34) = 0x20000;
        *(s32 *)(actor + 0x28) = 0x40000;
        *flags &= 0x7e;
        __Actor_SetSpriteFlags(actor, 0);
        __Func_8092158(0, *(s16 *)((u8 *)target + 2), *(s16 *)((u8 *)target + 0xa));
        __Actor_SetAnim(actor, 6);
        __Actor_SetSpriteFlags(actor, 1);
        *flags = savedFlags;
        __CutsceneEnd();
        return 1;
    }
    return 0;
}
