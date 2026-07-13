extern unsigned char gState[];
extern unsigned char *iwram_3001ebc;
extern unsigned char *__MapActor_GetActor(int actor);

void OvlFunc_956_2008204(void)
{
    register unsigned char **work_address __asm__("r3") = &iwram_3001ebc;
    register int state_offset __asm__("r1") = 0xfa;
    register unsigned char *work __asm__("r2");
    register unsigned char *state __asm__("r3");
    register int actor_id __asm__("r0");
    register unsigned char *other __asm__("r5");

    __asm__ volatile ("" : "+r" (work_address), "+r" (state_offset));
    work = *work_address;
    __asm__ volatile ("" : "+r" (work));
    state = gState;
    __asm__ volatile ("" : "+r" (state));
    state_offset <<= 1;
    state += state_offset;
    __asm__ volatile ("" : "+r" (state));
    actor_id = *(int *)state;
    __asm__ volatile ("" : "+r" (actor_id));

    {
        register int work_offset __asm__("r3") = 0xf0;

        __asm__ volatile ("" : "+r" (work_offset));
        work_offset <<= 1;
        work += work_offset;
        __asm__ volatile ("" : "+r" (work));
    }
    other = *(unsigned char **)work;
    __asm__ volatile ("" : "+r" (other));

    {
        register unsigned char *actor __asm__("r0") =
            __MapActor_GetActor(actor_id);
        register int type_offset __asm__("r1") = 0x12;
        register int actor_type __asm__("r3");

        __asm__ volatile ("" : "+r" (actor), "+r" (type_offset));
        actor_type = *(short *)(actor + type_offset);
        actor_type -= 0xb7;
        if ((unsigned int)actor_type <= 3) {
            register int value __asm__("r3") = *(int *)(other + 8);
            register int delta __asm__("r2");

            __asm__ volatile ("" : "+r" (value));
            delta = -0xcccc;
            __asm__ volatile ("" : "+r" (delta));
            value += delta;
            *(int *)(other + 8) = value;
            value = *(int *)(actor + 8);
            value += delta;
            *(int *)(actor + 8) = value;
        }
    }
}
