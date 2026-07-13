extern unsigned char ActorCmd_ARRAY_966__02009638[];
extern unsigned char *__MapActor_GetActor(int actor);
extern void __MessageID(int message);
extern void __ActorMessage(int actor, int arg);
extern void __Func_8092adc(int actor, int distance, int arg);
extern void __CutsceneWait(int frames);
extern void __MapActor_SetBehavior(int actor, const void *behavior);

void OvlFunc_966_2008078(int actor_id)
{
    unsigned char *actor;

    actor = __MapActor_GetActor(actor_id);
    *(int *)(actor + 0x18) = 0x10000;
    actor = __MapActor_GetActor(actor_id);
    *(int *)(actor + 0x1c) = 0x10000;
    __MessageID(0x26af);
    __ActorMessage(actor_id, 0);
    {
        register int distance __asm__("r1") = 0xc0;
        register int actor_arg __asm__("r0");

        __asm__ volatile ("" : "+r" (distance));
        actor_arg = actor_id;
        __asm__ volatile ("" : "+r" (actor_arg));
        distance <<= 8;
        __Func_8092adc(actor_arg, distance, 0);
    }
    __CutsceneWait(0x14);
    __MapActor_SetBehavior(actor_id, ActorCmd_ARRAY_966__02009638);
}
