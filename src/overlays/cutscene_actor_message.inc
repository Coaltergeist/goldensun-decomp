typedef signed short s16;

extern int __GetFlag(int flag);
extern int OvlFunc_945_20092dc(void);
extern void __CutsceneStart(void);
extern void OvlFunc_945_2009190(int actor_id);
extern void __MessageID(int message_id);
extern void OvlFunc_945_200c86c(int actor_id);
extern void __MapActor_SetAnim(int actor_id, int animation);
extern unsigned char *__MapActor_GetActor(int actor_id);
extern void __MapActor_TravelTo(int actor_id, int x, int y);
extern void __MapActor_WaitMovement(int actor_id);
extern void __MapActor_SetPos(int actor_id, int x, int y);
extern void __CutsceneEnd(void);
extern void OvlFunc_945_2009804(int actor_id, int message_id, int flag);

void CUTSCENE_FUNCTION(void)
{
    if (__GetFlag(0x300)) {
        register int actor_id asm("r5") = OvlFunc_945_20092dc();
        unsigned char *actor;

        __CutsceneStart();
        OvlFunc_945_2009190(actor_id);
        __MessageID(CUTSCENE_MAIN_MESSAGE);
        OvlFunc_945_200c86c(CUTSCENE_ACTOR);
        __MapActor_SetAnim(actor_id, 2);
        actor = __MapActor_GetActor(0);
        if (actor != 0)
            __MapActor_TravelTo(
                actor_id, *(s16 *)(actor + 0x0a), *(s16 *)(actor + 0x12));
        __MapActor_WaitMovement(actor_id);
        __MapActor_SetPos(actor_id, 0, 0);
        __CutsceneEnd();
    } else if (__GetFlag(0x92b)) {
        OvlFunc_945_2009804(
            CUTSCENE_ACTOR, CUTSCENE_ALT_MESSAGE, CUTSCENE_FLAG_1);
    } else if (__GetFlag(0x92a)) {
        OvlFunc_945_2009804(
            CUTSCENE_ACTOR, CUTSCENE_ALT_MESSAGE, CUTSCENE_FLAG_2);
    } else if (__GetFlag(0x929)) {
        OvlFunc_945_2009804(
            CUTSCENE_ACTOR, CUTSCENE_ALT_MESSAGE, CUTSCENE_FLAG_3);
    } else {
        OvlFunc_945_2009804(
            CUTSCENE_ACTOR, CUTSCENE_ALT_MESSAGE, CUTSCENE_FLAG_DEFAULT);
    }
}
