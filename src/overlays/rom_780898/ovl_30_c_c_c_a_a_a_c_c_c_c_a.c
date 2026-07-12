extern unsigned char gScript_883__0200e248[];
extern unsigned char *__MapActor_GetActor(int actor);
extern void __CutsceneStart(void);
extern void __Func_809259c(int actor, int value);
extern void __MapActor_Emote(int actor, int emote, int duration);
extern void __MapActor_SetBehavior(int actor, void *behavior);
extern void __CutsceneWait(int frames);
extern void __MapActor_RunScript(int actor, void *script);
extern void __MapActor_WaitScript(int actor);
extern void __Func_80925cc(int actor, int value);
extern void __MessageID(int message);
extern void __Func_8093054(int actor, int value);
extern void __CutsceneEnd(void);
extern void OvlFunc_883_200d72c(void);

void OvlFunc_883_2009490(void *behavior, void *script)
{
    register void *savedScript asm("r8") = script;
    register unsigned char *actor asm("r6");
    unsigned int speed;

    actor = __MapActor_GetActor(0x16);
    __CutsceneStart();
    __Func_809259c(0x16, 2);
    {
        register int actorId asm("r0");
        register int emote asm("r1");
        register int duration asm("r2");

        emote = 0x80;
        asm volatile("" : "+r"(emote));
        duration = 0x14;
        asm volatile("" : "+r"(emote), "+r"(duration));
        actorId = 0x16;
        asm volatile("" : "+r"(actorId), "+r"(emote), "+r"(duration));
        emote <<= 1;
        __MapActor_Emote(actorId, emote, duration);
    }
    __Func_809259c(0, 2);
    {
        register int actorId asm("r0");
        register int emote asm("r1");
        register int duration asm("r2");

        emote = 0x81;
        asm volatile("" : "+r"(emote));
        duration = 0x28;
        asm volatile("" : "+r"(emote), "+r"(duration));
        actorId = 0;
        asm volatile("" : "+r"(actorId), "+r"(emote), "+r"(duration));
        emote <<= 1;
        __MapActor_Emote(actorId, emote, duration);
    }
    __MapActor_SetBehavior(0, behavior);
    __CutsceneWait(0xa);
    {
        register int actorId asm("r0");
        register int emote asm("r1");
        register int zero asm("r2");

        zero = 0;
        asm volatile("" : "+r"(zero));
        actorId = 0x16;
        asm volatile("" : "+r"(actorId), "+r"(zero));
        emote = 0x103;
        asm volatile("" : "+r"(actorId), "+r"(emote), "+r"(zero));
        __MapActor_Emote(actorId, emote, zero);
    }
    __MapActor_RunScript(0x16, savedScript);
    __MapActor_WaitScript(0);

    speed = 0x80;
    __CutsceneWait(0x14);
    speed <<= 9;
    __Func_80925cc(0x16, 2);
    *(unsigned int *)(actor + 0x18) = speed;
    *(unsigned int *)(actor + 0x1c) = speed;

    {
        unsigned char *otherActor = __MapActor_GetActor(0);

        *(unsigned int *)(otherActor + 0x18) = speed;
        *(unsigned int *)(otherActor + 0x1c) = speed;
    }

    __MessageID(0xfce);
    __Func_8093054(0x16, 0);

    {
        unsigned char *lastActor = __MapActor_GetActor(0x16);

        *(void (**)(void))(lastActor + 0x6c) = OvlFunc_883_200d72c;
        __MapActor_SetBehavior(0x16, gScript_883__0200e248);
    }
    __CutsceneEnd();
}
