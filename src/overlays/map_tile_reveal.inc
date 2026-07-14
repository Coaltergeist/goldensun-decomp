#ifndef MAP_TILE_REVEAL_FUNCTION
#error "MAP_TILE_REVEAL_FUNCTION must name the generated entry point"
#endif
#ifndef MAP_TILE_REVEAL_EFFECT
#error "MAP_TILE_REVEAL_EFFECT must name the overlay effect helper"
#endif

typedef unsigned char MapTileRevealByte;

extern MapTileRevealByte *__MapActor_GetActor(int actor_id);
extern void __PlaySound(int sound_id);
extern void __CopyMapTiles(int source_x, int source_y, int target_x,
                           int target_y, int width, int height);
extern void __CutsceneWait(int frames);
extern void __Func_8010704(int, int, int, int, int, int);
extern void MAP_TILE_REVEAL_EFFECT(int, int, int);

/* 二段の地形を開き、役者と地図効果の状態を進める。 */
void MAP_TILE_REVEAL_FUNCTION(void)
{
    register MapTileRevealByte *actor asm("r6");
    register MapTileRevealByte *map_effect asm("r8");
    register int width asm("r5");
    register MapTileRevealByte *map_effect_low asm("r2");
    register int sound asm("r0");

    actor = __MapActor_GetActor(0);
    asm volatile("" : "+r"(actor));
    map_effect_low = *(MapTileRevealByte **)(actor + 0x50);
    asm volatile("" : "+r"(map_effect_low));
    sound = 0xbc;
    asm volatile("" : "+r"(sound), "+r"(map_effect_low));
    asm volatile("" : "=r"(map_effect) : "0"(map_effect_low));
    __PlaySound(sound);

    asm volatile("" : : : "r5");
    asm volatile("" : "=r"(width) : "0"(2) : "memory");
    __CopyMapTiles(0x2a, 0x21, 0x22, 0x10, width, width);
    __CopyMapTiles(0x2a, 0x23, 0x24, 0x10, width, width);
    __CutsceneWait(4);
    __CopyMapTiles(0x28, 0x21, 0x22, 0x10, width, width);
    __CopyMapTiles(0x28, 0x23, 0x24, 0x10, width, width);
    __CutsceneWait(4);

    {
        register int stack0 asm("r3") = 3;
        register int stack1 asm("r2") = 0x10;

        actor += 0x23;
        __Func_8010704(0x21, 0x15, 2, 2, stack0, stack1);
    }
    {
        register unsigned int actor_state asm("r2") = *actor;
        register unsigned int actor_mask asm("r3") = 0xfe;
        register MapTileRevealByte *effect asm("r2");
        register unsigned int effect_state asm("r3");
        register unsigned int effect_bits asm("r2");
        register int effect_x asm("r1");
        register int effect_kind asm("r0");
        register int effect_duration asm("r2");

        asm volatile("" : "+r"(actor_state));
        asm volatile("" : "+r"(actor_state), "+r"(actor_mask));
        actor_mask &= actor_state;
        asm volatile("" : "+r"(actor_mask));
        asm volatile("" : "=r"(effect) : "0"(map_effect));
        *actor = actor_mask;
        effect_state = effect[9];
        asm volatile("" : "+r"(effect), "+r"(effect_state));
        effect_bits = 0x0c;
        asm volatile("" : "+r"(effect_state), "+r"(effect_bits));
        effect_state |= effect_bits;
        asm volatile("" : "+r"(effect_state));
        effect_x = 0x88;
        asm volatile("" : "+r"(effect_x), "+r"(effect_state));
        asm volatile("" : "=r"(effect) : "0"(map_effect));
        effect[9] = effect_state;
        effect_x <<= 1;
        asm volatile("" : "+r"(effect_x));
        effect_kind = 0x40;
        asm volatile("" : "+r"(effect_kind), "+r"(effect_x));
        effect_duration = 0x0b;
        asm volatile("" : "+r"(effect_kind), "+r"(effect_x),
                     "+r"(effect_duration));
        MAP_TILE_REVEAL_EFFECT(effect_kind, effect_x, effect_duration);
    }
}

#undef MAP_TILE_REVEAL_EFFECT
#undef MAP_TILE_REVEAL_FUNCTION
