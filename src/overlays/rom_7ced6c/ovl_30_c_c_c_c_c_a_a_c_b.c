extern unsigned char *__MapActor_GetActor(int actor_id);
extern void __Func_8092b08(int actor_id, int value);
extern void __Func_8010704(int sourceX, int sourceY, int width, int height,
                           int destinationX, int destinationY);

void OvlFunc_946_200985c(int actor_id, int x, int y, int unused)
{
    unsigned char *actor;

    actor = __MapActor_GetActor(actor_id);
    if (actor != 0) {
        __Func_8092b08(actor_id, 3);

        {
            register unsigned char *flagsPtr __asm__("r1");
            register unsigned int oldFlags __asm__("r2");
            register unsigned int newFlags __asm__("r3");

            flagsPtr = actor + 0x23;
            oldFlags = *flagsPtr;
            newFlags = 2;
            __asm__ volatile ("" : "+r" (flagsPtr), "+r" (oldFlags),
                                   "+r" (newFlags));
            newFlags |= oldFlags;
            *flagsPtr = newFlags;
        }

        {
            register int destX __asm__("r3");
            register int destY __asm__("r2");

            destX = *(int *)(actor + 8);
            destY = *(int *)(actor + 0x10);
            destX >>= 20;
            destY >>= 20;
            destX -= 1;
            __asm__ volatile ("" : "+r" (destX), "+r" (destY));
            __Func_8010704(x, y, 3, 1, destX, destY);
        }
    }
}
