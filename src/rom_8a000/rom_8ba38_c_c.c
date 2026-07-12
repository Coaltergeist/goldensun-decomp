extern unsigned char gState;
extern void *FindMapActorEvent(int type, int actor);

void *Func_808d5a4(int actor) {
    register void *found asm("r0") = FindMapActorEvent(0, actor);
    register void *result asm("r6");
    register unsigned int offset asm("r2") = 0x24a;
    register unsigned char *state asm("r3") = &gState;
    register unsigned int zero asm("r2");
    signed short currentActor;

    asm volatile("" : "+r"(offset), "+r"(state));
    state += offset;
    zero = 0;
    asm volatile("" : "+r"(zero), "+r"(state));
    currentActor = *(signed short *)(state + zero);
    result = found;
    asm volatile("" : "+r"(result));
    if (currentActor == actor) {
        void *special = FindMapActorEvent(7, actor);

        if (special != 0)
            return special;
    }
    return result;
}
