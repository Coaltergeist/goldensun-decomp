extern void __Func_8092b08(int actor, int arg1);
extern void __Func_8010704(int x, int y, int width, int height,
                            int sourceX, int sourceY);
extern unsigned char *__MapActor_GetActor(int actor);

void OvlFunc_946_20098b0(int actorId, int x, int y)
{
    unsigned char *actor = __MapActor_GetActor(actorId);

    if (actor != 0) {
        __Func_8092b08(actorId, 3);
        {
            unsigned char *flagsPtr = actor + 0x23;
            register unsigned char old_flags asm("r2") = *flagsPtr;
            register unsigned char new_flags asm("r3") = 2;

            new_flags |= old_flags;
            *flagsPtr = new_flags;
        }
        {
            register int sourceZ asm("r3") = *(int *)(actor + 0x10) >> 20;
            register int sourceX asm("r2") = *(int *)(actor + 8) >> 20;

            sourceZ -= 1;
            asm volatile("" : "+r"(sourceZ), "+r"(sourceX));
            __Func_8010704(x, y, 1, 3, sourceX, sourceZ);
        }
    }
}
