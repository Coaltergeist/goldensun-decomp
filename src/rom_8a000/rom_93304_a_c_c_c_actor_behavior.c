typedef unsigned char u8;
extern u8 gState[];
extern u8 Script1[] asm(".L9fe00");
extern u8 Script2[] asm(".L9fd44");
extern u8 Script3[] asm(".L9fe10");
extern u8 Script4[] asm(".L9fecc");
extern u8 Script5[] asm(".L9ff18");
extern u8 Script6[] asm(".L9ff2c");
extern u8 Script7[] asm(".L9fe04");
extern void *MapActor_GetActor(void *map_actor);
extern void _Actor_SetScript(u8 *actor, u8 *script);

void Actor_SetBehavior(u8 *actor, int behavior)
{
    register u8 *saved asm("r5") = actor;
    u8 *script = (u8 *)behavior;
    switch (behavior) {
    case 1: script = Script1; break;
    case 2: script = Script2; break;
    case 3: script = Script3; break;
    case 4: script = Script4; break;
    case 5: script = Script5; break;
    case 6: {
        register u8 *state asm("r3") = gState;
        register void *map_actor asm("r0");
        asm volatile("mov r2, #0xfa\n\t"
                     "lsl r2, #1\n\t"
                     "add r3, r2"
                     : "+r"(state)
                     :
                     : "r2");
        map_actor = *(void **)state;
        *(void **)(saved + 0x68) = MapActor_GetActor(map_actor);
        script = Script6;
        break;
    }
    case 7: script = Script7; break;
    }
    _Actor_SetScript(saved, script);
}
