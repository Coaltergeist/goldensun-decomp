extern void __Func_8092950(int actor, int value);
extern void *__MapActor_GetActor(int id);
extern void __Actor_SetSpriteFlags(void *actor, int value);
extern void __MapActor_SetSpeed(int actor, int x, int y);

void OvlFunc_969_2009280(int actor, int enabled)
{
    if (enabled != 0) {
        __Func_8092950(actor, 0);
        __Actor_SetSpriteFlags(__MapActor_GetActor(actor), 1);
        {
            register int callActor asm("r0") = actor;
            register int speedX asm("r1") = 0xcccc;
            register int speedY asm("r2") = 0x6666;

            asm volatile("" : "+r"(callActor));
            asm volatile("" : "+r"(speedX));
            asm volatile("" : "+r"(speedY));
            __MapActor_SetSpeed(callActor, speedX, speedY);
        }
    } else {
        __Func_8092950(actor, 0xf);
        __Actor_SetSpriteFlags(__MapActor_GetActor(actor), 0);
    }
}
