typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern s32 __GetFlag(s32 flag);
extern void __SetFlag(s32 flag);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __CutsceneWait(s32 frames);
extern u8 *__MapActor_GetActor(s32 actor);
extern void __MapActor_SetAnim(s32 actor, s32 anim);
extern void __MapActor_SetBehavior(s32 actor, s32 behavior);
extern void __Func_80925cc(s32 actor, s32 mode);
extern void __MessageID(s32 message);
extern void __Func_8092848(s32 actor, s32 arg1, s32 arg2);
extern void __Func_8092c40(s32 actor, s32 value);
extern s32 __Func_8091c7c(s32 arg0, s32 arg1);
extern void __ActorMessage(s32 actor, s32 mode);
extern void OvlFunc_901_20084b4(s32 actor);
extern u8 *iwram_3001ebc;

void OvlFunc_901_20088a8(void)
{
    u16 *p;
    s32 flag;
    s32 code;

    code = 0xc2 << 2;
    asm volatile("" : "+r"(code));
    flag = __GetFlag(code);
    if (flag == 0) {
        __CutsceneStart();
        __MapActor_GetActor(0x10)[0x5b] = 1;
        __MapActor_SetAnim(0x10, 1);
        __Func_80925cc(0x10, 1);
        __CutsceneWait(0x14);
        __MessageID(0x1cb5);
        __Func_8092848(0x10, 0, 2);
        {
            register s32 value asm("r1") = 0;
            register s32 actorArg asm("r0") = 0x10;
            __Func_8092c40(actorArg, value);
        }
        if (__Func_8091c7c(0, 0)) {
            p = (u16 *)(iwram_3001ebc + (0xec << 1));
            *p = *p + 1;
        }
        __ActorMessage(0x10, 0);
        __MapActor_GetActor(0x10)[0x5b] = flag;
        __MapActor_SetBehavior(0x10, 2);
        __CutsceneEnd();
        code = 0xc2 << 2;
        asm volatile("" : "+r"(code));
        __SetFlag(code);
    } else {
        __MessageID(0x1cc2);
        __MapActor_GetActor(0x10)[0x5b] = 1;
        OvlFunc_901_20084b4(0x10);
        flag = 0;
        __MapActor_GetActor(0x10)[0x5b] = flag;
    }
}
