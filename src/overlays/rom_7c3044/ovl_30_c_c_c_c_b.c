extern unsigned char *__MapActor_GetActor(int actor);
extern void __UI_Sanctum(int actor);
extern void __CutsceneStart(void);
extern void __MessageID(int message);
extern void __ActorMessage(int actor, int message);
extern void __CutsceneEnd(void);

void OvlFunc_937_20081fc(void)
{
    unsigned char *actor = __MapActor_GetActor(0);
    unsigned int adjusted = *(unsigned short *)(actor + 6) + 0x5fff;

    if ((adjusted << 16) <= 0x3ffe0000) {
        __UI_Sanctum(8);
    } else {
        __CutsceneStart();
        __MessageID(0x1a8f);
        {
            register int arg1 asm("r1");
            register int arg0 asm("r0");

            arg0 = 8;
            asm volatile("" : "+r"(arg0));
            arg1 = 0;
            asm volatile("" : "+r"(arg0), "+r"(arg1));
            __ActorMessage(arg0, arg1);
        }
        __CutsceneEnd();
    }
}
