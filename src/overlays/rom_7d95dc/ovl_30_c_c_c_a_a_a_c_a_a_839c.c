typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __CutsceneWait(s32 frames);
extern s32 __GetFlag(s32 flag);
extern void __SetFlag(s32 flag);
extern void __MessageID(s32 message);
extern void __Func_8092c40(s32 actor, s32 value);
extern s32 __Func_8091c7c(s32 arg0, s32 arg1);
extern void __MapActor_Emote(s32 actor, s32 arg1, s32 arg2);
extern void __ActorMessage(s32 actor, s32 mode);
extern void __Func_8093054(s32 actor, s32 arg1);
extern u8 *iwram_3001ebc;

void OvlFunc_953_200839c(void)
{
    s32 flag;

    __CutsceneStart();
    if (__GetFlag(0x962) == 0) {
        goto no_flag;
    }
    flag = 0xf0 << 2;
    __asm__ volatile("" : "+r"(flag));
    if (__GetFlag(flag) != 0) {
        __MessageID(0x225e);
        goto actor_message;
    }
    __MessageID(0x225a);
    {
        register s32 value asm("r1") = 0;
        register s32 actor asm("r0") = 0x10;
        __Func_8092c40(actor, value);
    }
    if (__Func_8091c7c(0, 0) != 0) {
        goto actor_message;
    }
    {
        register u8 *base asm("r3") = iwram_3001ebc;
        u16 *p = (u16 *)(base + (0xec << 1));
        *p = *p + 1;
    }
    {
        register s32 actor asm("r0") = 0x10;
        register s32 arg1 asm("r1") = 0x100;
        register s32 arg2 asm("r2") = 0x28;
        __MapActor_Emote(actor, arg1, arg2);
    }
    {
        register s32 value asm("r1") = 0;
        register s32 actor asm("r0") = 0x10;
        __Func_8092c40(actor, value);
    }
    if (__Func_8091c7c(0, 0) == 0) {
        (*(u16 *)(iwram_3001ebc + 0x1d8))++;
    }
    __CutsceneWait(0x28);
    __ActorMessage(0x10, 0);
    flag = 0xf0 << 2;
    __asm__ volatile("" : "+r"(flag));
    __SetFlag(flag);
    goto done;
actor_message:
    __ActorMessage(0x10, 0);
    goto done;
no_flag:
    __MessageID(0x205e);
    __Func_8093054(0x10, 0);
done:
    __CutsceneEnd();
}
