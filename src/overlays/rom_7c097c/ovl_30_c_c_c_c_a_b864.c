typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u32 __Random(void);
extern u8 *__CreateActor(s32 type, s32 x, s32 y, s32 z);
extern void __Func_80929d8(u8 *actor, s32 value);
extern void __Actor_SetSpriteFlags(u8 *actor, s32 flags);
extern void __Actor_SetAnim(u8 *actor, s32 anim);
extern void __Actor_SetScript(u8 *actor, const void *script);
extern u8 gScript_936__0200d120[];

void OvlFunc_936_200b864(s32 param_1, s32 param_2, s32 param_3)
{
    u8 *actor;
    u8 *sprite;
    u8 *p;
    u32 rnd;
    s32 x;
    s32 y;
    s32 z;

    rnd = __Random();
    x = param_1 - 0x80000;
    y = (((rnd << 3) >> 16) << 16) + param_2 + 0x100000;
    actor = __CreateActor(0xde, x, y, param_3);
    if (actor != 0) {
        p = actor + 0x55;
        z = 0;
        *p = z;
        sprite = *(u8 **)(actor + 0x50);
        sprite[9] = (sprite[9] & (z - 0xd)) | 8;
        __Func_80929d8(actor, 9);
        __Actor_SetSpriteFlags(actor, 0);
        *(s32 *)(actor + 0x24) = ((((__Random() << 1) >> 16)) - 1) << 16;
        {
            register s32 v28 asm("r3") = (((__Random() * 6) >> 16) - 3) << 16;
            register u8 *r2ptr asm("r2") = actor;
            asm volatile("" : "+r"(v28), "+r"(r2ptr));
            *(s32 *)(actor + 0x28) = v28;
            r2ptr += 0x64;
            {
                register s32 v14 asm("r3") = 0x14;
                asm volatile("" : "+r"(v14), "+r"(r2ptr));
                *(u16 *)r2ptr = v14;
            }
            r2ptr -= 3;
            *r2ptr = 1;
        }
        __Actor_SetAnim(actor, 1);
        __Actor_SetScript(actor, gScript_936__0200d120);
    }
}
