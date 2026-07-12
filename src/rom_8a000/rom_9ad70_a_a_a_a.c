extern signed char ColorSwapTable[] __asm__(".L9f160");
extern unsigned int Random(void);
extern void ActorSetColorswap(void *actor, int color)
    __asm__("_Actor_SetColorswap");

void Func_809ad70(void *actor)
{
    register void *savedActor asm("r6") = actor;
    register signed char *table asm("r5") = ColorSwapTable;
    unsigned int index;

    /* Preserve both values across Random in the original saved registers. */
    asm volatile("" : "+r"(savedActor), "+r"(table));
    index = Random();
    index <<= 3;
    index >>= 16;
    ActorSetColorswap(savedActor, table[index]);
}
