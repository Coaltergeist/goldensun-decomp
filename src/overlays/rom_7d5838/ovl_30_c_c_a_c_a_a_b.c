typedef struct MapState {
    unsigned char padding[0x1c0];
    int next_map;
    unsigned char padding_1c4[4];
    int transition_frames;
} MapState;

extern MapState *map_state asm("iwram_3001ebc");
extern void __Func_8091e9c(int actor_id);

void OvlFunc_950_200809c(int actor_id)
{
    map_state->next_map = 0x201;
    map_state->transition_frames = 0x18;
    __Func_8091e9c(actor_id);
}
