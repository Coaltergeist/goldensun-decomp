typedef unsigned char u8;

extern u8 *__MapActor_GetActor(int actorId);
extern void __Actor_SetSpriteFlags(u8 *actor, int flags);
extern void __Func_8092b08(int actorId, int enabled);
extern void __StartTask(void (*task)(void), int priority);
extern void OvlFunc_935_20089c0(void);

void OvlFunc_935_2008c50(void)
{
    int actorId = 0xb;
    int i = 0;

    do {
        u8 *actor;

        __Actor_SetSpriteFlags(__MapActor_GetActor(actorId), 0);
        actor = __MapActor_GetActor(actorId);
        *(int *)(actor + 0x44) = 0x1999;
        *(int *)(actor + 0x48) = 0;
        *(int *)(actor + 0xc) = 0xff0000;
        __Func_8092b08(i + 0xb, 1);
        i++;
        actorId++;
    } while (i <= 3);
    {
        register int priority asm("r1") = 0xc8;

        asm volatile("lsl %0, #4" : "+r"(priority));
        __StartTask(OvlFunc_935_20089c0, priority);
    }
}
