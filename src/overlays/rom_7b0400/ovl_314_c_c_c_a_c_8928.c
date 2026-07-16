typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern void OvlFunc_925_2008ad0(void);
extern void __Actor_SetAnim(u8 *actor, int animation);
extern void __Actor_SetSpriteFlags(u8 *actor, int flags);
extern void __ClearFlag(int flag);
extern void __Func_8092158(int actor_id, int x, int z);
extern u8 *__MapActor_GetActor(int actor_id);
extern void __PlaySound(int sound_id);
extern int __TestCollision(u8 *actor, void *test);
extern void __WaitFrames(int frames);
extern void __vec3_translate(int angle, int distance, s32 *vector);

void OvlFunc_925_2008928(void)
{
    s32 buf[3];
    register u8 *actor asm("r5") = __MapActor_GetActor(0);
    u32 angle = (*(u16 *)(actor + 6) + 0x1000) & 0xe000;
    register u8 *flag asm("r7") = actor + 0x55;
    register u8 savedFlag asm("r8") = *flag;
    register s32 *target asm("r6") = buf;

    target[0] = (*(u32 *)(actor + 8) & 0xfff00000) + 0x80000;
    target[1] = *(s32 *)(actor + 0xc);
    target[2] = (*(u32 *)(actor + 0x10) & 0xfff00000) + 0x80000;
    __vec3_translate(0x200000, angle, target);

    if (__TestCollision(actor, target) == 0) {
        __ClearFlag(0x250);
        OvlFunc_925_2008ad0();
        __Actor_SetAnim(actor, 6);
        __WaitFrames(6);
        __PlaySound(0x98);
        __Actor_SetAnim(actor, 7);
        *(s32 *)(actor + 0x30) = 0x30000;
        *(s32 *)(actor + 0x34) = 0x20000;
        *(s32 *)(actor + 0x28) = 0x40000;
        *flag &= 0x7e;
        __Actor_SetSpriteFlags(actor, 0);
        __Func_8092158(0, *(s16 *)((u8 *)target + 2), *(s16 *)((u8 *)target + 0xa));
        __Actor_SetAnim(actor, 6);
        __Actor_SetSpriteFlags(actor, 1);
        *flag = savedFlag;
    }
}
