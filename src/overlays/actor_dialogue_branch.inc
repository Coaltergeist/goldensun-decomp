#ifndef ACTOR_DIALOGUE_FUNCTION
#error "ACTOR_DIALOGUE_FUNCTION must name the generated entry point"
#endif
#ifndef ACTOR_DIALOGUE_ACTOR_ID
#error "ACTOR_DIALOGUE_ACTOR_ID must provide the map actor number"
#endif
#ifndef ACTOR_DIALOGUE_DONE_MESSAGE
#error "ACTOR_DIALOGUE_DONE_MESSAGE must provide the completed message"
#endif
#ifndef ACTOR_DIALOGUE_PROGRESS_MESSAGE
#error "ACTOR_DIALOGUE_PROGRESS_MESSAGE must provide the progress message"
#endif
#ifndef ACTOR_DIALOGUE_DEFAULT_MESSAGE
#error "ACTOR_DIALOGUE_DEFAULT_MESSAGE must provide the default message"
#endif

typedef unsigned char ActorDialogueByte;
typedef unsigned short ActorDialogueHalf;
typedef unsigned int ActorDialogueWord;

extern void __CutsceneStart(void);
extern int __GetFlag(int flag);
extern void __MessageID(int message);
extern void __ActorMessage(int actor, int mode);
extern void __Func_80925cc(int actor, int mode);
extern ActorDialogueByte *__MapActor_GetActor(int actor);
extern ActorDialogueWord __Random(void);
extern void __MapActor_SetBehavior(int actor, const void *script);
extern void __MapActor_Emote(int actor, int emote, int duration);
extern void __Func_809259c(int actor, int mode);
extern void __CutsceneEnd(void);
extern const ActorDialogueByte gScript_943__0200c4d8[];

/* 進行フラグに応じて町人の台詞と待機動作を切り替える。 */
void ACTOR_DIALOGUE_FUNCTION(void)
{
    __CutsceneStart();
    if (__GetFlag(0x925)) {
        __MessageID(ACTOR_DIALOGUE_DONE_MESSAGE);
        __ActorMessage(ACTOR_DIALOGUE_ACTOR_ID, 0);
    } else if (__GetFlag(0x922)) {
        ActorDialogueByte *actor;
        register ActorDialogueWord delay asm("r3");

        __Func_80925cc(ACTOR_DIALOGUE_ACTOR_ID, 2);
        __MessageID(ACTOR_DIALOGUE_PROGRESS_MESSAGE);
        __ActorMessage(ACTOR_DIALOGUE_ACTOR_ID, 0);
        actor = __MapActor_GetActor(ACTOR_DIALOGUE_ACTOR_ID);
        delay = (__Random() * 0x5a) >> 16;
        asm volatile("" : "+r"(delay));
        delay += 0x3c;
        asm volatile("" : "+r"(delay));
        actor += 0x64;
        *(ActorDialogueHalf *)actor = (ActorDialogueHalf)delay;
        __MapActor_SetBehavior(
            ACTOR_DIALOGUE_ACTOR_ID, gScript_943__0200c4d8);
    } else {
        register int emoteActor asm("r0");
        register int emoteId asm("r1");
        register int duration asm("r2");

        duration = 0;
        asm volatile("" : "+r"(duration));
        emoteActor = ACTOR_DIALOGUE_ACTOR_ID;
        asm volatile("" : "+r"(emoteActor), "+r"(duration));
        emoteId = 0x103;
        asm volatile(
            "" : "+r"(emoteActor), "+r"(emoteId), "+r"(duration));
        __MapActor_Emote(emoteActor, emoteId, duration);
        __Func_809259c(ACTOR_DIALOGUE_ACTOR_ID, 3);
        __MessageID(ACTOR_DIALOGUE_DEFAULT_MESSAGE);
        __ActorMessage(ACTOR_DIALOGUE_ACTOR_ID, 0);
    }
    __CutsceneEnd();
}

#undef ACTOR_DIALOGUE_DEFAULT_MESSAGE
#undef ACTOR_DIALOGUE_PROGRESS_MESSAGE
#undef ACTOR_DIALOGUE_DONE_MESSAGE
#undef ACTOR_DIALOGUE_ACTOR_ID
#undef ACTOR_DIALOGUE_FUNCTION
