extern unsigned char *__MapActor_GetActor(int actor);
extern void __CutsceneStart(void);
extern void __UI_Sanctum(int actor);
extern void __MessageID(int message);
extern void __ActorMessage(int actor, int message);
extern void __CutsceneEnd(void);

void OvlFunc_930_20088e0(void) {
    register unsigned int position asm("r5");
    unsigned char *actor = __MapActor_GetActor(0);

    position = *(unsigned short *)(actor + 6);
    asm volatile("" : "+r"(position));
    __CutsceneStart();
    position += 0xffff5fff;
    if (position <= 0x3ffe) {
        __UI_Sanctum(0xf);
    } else {
        __MessageID(0x1a1e);
        __ActorMessage(0xf, 0);
    }
    __CutsceneEnd();
}
