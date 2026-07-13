extern unsigned char *GetFieldActor(unsigned int actor_id);
extern void WaitFrames(unsigned int frames);

void MapActor_WaitAnim(unsigned int actor_id, unsigned int expected_animation)
{
    unsigned char *actor = GetFieldActor(actor_id);
    register unsigned char *animation asm("r6");
    register unsigned char *loaded_animation asm("r3");
    register int elapsed asm("r5");
    register unsigned int current_animation asm("r3");

    if (actor == 0 || actor[0x54] != 1)
        return;

    loaded_animation = *(unsigned char **)(actor + 0x50);
    __asm__ volatile ("" : "+r" (loaded_animation));
    animation = loaded_animation;
    elapsed = 0;
    animation += 0x24;
    while (elapsed <= 0x59) {
        WaitFrames(1);
        current_animation = *animation;
        __asm__ volatile ("" : "+r" (current_animation));
        if (expected_animation != current_animation)
            break;
        elapsed++;
    }
}

/* Camelot counted the trailing zero-fill halfword in the function size. */
asm(".align 2, 0\n.size MapActor_WaitAnim, .-MapActor_WaitAnim");
