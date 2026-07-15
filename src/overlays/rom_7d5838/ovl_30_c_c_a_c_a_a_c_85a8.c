typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u8 *__MapActor_GetActor(int actor);
extern void __Func_80b0278(int id, int actor);
extern int __GetFlag(int flag);
extern void __MessageID(int message);
extern void __ActorMessage(int actor, int value);
extern void __Func_8092c40(int actor, int arg1);
extern int __Func_8091c7c(int arg0, int arg1);
extern void __CutsceneWait(int duration);
extern void __MapActor_Emote(int actor, int emote, int arg2);

void OvlFunc_950_20085a8(int actor)
{
    u8 *mapActor = __MapActor_GetActor(0);
    u32 value = *(u16 *)(mapActor + 6);
    register u32 mask asm("r2");
    int msg;

    value += 0x2000;
    asm volatile("ldr r2, =0xffffc000" : "=r"(mask));
    value &= mask;
    value <<= 16;
    if (value == 0xc0000000) {
        __Func_80b0278(0x1a, actor);
        asm volatile("b 9f\n\t.align 2\n\t.pool\n");
    }

    if (__GetFlag(0x950) == 0)
        goto check962;

    {
        register int r6 asm("r6");
        register int arg0 asm("r0");
        register int arg1 asm("r1");

        r6 = 0x2389;
        asm volatile("" : "+r"(r6));
        __MessageID(r6);
        arg1 = 0;
        arg0 = actor;
        asm volatile("" : "+r"(arg0), "+r"(arg1));
        __Func_8092c40(arg0, arg1);
        if (__Func_8091c7c(0, 0) == 0) {
            __CutsceneWait(0xa);
            msg = r6 + 1;
            goto sendMsg;
        }
        msg = r6 + 2;
        __MessageID(msg);
        goto doActorMsg;
    }

check962:
    if (!__GetFlag(0x962))
        goto other;
    msg = 0x2219;
sendMsg:
    __MessageID(msg);
doActorMsg:
    __ActorMessage(actor, 0);
    goto realEnd;

other:
    __MessageID(0x1fd2);
    __ActorMessage(actor, 0);
    __MapActor_Emote(actor, 0x106, 0);
    __CutsceneWait(0x28);
    __ActorMessage(actor, 0);

realEnd:
    asm volatile("9:");
}
