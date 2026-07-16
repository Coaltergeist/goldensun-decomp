typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

typedef struct {
    u8 pad[0x1c0];
    u32 unk1C0;
} MapWorkState;

typedef struct {
    u8 pad[0x1c0];
    s16 unk1C0;
    s16 unk1C2;
} GlobalState;

extern MapWorkState *iwram_3001ebc;
extern GlobalState gState;
extern u8 Value_1c[] asm("0x1c");

extern void __ClearFlag(s32 flag);
extern s32 __GetFlag(s32 flag);
extern u8 *__MapActor_GetActor(s32 actorId);
extern void __MapActor_SetPos(s32 actorId, s32 x, s32 y);
extern void __Actor_SetSpriteFlags(u8 *actor, s32 flags);
extern void __MapActor_SetAnim(s32 actorId, s32 anim);
extern void __Func_8010704(s32 a0, s32 a1, s32 a2, s32 a3, s32 a4, s32 a5);

s32 OvlFunc_906_2008414(void)
{
    iwram_3001ebc->unk1C0 = 0x204;
    if (gState.unk1C0 == (s32)Value_1c) {
        if (gState.unk1C2 == 5) {
            __ClearFlag(0x12f);
        } else {
            {
                register u8 *p asm("r0") = __MapActor_GetActor(8);
                register s32 loaded asm("r2");
                register s32 mask asm("r3");

                p += 0x59;
                loaded = *p;
                mask = 0x10;
                asm volatile("" : "+r"(loaded), "+r"(mask));
                mask |= loaded;
                *p = mask;
            }
            if (__GetFlag(0x864) != 0) {
                __MapActor_SetPos(8, 0xad << 17, 0x92 << 17);
                __Actor_SetSpriteFlags(__MapActor_GetActor(8), 0);
                __MapActor_GetActor(8)[0x23] |= 2;
                __MapActor_SetAnim(8, 2);
                {
                    register s32 arg5 asm("r3") = 0x13;
                    register s32 arg6 asm("r2") = 0x11;

                    asm volatile("" : "+r"(arg5), "+r"(arg6));
                    __Func_8010704(0x13, 0x4a, 9, 3, arg5, arg6);
                }
            }
        }
    }
    return 0;
}
