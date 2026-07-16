typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

typedef struct MapActor {
    u8 pad[0x18];
    u32 unk18;
} MapActor;

extern s32 __GetFlag(s32 flag);
extern void __SetFlag(s32 flag);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __CutsceneWait(s32 frames);
extern MapActor *__MapActor_GetActor(s32 actorId);
extern void __MapActor_SetPos(s32 actorId, s32 x, s32 y);
extern void __MapActor_DoAnim(s32 actorId, s32 anim);
extern void __MapActor_WaitMovement(s32 actorId);
extern void __MapTransitionIn(void);
extern void __WaitMapTransition(void);
extern void __Func_8092adc(s32 a0, s32 a1, s32 a2);
extern void __Func_809280c(s32 a0, s32 a1, s32 a2);
extern void __Func_809218c(s32 a0, s32 a1, s32 a2);
extern void __Func_80925cc(s32 a0, s32 a1);
extern u8 *iwram_3001ebc;

void OvlFunc_923_200996c(void)
{
    MapActor *actor;
    s32 flag;

    flag = 0x94 << 2;
    asm volatile("" : "+r"(flag));
    if (__GetFlag(flag) == 0) {
        flag = 0x94 << 2;
        asm volatile("" : "+r"(flag));
        __SetFlag(flag);
        __CutsceneStart();
        actor = __MapActor_GetActor(0xc);
        actor->unk18 = 0xffff0000;
        actor = __MapActor_GetActor(0xd);
        actor->unk18 = 0xffff0000;
        {
            actor = __MapActor_GetActor(0xe);
            {
                register s32 x asm("r1") = 0x88;
                register s32 y asm("r2") = 0x90;

                asm volatile("" : "+r"(x), "+r"(y));
                actor->unk18 = 0xffff0000;
                x <<= 16;
                asm volatile("" : "+r"(x));
                {
                    register s32 id asm("r0") = 3;

                    asm volatile("" : "+r"(id));
                    y <<= 16;
                    asm volatile("" : "+r"(y));
                    __MapActor_SetPos(id, x, y);
                }
            }
        }
        __Func_8092adc(3, 0x4000, 0xa);
        *(u32 *)(iwram_3001ebc + 0x1c0) = 0x201;
        __MapTransitionIn();
        __WaitMapTransition();
        __CutsceneWait(0x3c);
        __Func_809280c(3, 0, 0);
        __MapActor_DoAnim(3, 3);
        __CutsceneWait(0x1e);
        __Func_809218c(3, 0x88, 0x48);
        __CutsceneWait(0x28);
        __Func_80925cc(0, 1);
        __MapActor_WaitMovement(3);
        __MapActor_SetPos(3, 0, 0);
        __SetFlag(0x872);
        *(u32 *)(iwram_3001ebc + 0x1c0) = 0x204;
        __CutsceneEnd();
    }
}
