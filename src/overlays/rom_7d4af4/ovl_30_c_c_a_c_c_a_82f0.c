typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;

typedef struct {
    u8 pad_00[6];
    short value_06;
    u8 pad_08[0x5c];
    u16 flags_64;
} Actor;

typedef struct {
    u8 pad_00[0x17e];
    short value_17e;
} State;

void __CutsceneEnd();
void __CutsceneStart();
void __Func_8092848();
void __Func_8093040();
s32 __GetFlag();
void *__MapActor_GetActor();
void __MapActor_SetAnim();
void __MessageID();
void __WaitFrames();
extern void *iwram_3001ebc;

void OvlFunc_949_20082f0(void)
{
    short old_value;
    Actor *actor;
    State *state;
    register s32 message asm("r0");

    state = iwram_3001ebc;
    actor = __MapActor_GetActor(0x10);
    old_value = actor->value_06;
    __CutsceneStart();
    actor->flags_64 |= 2;
    if (state->value_17e == 0) {
        if (__GetFlag(0x950) != 0)
            message = 0x2365;
        else if (__GetFlag(0x962) != 0)
            message = 0x21e2;
        else
            message = 0x1f95;
    } else {
        if (__GetFlag(0x950) != 0)
            message = 0x2371;
        else if (__GetFlag(0x962) != 0)
            message = 0x21f5;
        else
            message = 0x1faa;
    }
    asm volatile("" : "+r"(message));
    __MessageID(message);
    __MapActor_SetAnim(0x10, 0);
    __Func_8092848(0x10, 0, 2);
    __Func_8093040(0x10, 0, 0xa);
    actor->value_06 = old_value;
    __WaitFrames(1);
    actor->flags_64 &= 1;
    __CutsceneEnd();
}
