extern void __SetFlag(int flag);
extern void __MessageID(int message_id);
extern void __ActorMessage(int actor_id, int value);
extern void __MapActor_SetSpeed(int actor_id, int x_speed, int y_speed);
extern void __Func_8092304(int actor_id, int x, int y);
extern void __Func_8092adc(int actor_id, int x, int y);
extern void __CutsceneWait(int frames);

void OvlFunc_966_200810c(void)
{
    register int actor_id asm("r0");
    register int x asm("r1");
    register int y asm("r2");

    __SetFlag(0x9bb);
    __MessageID(0x28b8);
    __ActorMessage(0x12, 0);
    x = 0x80;
    y = 0x80;
    actor_id = 0x12;
    asm volatile("" : "+r"(actor_id), "+r"(x), "+r"(y));
    x <<= 9;
    y <<= 8;
    __MapActor_SetSpeed(actor_id, x, y);
    x = 0x10;
    actor_id = 0x12;
    asm volatile("" : "+r"(actor_id), "+r"(x));
    x = -x;
    y = 0;
    __Func_8092304(actor_id, x, y);
    __Func_8092adc(0x12, 0, 0);
    __CutsceneWait(0xa);
}
