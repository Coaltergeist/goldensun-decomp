#ifndef ACTOR_APPROACH_FUNCTION
#error "ACTOR_APPROACH_FUNCTION must name the generated entry point"
#endif
#ifndef ACTOR_APPROACH_DISTANCE
#error "ACTOR_APPROACH_DISTANCE must name the distance helper"
#endif

typedef unsigned char ActorApproachByte;
typedef unsigned short ActorApproachHalf;

extern int ACTOR_APPROACH_DISTANCE(const int *target, const int *actor);
extern int __atan2(int y, int x);
extern void __Actor_SetAnim(ActorApproachByte *actor, int animation);

/* 相手との距離と向きを見て、接近動作を開始する。 */
int ACTOR_APPROACH_FUNCTION(ActorApproachByte *actor_arg,
                            ActorApproachByte *target_arg, int distance_arg,
                            int force_arg)
{
    register ActorApproachByte *actor asm("r6");
    register ActorApproachByte *target asm("r8");
    register int *target_x asm("r7");
    register int *actor_x asm("r5");
    register int distance asm("r10");
    register int force asm("r11");
    register int started asm("r9");
    register int *call_target asm("r0");
    register int *call_actor asm("r1");
    register int zero asm("r2");

    asm volatile("" : "=r"(actor) : "0"(actor_arg) : "memory");
    asm volatile("" : "=r"(target) : "0"(target_arg) : "memory");
    asm volatile("" : "=r"(target_x) : "0"(target) : "memory");
    asm volatile("" : "=r"(actor_x) : "0"(actor) : "memory");
    target_x += 2;
    asm volatile("" : "+r"(target_x) : : "memory");
    actor_x += 2;
    asm volatile("" : "+r"(actor_x) : : "memory");
    asm volatile("" : "=r"(distance) : "0"(distance_arg) : "memory");
    call_target = target_x;
    asm volatile("" : "+r"(call_target) : : "memory");
    zero = 0;
    asm volatile("" : "+r"(zero) : : "memory");
    call_actor = actor_x;
    asm volatile("" : "+r"(call_actor) : : "memory");
    asm volatile("" : "=r"(force) : "0"(force_arg) : "memory");
    started = zero;
    asm volatile("" : "+r"(started) : : "memory");

    if (ACTOR_APPROACH_DISTANCE(call_target, call_actor) < distance ||
        force != 0) {
        register unsigned int angle asm("r0");
        register unsigned int angle_plus asm("r1");
        register unsigned int work2 asm("r2");
        register unsigned int mask asm("r3");
        register unsigned int angle_minus asm("r4");
        register ActorApproachByte *target_low asm("r2");

        target_low = target;
        asm volatile("" : "+r"(target_low));
        angle = *(int *)(target_low + 0x10);
        asm volatile("" : "+r"(angle), "+r"(target_low));
        mask = *(int *)(actor + 0x10);
        asm volatile("" : "+r"(angle), "+r"(mask));
        angle_plus = *target_x;
        asm volatile("" : "+r"(angle), "+r"(angle_plus), "+r"(mask));
        angle -= mask;
        asm volatile("" : "+r"(angle), "+r"(angle_plus));
        mask = *actor_x;
        asm volatile("" : "+r"(angle), "+r"(angle_plus), "+r"(mask));
        angle_plus -= mask;
        asm volatile("" : "+r"(angle), "+r"(angle_plus));
        angle = __atan2(angle, angle_plus);

        mask = 0xfffff000;
        asm volatile("" : "+r"(angle), "+r"(mask));
        angle <<= 16;
        asm volatile("" : "+r"(angle), "+r"(mask));
        work2 = 0x80;
        asm volatile("" : "+r"(angle), "+r"(work2), "+r"(mask));
        angle >>= 16;
        asm volatile("" : "+r"(angle), "+r"(work2), "+r"(mask));
        work2 <<= 5;
        asm volatile("" : "+r"(angle), "+r"(work2), "+r"(mask));
        angle_minus = angle + mask;
        asm volatile("" : "+r"(angle), "+r"(work2), "+r"(mask),
                     "+r"(angle_minus));
        angle_plus = angle + work2;
        asm volatile("" : "+r"(angle), "+r"(angle_plus), "+r"(mask),
                     "+r"(angle_minus));
        mask = 0xf0;
        asm volatile("" : "+r"(angle), "+r"(angle_plus), "+r"(mask),
                     "+r"(angle_minus));
        work2 = *(ActorApproachHalf *)(actor + 6);
        asm volatile("" : "+r"(angle), "+r"(angle_plus), "+r"(work2),
                     "+r"(mask), "+r"(angle_minus));
        mask <<= 8;
        asm volatile("" : "+r"(angle), "+r"(angle_plus), "+r"(work2),
                     "+r"(mask), "+r"(angle_minus));
        angle_minus &= mask;
        angle_plus &= mask;
        angle &= mask;
        mask &= work2;

        if (angle == mask || angle_plus == mask || angle_minus == mask ||
            force != 0) {
            register ActorApproachByte *flag asm("r2") = actor;
            register int one asm("r3");
            register ActorApproachByte *call_actor_reg asm("r0");
            register int animation asm("r1");
            register int start_value asm("r2");

            asm volatile("" : "+r"(flag));
            flag += 0x5b;
            asm volatile("" : "+r"(flag));
            one = 1;
            asm volatile("" : "+r"(flag), "+r"(one));
            *flag = one;
            call_actor_reg = actor;
            asm volatile("" : "+r"(call_actor_reg));
            animation = 1;
            asm volatile("" : "+r"(call_actor_reg), "+r"(animation));
            __Actor_SetAnim(call_actor_reg, animation);
            start_value = 1;
            asm volatile("" : "+r"(start_value));
            started = start_value;
            asm volatile("" : "+r"(started));
        }
    } else {
        register ActorApproachByte *flag asm("r3") = actor;
        register int value asm("r2");
        register ActorApproachByte *call_actor_reg asm("r0");
        register int animation asm("r1");

        asm volatile("" : "+r"(flag));
        flag += 0x5b;
        asm volatile("" : "+r"(flag));
        value = started;
        asm volatile("" : "+r"(flag), "+r"(value));
        *flag = value;
        call_actor_reg = actor;
        asm volatile("" : "+r"(call_actor_reg));
        animation = 2;
        asm volatile("" : "+r"(call_actor_reg), "+r"(animation));
        __Actor_SetAnim(call_actor_reg, animation);
    }

    return started;
}

#undef ACTOR_APPROACH_DISTANCE
#undef ACTOR_APPROACH_FUNCTION
