extern void __MapActor_Emote(int actor, int emote, int duration);
extern void __Func_8092adc(int actor, int value, int unused);
extern void __CutsceneWait(int frames);
extern void __MessageID(int message);
extern void __ActorMessage(int actor, int mode);
extern void __MapActor_SetAnim(int actor, int animation);

void OvlFunc_959_200c704(void)
{
    register int message asm("r5");

    {
        register int actor asm("r0");
        register int emote asm("r1");
        register int duration asm("r2");
        asm volatile(
            "mov %0, #0x15\n\tldr %1, =0x101\n\tmov %2, #0x1e"
            : "=r"(actor), "=r"(emote), "=r"(duration));
        __MapActor_Emote(actor, emote, duration);
    }
    __Func_8092adc(0x15, 0xd000, 0);
    __CutsceneWait(0x32);
    {
        register int value asm("r1");
        asm volatile("mov %0, #0xb0\n\tlsl %0, %0, #8" : "=r"(value));
        __Func_8092adc(0x15, value, 0);
    }
    __CutsceneWait(0x32);
    {
        register int value asm("r1");
        register int unused asm("r2");
        asm volatile(
            "mov %0, #0xa0\n\tmov %1, #0\n\tlsl %0, %0, #7"
            : "=r"(value), "=r"(unused));
        __Func_8092adc(0x15, value, unused);
    }
    __CutsceneWait(0x32);

    asm volatile("ldr %0, =0x2411" : "=r"(message));
    __MessageID(message);
    __ActorMessage(0x15, 0);
    __MapActor_SetAnim(0x15, 4);
    __CutsceneWait(0x3c);
    {
        register int value asm("r1");
        asm volatile("mov %0, #0xb0\n\tlsl %0, %0, #8" : "=r"(value));
        __Func_8092adc(0x15, value, 0);
    }
    message++;
    __CutsceneWait(0x28);
    __MessageID(message);
    __ActorMessage(0x15, 0);
}
