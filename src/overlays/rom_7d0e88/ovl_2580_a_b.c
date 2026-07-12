typedef struct MapActor {
    unsigned char padding00[8];
    int x;
    unsigned char padding0c[4];
    int z;
    unsigned char padding14[0x58];
    void (*update)(void);
} MapActor;

extern MapActor *__MapActor_GetActor(int actorId);
extern int __GetFlag(int flag);
extern void __Actor_SetAnim(MapActor *actor, int animation);
extern void OvlFunc_947_200a0b8(void);
extern void __Func_8010704(int x, int y, int width, int height,
                           int sourceX, int sourceY);
extern unsigned char OvlData_947_200ad64[];
extern void __MapActor_SetBehavior(int actorId, unsigned char *behavior);

void OvlFunc_947_200a63c(int actorId)
{
    MapActor *actor = __MapActor_GetActor(actorId);

    if (__GetFlag(actorId + 0x1f5) != 0) {
        /* Fixed registers preserve callback and position load ordering. */
        register int x asm("r2");
        register int value asm("r3");

        __Actor_SetAnim(actor, 5);
        value = (int)OvlFunc_947_200a0b8;
        asm volatile("" : "+r"(value));
        x = actor->x;
        asm volatile("" : "+r"(x), "+r"(value));
        actor->update = (void (*)(void))value;
        value = actor->z;
        asm volatile("" : "+r"(x), "+r"(value));
        x >>= 20;
        value >>= 20;
        asm volatile("" : "+r"(x), "+r"(value));
        __Func_8010704(0x14, 0xe, 1, 1, x, value);
        __MapActor_SetBehavior(actorId, OvlData_947_200ad64);
    }
}
