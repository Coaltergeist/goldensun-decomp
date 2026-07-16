typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
#define NULL 0

void __Actor_TravelTo();
void __CutsceneEnd();
void __CutsceneStart();
s32 __GetFlag();
void *__MapActor_GetActor();
void __MapActor_SetAnim();
void __MapActor_Surprise();
void __MapActor_TravelTo();
void __MapActor_WaitMovement();
void __PlaySound();
void __SetFlag();
void __SetFlagByte();
void __StartTask();
extern s32 OvlFunc_881_200b678;
extern u8 gState[0x1f8];
extern void *iwram_3001ebc;

void OvlFunc_881_200b6dc(s32 arg0)
{
    register s32 actor_id asm("r6");
    s32 flag;
    u8 *state;
    u8 *other;
    u8 *actor;

    state = gState;
    actor_id = *(u32 *)(state + 0x1f4);
    actor = __MapActor_GetActor(actor_id);
    flag = __GetFlag(0x2f0);
    if (flag == 0) {
        __CutsceneStart();
        {
            register s32 call_r0 asm("r0") = actor_id;
            asm volatile("" : "+r"(call_r0));
            __MapActor_Surprise(call_r0, 0x101);
        }
        __MapActor_SetAnim(actor_id, 9);
        other = __MapActor_GetActor(arg0);
        if (other != NULL) {
            __MapActor_TravelTo(actor_id, *(s16 *)(other + 0xa),
                                *(s16 *)(other + 0x12));
        }
        __MapActor_WaitMovement(actor_id);
        __PlaySound(0xf4);
        {
            register s32 call_r1 asm("r1") = 0xc80;
            register void *call_r0 asm("r0") = &OvlFunc_881_200b678;
            u8 *actor_flag;
            asm volatile("" : "+r"(call_r1));
            asm volatile("" : "+r"(call_r0));
            actor_flag = actor;
            __StartTask(call_r0, call_r1);
            actor_flag += 0x55;
            *actor_flag = flag;
            {
                register s32 travel_r0 asm("r0");
                register s32 travel_r1 asm("r1");
                register s32 travel_r2 asm("r2");
                register s32 travel_r3 asm("r3");

                travel_r3 = 0x80;
                travel_r2 = *(s32 *)(actor + 0xc);
                asm volatile("" : "+r"(travel_r3), "+r"(travel_r2));
                travel_r3 <<= 14;
                travel_r1 = *(s32 *)(actor + 8);
                asm volatile("" : "+r"(travel_r1));
                travel_r2 += travel_r3;
                travel_r0 = (s32)actor;
                asm volatile("" : "+r"(travel_r2), "+r"(travel_r0));
                travel_r3 = *(s32 *)(actor + 0x10);
                __Actor_TravelTo(travel_r0, travel_r1, travel_r2, travel_r3);
            }
            __MapActor_WaitMovement(actor_id);
            asm volatile("" : : "r"(flag));
            asm volatile("" : : "r"(actor));
            asm volatile("" : : "r"(actor_flag));
            asm volatile("" : : "r"(state));
            asm volatile(
                "mov r2, r8\n"
                "str r2, [r5, #0x28]\n"
                "mov r2, #0xf9\n"
                "mov r3, #4\n"
                "lsl r2, #1\n"
                "add r2, r10\n"
                "strb r3, [r7]\n"
                "mov r0, #0xbc\n"
                "mov r3, #2\n"
                "strb r3, [r2]\n"
                "lsl r0, #2\n"
                "bl __SetFlag"
            );
        }
        __SetFlagByte(0x2f8, 0xb4);
        __CutsceneEnd();
        *(u16 *)((u8 *)iwram_3001ebc + 0x17c) = flag;
    }
}
