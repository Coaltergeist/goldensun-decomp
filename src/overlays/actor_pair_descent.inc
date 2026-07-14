#ifndef ACTOR_PAIR_DESCENT_FUNCTION
#error "ACTOR_PAIR_DESCENT_FUNCTION must name the generated entry point"
#endif
#ifndef ACTOR_PAIR_DESCENT_SELECT
#error "ACTOR_PAIR_DESCENT_SELECT must name the actor-selection helper"
#endif
#ifndef ACTOR_PAIR_DESCENT_RESULT
#error "ACTOR_PAIR_DESCENT_RESULT must name the selection result word"
#endif

typedef unsigned char ActorPairDescentByte;

extern ActorPairDescentByte *__MapActor_GetActor(int actor_id);
extern void __CutsceneStart(void);
extern int ACTOR_PAIR_DESCENT_SELECT(void);
extern int ACTOR_PAIR_DESCENT_RESULT;
extern void __SetFlag(int flag);
extern void __WaitFrames(int frames);
extern void __CutsceneEnd(void);

/* 二人の役者を段階的に沈め、地形切替の印を立てる。 */
void ACTOR_PAIR_DESCENT_FUNCTION(void)
{
    register ActorPairDescentByte *primary asm("r7");
    register ActorPairDescentByte *secondary asm("r6");
    register int *selection asm("r5");
    register int selected asm("r0");

    primary = __MapActor_GetActor(0);
    __CutsceneStart();
    selected = ACTOR_PAIR_DESCENT_SELECT();
    selection = &ACTOR_PAIR_DESCENT_RESULT;
    *selection = selected;
    if (selected != 0) {
        register ActorPairDescentByte *flag asm("r2");
        register int zero asm("r3");
        register ActorPairDescentByte *primary_flag asm("r1");
        register unsigned int flag_value asm("r2");
        register unsigned int flag_mask asm("r3");
        register int negative_delta asm("r2");

        __SetFlag(0x94 << 2);
        secondary = __MapActor_GetActor(*selection);
        flag = secondary;
        flag += 0x55;
        zero = 0;
        *flag = zero;
        primary_flag = primary;
        primary_flag += 0x55;
        flag_value = *primary_flag;
        flag_mask = 0xfe;
        flag_mask &= flag_value;
        *primary_flag = flag_mask;

        negative_delta = -0x30000;
        *(int *)(secondary + 0x0c) += negative_delta;
        *(int *)(primary + 0x0c) += negative_delta;
        *(int *)(primary + 0x14) += negative_delta;
        __WaitFrames(2);

        negative_delta = -0x20000;
        *(int *)(secondary + 0x0c) += negative_delta;
        *(int *)(primary + 0x0c) += negative_delta;
        *(int *)(primary + 0x14) += negative_delta;
        __WaitFrames(10);

        {
            register int middle_delta asm("r5") = 0x80;

            middle_delta <<= 10;
            *(int *)(secondary + 0x0c) += middle_delta;
            *(int *)(primary + 0x0c) += middle_delta;
            *(int *)(primary + 0x14) += middle_delta;
            __WaitFrames(4);

            *(int *)(secondary + 0x0c) += middle_delta;
            *(int *)(primary + 0x0c) += middle_delta;
            *(int *)(primary + 0x14) += middle_delta;
            __WaitFrames(4);
        }

        negative_delta = 0x80;
        negative_delta <<= 9;
        *(int *)(secondary + 0x0c) += negative_delta;
        *(int *)(primary + 0x0c) += negative_delta;
        *(int *)(primary + 0x14) += negative_delta;
    }
    __CutsceneEnd();
}

#undef ACTOR_PAIR_DESCENT_RESULT
#undef ACTOR_PAIR_DESCENT_SELECT
#undef ACTOR_PAIR_DESCENT_FUNCTION
