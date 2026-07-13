extern unsigned char gState[];
extern void *__MapActor_GetActor(int);
extern void __Actor_SetSpriteFlags(void *, int);
extern void __MapActor_SetPos(int, int, int);

void OvlFunc_932_200a9dc(void)
{
    void *actor = __MapActor_GetActor(9);
    register unsigned char *state asm("r3");
    register unsigned int offset asm("r2");
    register int actor_id asm("r0");
    register int x asm("r1");
    register int y asm("r2");

    __Actor_SetSpriteFlags(actor, 0);
    state = gState;
    asm volatile("" : "+r" (state) : : "memory");
    offset = 0xe1;
    offset <<= 1;
    asm("" : "+r" (offset));
    state += offset;
    asm("" : "+r" (state));
    offset = 0;
    asm("" : "+r" (offset));
    if (*(short *)(state + offset) == 2) {
        x = 0xb8;
        y = 0xa4;
        actor_id = 9;
        asm volatile("" : "+r" (x), "+r" (y), "+r" (actor_id) : : "memory");
        x <<= 16;
        y <<= 17;
        __MapActor_SetPos(actor_id, x, y);
    }
}
