typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef unsigned int u32;

struct WorkState {
    u8 padding[0x182];
    u16 value;
};

struct GlobalState {
    u8 padding[0x24c];
    s16 field_24c;
};

extern struct WorkState *iwram_3001ebc;
extern struct GlobalState gState;
extern u8 *__MapActor_GetActor(int actor);
extern void __StopTask(void (*task)(void));

void OvlFunc_939_2009240(void)
{
    struct WorkState *state = iwram_3001ebc;
    u8 *actor = __MapActor_GetActor(0);

    if (gState.field_24c == 0 &&
        (u32)(*(int *)(actor + 8) - 0x900000) <= 0x200000 &&
        *(int *)(actor + 0x10) >= 0xa80000 &&
        *(int *)(actor + 0x10) < 0xb00000) {
        __StopTask(OvlFunc_939_2009240);
        state->value = 0x5b;
    }
}
