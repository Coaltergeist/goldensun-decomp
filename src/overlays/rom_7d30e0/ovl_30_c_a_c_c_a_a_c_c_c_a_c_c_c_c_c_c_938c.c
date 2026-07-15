typedef signed short s16;
typedef unsigned char u8;

extern void __CutsceneStart(void);
extern void __MapActor_SetSpeed(int, int, int);
extern void __PlaySound(int);
extern u8 *__MapActor_GetActor(int);
extern void __MapActor_TravelTo(int, int, int);
extern void __MapActor_WaitMovement(int);
extern void __Func_809228c(int, int, int);
extern void __CutsceneWait(int);
extern void __CutsceneEnd(void);
extern void __ClearFlag(int);

void OvlFunc_948_200938c(void)
{
    u8 *actor;

    __CutsceneStart();
    {
        register int actor_id asm("r0");
        register int speed asm("r1");
        register int accel asm("r2");
        asm volatile("mov %0, #0\n\tldr %1, =0x1e666\n\tldr %2, =0xf333"
                     : "=r"(actor_id), "=r"(speed), "=r"(accel));
        __MapActor_SetSpeed(actor_id, speed, accel);
    }
    {
        register int actor_id asm("r0");
        register int speed asm("r1");
        register int accel asm("r2");
        asm volatile("mov %0, #8\n\tldr %1, =0x1e666\n\tldr %2, =0xf333"
                     : "=r"(actor_id), "=r"(speed), "=r"(accel));
        __MapActor_SetSpeed(actor_id, speed, accel);
    }
    __PlaySound(0xbc);
    actor = __MapActor_GetActor(0);
    if (actor != 0)
        __MapActor_TravelTo(8, *(s16 *)(actor + 0xa), *(s16 *)(actor + 0x12));
    __MapActor_WaitMovement(8);
    __Func_809228c(0, 0, 0x18);
    __CutsceneWait(4);
    __PlaySound(0xbc);
    __Func_809228c(8, 0, 0x10);
    __MapActor_WaitMovement(0);
    __MapActor_TravelTo(8, 0x168, 0x98);
    __MapActor_WaitMovement(8);
    __CutsceneEnd();
    __ClearFlag(0x220);
}
