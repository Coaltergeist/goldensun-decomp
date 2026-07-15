extern void __PlaySound(int sound);
extern void __CutsceneWait(int frames);
extern void __MapActor_Emote(int actor, int emote, int duration);

void OvlFunc_959_200a5f8(void)
{
    asm volatile(
        "mov r0, #0x80\n\t"
        "mov r1, #0x80\n\t"
        "mov r2, #0x80\n\t"
        "lsl r1, #11\n\t"
        "lsl r2, #9\n\t"
        "lsl r0, #11\n\t"
        "sub sp, #8\n\t"
        "bl __Func_8012330"
        :
        :
        : "r0", "r1", "r2", "r3", "lr", "cc", "memory");

    __PlaySound(0x8d);
    __CutsceneWait(0x50);
    __PlaySound(0x120);
    __CutsceneWait(5);
    __PlaySound(0x91);

    asm volatile(
        "mov r3, #0x1a\n\t"
        "mov r2, #0x37\n\t"
        "str r3, [sp]\n\t"
        "str r2, [sp, #4]\n\t"
        "mov r3, #4\n\t"
        "mov r0, #0x10\n\t"
        "mov r1, #0x4b\n\t"
        "mov r2, #7\n\t"
        "bl __Func_80105d4"
        :
        :
        : "r0", "r1", "r2", "r3", "lr", "cc", "memory");

    asm volatile(
        "mov r0, #1\n\t"
        "mov r1, #1\n\t"
        "neg r0, r0\n\t"
        "neg r1, r1\n\t"
        "ldr r2, =0xe666\n\t"
        "bl __Func_8012330"
        :
        :
        : "r0", "r1", "r2", "r3", "lr", "cc", "memory");

    {
        register int actorId asm("r0");
        register int emote asm("r1");
        register int duration asm("r2");

        emote = 0x80;
        actorId = 0;
        emote <<= 1;
        asm volatile("" : "+r"(emote));
        duration = 0;
        __MapActor_Emote(actorId, emote, duration);
    }
    {
        register int actorId asm("r0");
        register int emote asm("r1");
        register int duration asm("r2");

        emote = 0x80;
        actorId = 1;
        emote <<= 1;
        asm volatile("" : "+r"(emote));
        duration = 0;
        __MapActor_Emote(actorId, emote, duration);
    }
    {
        register int actorId asm("r0");
        register int emote asm("r1");
        register int duration asm("r2");

        emote = 0x80;
        actorId = 2;
        emote <<= 1;
        asm volatile("" : "+r"(emote));
        duration = 0;
        __MapActor_Emote(actorId, emote, duration);
    }
    {
        register int actorId asm("r0");
        register int emote asm("r1");
        register int duration asm("r2");

        emote = 0x80;
        actorId = 3;
        emote <<= 1;
        asm volatile("" : "+r"(emote));
        duration = 0;
        __MapActor_Emote(actorId, emote, duration);
    }
    {
        register int actorId asm("r0");
        register int emote asm("r1");
        register int duration asm("r2");

        emote = 0x80;
        emote <<= 1;
        asm volatile("" : "+r"(emote));
        duration = 0;
        actorId = 0xc;
        __MapActor_Emote(actorId, emote, duration);
    }

    __CutsceneWait(0x3c);

    asm volatile("add sp, #8" : : : "memory");
}
