extern void __Func_8093500(int actor, int value);
extern void __Func_8093530(void);
extern void __CutsceneWait(int frames);
extern void __MessageID(int message);
extern void __ActorMessage(int actor, int message);
extern void __MapActor_SetSpeed(int actor_id, int horizontal, int vertical);
extern void __Func_809218c(int actor, int x, int y);
extern void __SetCameraTarget(int actor_id, int mode);
extern void __MapActor_WaitMovement(int actor_id);
extern void __MapActor_SetAnim(int actor, int animation);

void OvlFunc_959_200a69c(void)
{
    __Func_8093500(0xb, 1);
    __Func_8093530();
    __CutsceneWait(0x3c);
    __MessageID(0x247c);
    __ActorMessage(0xd, 0);
    {
        register int horizontal asm("r1");
        register int vertical asm("r2");
        register int actor asm("r0");

        horizontal = 0x80;
        vertical = 0x80;
        asm volatile("" : "+r"(horizontal), "+r"(vertical));
        actor = 0xb;
        asm volatile("" : "+r"(actor));
        horizontal <<= 9;
        asm volatile("" : "+r"(horizontal));
        vertical <<= 8;
        asm volatile("" : "+r"(vertical));
        __MapActor_SetSpeed(actor, horizontal, vertical);
    }
    {
        register int horizontal asm("r1");
        register int vertical asm("r2");
        register int actor asm("r0");

        horizontal = 0x80;
        vertical = 0x80;
        asm volatile("" : "+r"(horizontal), "+r"(vertical));
        actor = 0xf;
        asm volatile("" : "+r"(actor));
        horizontal <<= 9;
        asm volatile("" : "+r"(horizontal));
        vertical <<= 8;
        asm volatile("" : "+r"(vertical));
        __MapActor_SetSpeed(actor, horizontal, vertical);
    }
    {
        register int horizontal asm("r1");
        register int actor asm("r0");
        register int vertical asm("r2");

        horizontal = 0xec;
        asm volatile("" : "+r"(horizontal));
        actor = 0xb;
        asm volatile("" : "+r"(actor));
        horizontal <<= 1;
        asm volatile("" : "+r"(horizontal));
        vertical = 0xb4;
        asm volatile("" : "+r"(vertical));
        __Func_809218c(actor, horizontal, vertical);
    }
    {
        register int horizontal asm("r1");
        register int vertical asm("r2");
        register int actor asm("r0");

        horizontal = 0xec;
        asm volatile("" : "+r"(horizontal));
        vertical = 0xb4;
        asm volatile("" : "+r"(vertical));
        actor = 0xf;
        asm volatile("" : "+r"(actor));
        horizontal <<= 1;
        asm volatile("" : "+r"(horizontal));
        __Func_809218c(actor, horizontal, vertical);
    }
    __SetCameraTarget(0xb, 1);
    __MapActor_WaitMovement(0xb);
    __MapActor_SetAnim(0xb, 4);
    __CutsceneWait(0x1e);
}
