typedef unsigned char u8;

extern u8 *__MapActor_GetActor(int actor_id);

void ACTOR_PALETTE_FUNCTION(void)
{
    register u8 *actor asm("r0") = __MapActor_GetActor(0);
    register int initial_palette asm("r3") = 3;
    register int palette asm("r5");

    asm volatile("" : "+r"(actor), "+r"(initial_palette));
    actor += 0x55;
    *actor = initial_palette;
    actor = __MapActor_GetActor(ACTOR_PALETTE_FIRST_ID);
    palette = 4;
    asm volatile("" : "+r"(actor), "+r"(palette));
    actor += 0x55;
    *actor = palette;
    actor = __MapActor_GetActor(ACTOR_PALETTE_FIRST_ID + 1);
    asm volatile("" : "+r"(actor), "+r"(palette));
    actor += 0x55;
    *actor = palette;
    actor = __MapActor_GetActor(ACTOR_PALETTE_FIRST_ID + 2);
    asm volatile("" : "+r"(actor), "+r"(palette));
    actor += 0x55;
    *actor = palette;
    actor = __MapActor_GetActor(ACTOR_PALETTE_FIRST_ID + 3);
    asm volatile("" : "+r"(actor), "+r"(palette));
    actor += 0x55;
    *actor = palette;
    actor = __MapActor_GetActor(ACTOR_PALETTE_FIRST_ID + 4);
    asm volatile("" : "+r"(actor), "+r"(palette));
    actor += 0x55;
    *actor = palette;
    actor = __MapActor_GetActor(ACTOR_PALETTE_FIRST_ID + 5);
    asm volatile("" : "+r"(actor), "+r"(palette));
    actor += 0x55;
    *actor = palette;
}
