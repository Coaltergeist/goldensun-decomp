typedef signed short s16;
typedef unsigned char u8;

extern void __CutsceneStart(void);
extern void __MapActor_SetSpeed(int actor, int x, int y);
extern void __PlaySound(int sound);
extern u8 *__MapActor_GetActor(int actor);
extern void __MapActor_TravelTo(int actor, int x, int y);
extern void __MapActor_WaitMovement(int actor);
extern void __Func_809228c(int actor, int arg1, int arg2);
extern void __CutsceneWait(int frames);
extern void __CutsceneEnd(void);
extern void __ClearFlag(int flag);

void OvlFunc_948_200949c(void)
{
    u8 *actor;

    __CutsceneStart();
    {
        register int actor_id asm("r0");
        register int speed_x asm("r1");
        register int speed_y asm("r2");
        asm volatile("mov %0, #0\n\tldr %1, =0x1b333\n\tldr %2, =0xd999"
                     : "=r"(actor_id), "=r"(speed_x), "=r"(speed_y));
        __MapActor_SetSpeed(actor_id, speed_x, speed_y);
    }
    {
        register int actor_id asm("r0");
        register int speed_x asm("r1");
        register int speed_y asm("r2");
        asm volatile("mov %0, #9\n\tldr %1, =0x1b333\n\tldr %2, =0xd999"
                     : "=r"(actor_id), "=r"(speed_x), "=r"(speed_y));
        __MapActor_SetSpeed(actor_id, speed_x, speed_y);
    }
    __PlaySound(0xbc);
    actor = __MapActor_GetActor(0);
    if (actor != 0)
        __MapActor_TravelTo(9, *(s16 *)(actor + 0xa), *(s16 *)(actor + 0x12));
    __MapActor_WaitMovement(9);
    __Func_809228c(0, 0, 0x18);
    __PlaySound(0xbc);
    __CutsceneWait(4);
    __Func_809228c(9, 0, 0x10);
    __MapActor_WaitMovement(0);
    {
        register int actor_id asm("r0");
        register int target_x asm("r1");
        register int target_y asm("r2");
        asm volatile("mov %2, #0x84\n\tmov %1, #0xa8\n\tlsl %2, #1\n\tmov %0, #9"
                     : "=r"(actor_id), "=r"(target_x), "=r"(target_y));
        __MapActor_TravelTo(actor_id, target_x, target_y);
    }
    __MapActor_WaitMovement(9);
    __CutsceneEnd();
    __ClearFlag(0x220);
}
