#ifndef ACTOR_SPAWN_EFFECT_FUNCTION
#error "ACTOR_SPAWN_EFFECT_FUNCTION must name the generated entry point"
#endif
#ifndef ACTOR_SPAWN_EFFECT_X_SYMBOL
#error "ACTOR_SPAWN_EFFECT_X_SYMBOL must name the x-coordinate state"
#endif
#ifndef ACTOR_SPAWN_EFFECT_RANGE_SYMBOL
#error "ACTOR_SPAWN_EFFECT_RANGE_SYMBOL must name the spread state"
#endif
#ifndef ACTOR_SPAWN_EFFECT_MODE_SYMBOL
#error "ACTOR_SPAWN_EFFECT_MODE_SYMBOL must name the movement mode"
#endif
#ifndef ACTOR_SPAWN_EFFECT_SCRIPT
#error "ACTOR_SPAWN_EFFECT_SCRIPT must name the actor script"
#endif

typedef unsigned char ActorSpawnByte;
typedef unsigned int ActorSpawnWord;

extern int actor_spawn_x asm(ACTOR_SPAWN_EFFECT_X_SYMBOL);
extern int actor_spawn_range asm(ACTOR_SPAWN_EFFECT_RANGE_SYMBOL);
extern ActorSpawnWord actor_spawn_mode asm(ACTOR_SPAWN_EFFECT_MODE_SYMBOL);
extern ActorSpawnWord iwram_3001e40;
extern int **iwram_3001e70;
extern ActorSpawnByte *__CreateActor(int actor_id, int x, int y, int z);
extern int __Random(void);
extern void __PlaySound(int sound_id);
extern void __Actor_SetAnim(ActorSpawnByte *actor, int animation);
extern void __Actor_SetScript(ActorSpawnByte *actor, const void *script);
extern const ActorSpawnByte ACTOR_SPAWN_EFFECT_SCRIPT[];

/* 出現幅を動かし、一定の間隔で光の役者を作る。 */
void ACTOR_SPAWN_EFFECT_FUNCTION(void)
{
    ActorSpawnByte *actor;
    int *origin;
    ActorSpawnByte *sprite;
    int x;
    int z;
    register int zero asm("r5") = 0;

    switch (actor_spawn_mode) {
    case 1:
        if (actor_spawn_range <= 0x3a97)
            actor_spawn_range += 0x32;
        if (actor_spawn_x > 0x3c0000)
            actor_spawn_x -= 0x4000;
        break;
    case 2:
        if (actor_spawn_range <= 0x752f)
            actor_spawn_range += 0x32;
        if (actor_spawn_x > 0x180000)
            actor_spawn_x -= 0x4000;
        break;
    case 3:
        if (actor_spawn_x < -0x800000) {
            actor_spawn_mode = zero;
        } else {
            actor_spawn_range += 0x32;
            actor_spawn_x -= 0x4000;
        }
        break;
    }

    if ((iwram_3001e40 & 7) == 0) {
        actor = __CreateActor(0x11d, 0, 0, 0);
        if (actor != 0) {
            origin = *iwram_3001e70;
            if ((iwram_3001e40 & 0x3f) == 0)
                __PlaySound(0xf6);
            if (actor_spawn_mode != 0) {
                x = origin[0] +
                    (((ActorSpawnWord)__Random() * actor_spawn_range) >> 16) *
                        0x100 +
                    actor_spawn_x;
            } else {
                x = origin[0] + __Random() * 0x100 - 0x800000;
            }
            z = origin[2] + __Random() * 0x100 - 0x800000;
            actor[0x55] = 0;
            *(int *)(actor + 0x0c) = 0xa00000;
            *(int *)(actor + 0x18) = 0xe666;
            *(int *)(actor + 0x1c) = 0xe666;
            *(int *)(actor + 8) = x;
            *(int *)(actor + 0x10) = z;
            sprite = *(ActorSpawnByte **)(actor + 0x50);
            sprite[0x26] = 0;
            actor[0x23] &= 0xfe;
            {
                register int flags asm("r2") = sprite[9];
                register int mask asm("r3");

                asm volatile("" : "+r"(flags));
                mask = -13;
                mask &= flags;
                mask |= 4;
                sprite[9] = mask;
            }
            __Actor_SetAnim(actor, 1);
            __Actor_SetScript(actor, ACTOR_SPAWN_EFFECT_SCRIPT);
        }
    }
}

#undef ACTOR_SPAWN_EFFECT_SCRIPT
#undef ACTOR_SPAWN_EFFECT_MODE_SYMBOL
#undef ACTOR_SPAWN_EFFECT_RANGE_SYMBOL
#undef ACTOR_SPAWN_EFFECT_X_SYMBOL
#undef ACTOR_SPAWN_EFFECT_FUNCTION
