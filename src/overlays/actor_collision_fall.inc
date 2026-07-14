#ifndef ACTOR_COLLISION_FALL_FUNCTION
#error "ACTOR_COLLISION_FALL_FUNCTION must name the generated entry point"
#endif

typedef unsigned char ActorCollisionFallByte;
typedef signed short ActorCollisionFallHalf;

extern ActorCollisionFallByte *__MapActor_GetActor(int actor_id);
extern int __TestCollision(ActorCollisionFallByte *actor, const void *test);
extern void __CutsceneStart(void);
extern void __Actor_SetAnim(ActorCollisionFallByte *actor, int animation);
extern void __WaitFrames(int frames);
extern void __PlaySound(int sound_id);
extern void __Actor_SetSpriteFlags(ActorCollisionFallByte *actor, int flags);
extern void __Func_8092158(int, int, int);
extern void __MapActor_SetAnim(int actor_id, int animation);
extern void __CutsceneEnd(void);

/* 接触できる時だけ落下演出を行い、役者の表示状態を元へ戻す。 */
int ACTOR_COLLISION_FALL_FUNCTION(const ActorCollisionFallByte *test)
{
    register int work asm("r5") = (int)test;
    register ActorCollisionFallByte *actor asm("r6");
    register ActorCollisionFallByte *flag asm("r7");
    register unsigned int saved_flag asm("r10");
    register int collision asm("r8");
    register int collision_result asm("r0");

    actor = __MapActor_GetActor(0);
    flag = actor + 0x55;
    saved_flag = *flag;
    collision_result = __TestCollision(actor, (const void *)work);
    collision = collision_result;
    if (collision_result == 0) {
        __CutsceneStart();
        __Actor_SetAnim(actor, 6);
        __WaitFrames(6);
        __PlaySound(0x98);
        __Actor_SetAnim(actor, 7);
        *(int *)(actor + 0x30) = 0xc0 << 10;
        *(int *)(actor + 0x34) = 0x80 << 10;
        *(int *)(actor + 0x28) = 0x80 << 11;
        *flag &= 0x7e;
        __Actor_SetSpriteFlags(actor, 0);
        __Func_8092158(0,
                       *(ActorCollisionFallHalf *)((ActorCollisionFallByte *)work +
                                                   2),
                       *(ActorCollisionFallHalf *)((ActorCollisionFallByte *)work +
                                                   10));
        __Actor_SetAnim(actor, 6);
        __Actor_SetSpriteFlags(actor, 1);
        *flag = collision;
        __MapActor_SetAnim(0x0a, 7);

        work = -0x10000;
        *(int *)(actor + 0x0c) += work;
        *(int *)(actor + 0x14) += work;
        __WaitFrames(2);
        *(int *)(actor + 0x0c) += work;
        *(int *)(actor + 0x14) += work;
        __WaitFrames(10);

        work = 0x80;
        work <<= 9;
        *(int *)(actor + 0x0c) += work;
        *(int *)(actor + 0x14) += work;
        __WaitFrames(4);
        *(int *)(actor + 0x0c) += work;
        *(int *)(actor + 0x14) += work;
        *flag = saved_flag;
        __CutsceneEnd();
        return 1;
    }
    return 0;
}

#undef ACTOR_COLLISION_FALL_FUNCTION
