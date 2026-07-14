#ifndef ACTOR_FORMATION_CUTSCENE_FUNCTION
#error "ACTOR_FORMATION_CUTSCENE_FUNCTION must name the generated entry point"
#endif
#ifndef ACTOR_FORMATION_MESSAGE_ID
#error "ACTOR_FORMATION_MESSAGE_ID must provide the message number"
#endif

typedef unsigned char ActorFormationByte;
typedef short ActorFormationS16;

extern ActorFormationByte *__MapActor_GetActor(int actor_id);
extern void __CutsceneStart(void);
extern void __MapActor_SetSpeed(int actor_id, int horizontal, int vertical);
extern void __MapActor_SetPos(int actor_id, int x, int y);
extern void __SetCameraTarget(int actor_id, int mode);
extern void __MapTransitionIn(void);
extern void __WaitMapTransition(void);
extern void __MessageID(int message_id);
extern void __MapActor_DoAnim(int actor_id, int animation);
extern void __ActorMessage(int actor_id, int message);
extern void __Func_80925cc(int actor_id, int animation);
extern void __MapActor_SetAnim(int actor_id, int animation);
extern void __CutsceneWait(int frames);
extern void __MapActor_TravelTo(int actor_id, int x, int y);
extern void __Func_80921c4(int actor_id, int x, int y);
extern void __Func_8092adc(int actor_id, int value, int duration);
extern void __CutsceneEnd(void);

/* GCC 2.96 の引数を組み立てる順番を保つ。 */
#define SET_ACTOR_FORMATION_SPEED(id) do { \
    register int horizontal asm("r1"); \
    register int vertical asm("r2"); \
    register int selected_actor asm("r0"); \
    horizontal = 0x80; \
    vertical = 0x80; \
    asm volatile("" : "+r"(horizontal), "+r"(vertical)); \
    selected_actor = (id); \
    asm volatile("" : "+r"(selected_actor)); \
    horizontal <<= 9; \
    asm volatile("" : "+r"(horizontal)); \
    vertical <<= 8; \
    asm volatile("" : "+r"(vertical)); \
    __MapActor_SetSpeed(selected_actor, horizontal, vertical); \
} while (0)

/* 四人の役者を並べ、会話の後で元の位置へ戻す。 */
void ACTOR_FORMATION_CUTSCENE_FUNCTION(int actor_id)
{
    ActorFormationByte *actor;
    int x;
    int y;
    register int y_fixed asm("r5");
    register int y_source asm("r3");
    register int middle_y asm("r8");
    register int camera_speed asm("r6");

    actor = __MapActor_GetActor(actor_id);
    x = *(ActorFormationS16 *)(actor + 0x0a);
    y = *(ActorFormationS16 *)(actor + 0x12);
    __CutsceneStart();
    SET_ACTOR_FORMATION_SPEED(actor_id);
    SET_ACTOR_FORMATION_SPEED(0);
    SET_ACTOR_FORMATION_SPEED(1);
    SET_ACTOR_FORMATION_SPEED(2);
    SET_ACTOR_FORMATION_SPEED(3);

    y_source = y;
    asm volatile("" : "+r"(y_source));
    y_fixed = y_source << 16;
    asm volatile("" : "+r"(y_fixed));
    {
        register int first_x asm("r1") = x << 16;
        register int first_y asm("r2") = y_fixed - 0x300000;
        register int first_actor asm("r0") = 0;

        asm volatile("" : "+r"(first_x));
        asm volatile("" : "+r"(first_y));
        asm volatile("" : "+r"(first_actor));
        __MapActor_SetPos(first_actor, first_x, first_y);
    }
    {
        register int middle_base asm("r3") = -0x280000;
        register int left_offset asm("r2") = -0x100000;
        register int left_x asm("r1");
        register int first_actor asm("r0");

        asm volatile("" : "+r"(middle_base), "+r"(left_offset));
        middle_base += y_fixed;
        asm volatile("" : "+r"(middle_base));
        middle_y = middle_base;
        asm volatile("" : "+r"(middle_y));
        left_x = (x << 16) + left_offset;
        asm volatile("" : "+r"(left_x));
        first_actor = 1;
        asm volatile("" : "+r"(first_actor));
        __MapActor_SetPos(first_actor, left_x, middle_y);
    }
    __MapActor_SetPos(2, (x << 16) + 0x100000, middle_y);
    __MapActor_SetPos(3, x << 16, y_fixed - 0x200000);
    y_fixed -= 0x500000;
    __MapActor_SetPos(actor_id, x << 16, y_fixed);

    actor = __MapActor_GetActor(0);
    camera_speed = 0xc0;
    camera_speed <<= 8;
    *(unsigned short *)(actor + 6) = camera_speed;
    __SetCameraTarget(0, 0);
    __MapTransitionIn();
    __WaitMapTransition();
    __MessageID(ACTOR_FORMATION_MESSAGE_ID);
    __MapActor_DoAnim(actor_id, 3);
    __ActorMessage(actor_id, 0);
    __Func_80925cc(actor_id, 2);
    __ActorMessage(actor_id, 0);
    __Func_80925cc(actor_id, 2);
    __ActorMessage(actor_id, 0);
    __Func_80925cc(actor_id, 2);
    __ActorMessage(actor_id, 0);
    __MapActor_SetAnim(3, 3);
    __MapActor_SetAnim(1, 3);
    __MapActor_SetAnim(2, 3);
    __MapActor_DoAnim(0, 3);
    __CutsceneWait(6);

    __MapActor_SetAnim(1, 2);
    actor = __MapActor_GetActor(0);
    if (actor != 0)
        __MapActor_TravelTo(1, *(ActorFormationS16 *)(actor + 0x0a),
                            *(ActorFormationS16 *)(actor + 0x12));
    __MapActor_SetAnim(2, 2);
    actor = __MapActor_GetActor(0);
    if (actor != 0)
        __MapActor_TravelTo(2, *(ActorFormationS16 *)(actor + 0x0a),
                            *(ActorFormationS16 *)(actor + 0x12));
    __MapActor_SetAnim(3, 2);
    actor = __MapActor_GetActor(0);
    if (actor != 0)
        __MapActor_TravelTo(3, *(ActorFormationS16 *)(actor + 0x0a),
                            *(ActorFormationS16 *)(actor + 0x12));

    __Func_80921c4(actor_id, x - 0x10, y - 0x40);
    __MapActor_SetPos(1, 0, 0);
    __MapActor_SetPos(2, 0, 0);
    __MapActor_SetPos(3, 0, 0);
    __Func_80921c4(actor_id, x - 0x10, y - 0x10);
    __Func_80921c4(actor_id, x, y);
    __Func_8092adc(actor_id, camera_speed, 10);
    __CutsceneEnd();
}

#undef SET_ACTOR_FORMATION_SPEED
#undef ACTOR_FORMATION_MESSAGE_ID
#undef ACTOR_FORMATION_CUTSCENE_FUNCTION
