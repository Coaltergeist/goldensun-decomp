typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

struct State {
    u8 pad[500];
    u32 actor;
};

extern u8 gState[];
extern u8 *__MapActor_GetActor(int actor_id);
extern void __CutsceneStart(void);
extern void __Func_809280c(int actor, u32 arg1, int arg2);
extern void __Func_80198dc(void);
extern void __Func_8019908(int value, int tag);
extern void __MessageID(int message);
extern void __ActorMessage(int actor, int message);

int OvlFunc_971_2008d68(int actor)
{
    u32 id;
    u16 *field;
    int msgBase;
    int msgId;

    id = *(u16 *)(__MapActor_GetActor(0) + 6);
    __CutsceneStart();
    __Func_809280c(actor, ((struct State *)gState)->actor, 0);
    if (id - 0xa001u > 0x3ffe)
        goto Ldac;

    msgBase = 0x297b;
    field = (u16 *)(gState + 0x2ac);
    if (*field != 0)
        goto Ldba;
    msgId = 0x2988;
    goto Ldca;

Ldac:
    msgBase = 0x297d;
    field = (u16 *)(gState + 0x2b2);
    if (*field == 0)
        goto Ldd8;

Ldba:
    __Func_80198dc();
    {
        register int tag asm("r1") = 5;
        register int value asm("r0");
        asm volatile("" : "+r"(tag));
        value = *field;
        __Func_8019908(value, tag);
    }
    msgId = msgBase + 1;

Ldca:
    __MessageID(msgId);
    __ActorMessage(actor, 0);
    goto Lde6;

Ldd8:
    __MessageID(0x2989);
    __ActorMessage(actor, 0);

Lde6:
    return;
}
