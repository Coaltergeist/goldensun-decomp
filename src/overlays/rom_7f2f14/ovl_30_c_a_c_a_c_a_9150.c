extern unsigned char *__MapActor_GetActor(int actorId);
extern void __CutsceneStart(void);
extern void __MapActor_SetBehavior(int actorId, const void *script);
extern void __MapActor_WaitScript(int actorId);
extern void __Func_8092950(int actorId, int arg1);
extern void __MapActor_SetSpeed(int actorId, int x, int y);
extern void __Func_80921c4(int actorId, int x, int y);
extern void __CutsceneWait(int frames);
extern void __MapActor_Emote(int actorId, int emote, int duration);
extern void __MapActor_DoAnim(int actorId, int anim);
extern void __CutsceneEnd(void);
extern unsigned char gScript_968__0200d21c[];
extern int OvlFunc_968_20085e4(int *object);

void OvlFunc_968_2009150(void)
{
    unsigned char *actor = __MapActor_GetActor(0);
    unsigned char *actor2;
    int target;

    __CutsceneStart();
    __MapActor_SetBehavior(0, gScript_968__0200d21c);
    __MapActor_WaitScript(0);
    __Func_8092950(0, 6);
    {
        register int y asm("r2") = 0x80;
        register int actorId asm("r0");

        *(int *)(actor + 0x28) = 0x40000;
        actorId = 0;
        asm volatile("" : "+r"(actorId), "+r"(y));
        y = y << 10;
        __MapActor_SetSpeed(actorId, 0x40000, y);
    }

    if (*(int *)(actor + 0x10) >> 20 < 0x37) {
        actor2 = __MapActor_GetActor(0) + 0x5a;
        *actor2 &= 0xfe;
        target = 0xd2;
    } else {
        actor2 = __MapActor_GetActor(0) + 0x5a;
        *actor2 &= 0xfe;
        target = 0xee;
    }
    __Func_80921c4(0, *(short *)(actor + 0xa), target << 2);
    __CutsceneWait(1);

    actor2 = __MapActor_GetActor(0) + 0x5a;
    {
        register unsigned char *p asm("r0") = actor2;
        register int loaded asm("r2");
        register int one asm("r3");

        asm volatile("" : "+r"(p));
        loaded = *p;
        asm volatile("" : "+r"(p), "+r"(loaded));
        one = 1;
        asm volatile("" : "+r"(p), "+r"(loaded), "+r"(one));
        one |= loaded;
        asm volatile("" : "+r"(p), "+r"(one));
        *p = one;
    }
    __CutsceneWait(0x14);

    *(int (**)(int *))(actor + 0x6c) = OvlFunc_968_20085e4;
    {
        register int emote asm("r1") = 0x81;
        register int duration asm("r2") = 0x3c;
        register int actorId asm("r0");

        actorId = 0;
        asm volatile("" : "+r"(actorId), "+r"(emote), "+r"(duration));
        emote = emote << 1;
        __MapActor_Emote(actorId, emote, duration);
    }
    __MapActor_DoAnim(0, 4);
    __Func_8092950(0, 0);
    __MapActor_DoAnim(0, 4);
    *(int *)(actor + 0x6c) = 0;
    __CutsceneEnd();
}
