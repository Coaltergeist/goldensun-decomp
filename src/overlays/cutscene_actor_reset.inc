typedef unsigned char u8;
typedef unsigned short u16;
typedef signed short s16;

extern u8 *__MapActor_GetActor(int actor_id);
extern void __CutsceneStart(void);
extern void __MessageID(int message_id);
extern void __MapActor_SetAnim(int actor_id, int animation);
extern void OvlFunc_898_200973c(int actor_id, int arg1, int arg2);
extern void OvlFunc_898_2009724(int actor_id, int arg1);
extern void __WaitFrames(int frames);
extern void __CutsceneEnd(void);

void CUTSCENE_ACTOR_FUNCTION(void)
{
    register u8 *actor asm("r6") = __MapActor_GetActor(CUTSCENE_ACTOR_ID);
    register int offset asm("r3");
    register int direction asm("r2");
    register u8 *flags asm("r5");
    register int saved_direction asm("r8");
    register unsigned int bit asm("r3");
    register unsigned int flags_value asm("r2");

    asm volatile("" : "+r"(actor));
    offset = 6;
    asm volatile("" : "+r"(actor), "+r"(offset));
    direction = *(s16 *)(actor + offset);
    asm volatile("" : "+r"(actor), "+r"(offset), "+r"(direction));
    flags = actor;
    flags += 0x64;
    saved_direction = direction;
    asm volatile("" : "+r"(actor), "+r"(flags), "+r"(saved_direction));

    asm volatile("ldr %0, .LCutsceneActorBit" : "=r"(bit));
    flags_value = *(u16 *)flags;
    bit |= flags_value;
    *(u16 *)flags = bit;
    __CutsceneStart();
    {
        register int message asm("r0");
        asm volatile("ldr %0, .LCutsceneActorMessage" : "=r"(message));
        __MessageID(message);
    }
    __MapActor_SetAnim(CUTSCENE_ACTOR_ID, 0);
    {
        register int mode asm("r2") = 2;
        register int actor_id asm("r0");
        register int zero asm("r1");

        asm volatile("" : "+r"(mode));
        actor_id = CUTSCENE_ACTOR_ID;
        asm volatile("" : "+r"(actor_id), "+r"(mode));
        zero = 0;
        asm volatile("" : "+r"(actor_id), "+r"(zero), "+r"(mode));
        OvlFunc_898_200973c(actor_id, zero, mode);
    }
    {
        register int frames asm("r1") = 10;
        register int actor_id asm("r0");

        asm volatile("" : "+r"(frames));
        actor_id = CUTSCENE_ACTOR_ID;
        asm volatile("" : "+r"(actor_id), "+r"(frames));
        OvlFunc_898_2009724(actor_id, frames);
    }
    {
        register int restored_direction asm("r2") = saved_direction;
        asm volatile("" : "+r"(restored_direction));
        *(s16 *)(actor + 6) = restored_direction;
    }
    __WaitFrames(1);
    __CutsceneEnd();
    asm volatile(
        "b .LCutsceneActorAfterPool\n"
        ".align 2, 0\n"
        ".LCutsceneActorBit:\n"
        ".word 2\n"
        ".LCutsceneActorMessage:\n"
        ".word " CUTSCENE_MESSAGE_ID "\n"
        ".LCutsceneActorAfterPool:");
    *(u16 *)flags &= 1;
}
