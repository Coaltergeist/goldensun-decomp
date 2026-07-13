#ifndef MAP_ACTOR_EVENT_COUNTER_FUNCTION
#error "MAP_ACTOR_EVENT_COUNTER_FUNCTION must name the generated entry point"
#endif
#ifndef MAP_ACTOR_EVENT_COUNTER_FLAG
#error "MAP_ACTOR_EVENT_COUNTER_FLAG must name the event counter flag"
#endif

typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

extern u8 gState[];
extern u8 *iwram_3001ebc;
extern u32 iwram_3001e40;
extern u8 *__MapActor_GetActor(int actorId);
extern int __GetFlagByte(int flag);
extern int __GetFlag(int flag);
extern void __SetFlagByte(int flag, int value);

/* 主人公の表示値とイベント進行値を現在の仲間構成に合わせる */
void MAP_ACTOR_EVENT_COUNTER_FUNCTION(void)
{
    register u8 *state asm("r3");
    register u32 stateOffset asm("r2");
    u8 *actor;
    u8 *mapState;
    int eventStep;

    state = gState;
    stateOffset = 0xfa;
    asm volatile("" : "+r"(state), "+r"(stateOffset));
    stateOffset <<= 1;
    state += stateOffset;
    asm volatile("" : "+r"(state));
    actor = __MapActor_GetActor(*(u32 *)state);

    mapState = iwram_3001ebc;
    *(u16 *)(actor + 6) = iwram_3001e40 << 12;

    eventStep = __GetFlagByte(MAP_ACTOR_EVENT_COUNTER_FLAG);
    if (eventStep != 0) {
        if (eventStep == 1) {
            register int progressOffset asm("r3") = 0xc1;
            register u16 *mapProgress asm("r2");
            register int progressValue asm("r3");

            asm volatile("" : "+r"(progressOffset));
            progressOffset <<= 1;
            mapProgress = (u16 *)(mapState + progressOffset);
            asm volatile("" : "+r"(mapProgress));
            progressValue = 99;
            asm volatile("" : "+r"(progressValue));
            *mapProgress = progressValue;
        } else if (__GetFlag(0x106) == 0) {
            eventStep--;
        }
    }

    __SetFlagByte(MAP_ACTOR_EVENT_COUNTER_FLAG, eventStep);
}

#undef MAP_ACTOR_EVENT_COUNTER_FUNCTION
#undef MAP_ACTOR_EVENT_COUNTER_FLAG
