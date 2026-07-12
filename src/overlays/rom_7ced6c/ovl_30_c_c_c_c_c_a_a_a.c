extern int __GetFlag(int flag);
extern void __Func_8010704(int x, int y, int width, int height,
                           int sourceX, int sourceY);
extern void __MapActor_SetPos(int actor, int x, int z);
extern unsigned char *__MapActor_GetActor(int actor);

void OvlFunc_946_200967c(void)
{
    register int x asm("r1");
    register int z asm("r2");
    register int actorId asm("r0");
    register int sourceX asm("r3");
    register int sourceY asm("r2");
    unsigned char *actor;

    if (__GetFlag(0x8c4)) {
        sourceX = 8;
        sourceY = 0x15;
        asm volatile("" : "+r"(sourceX), "+r"(sourceY));
        __Func_8010704(0, 0, 1, 1, sourceX, sourceY);
        x = 0xf2;
        z = 0xf2;
        actorId = 0xf;
        asm volatile("" : "+r"(x), "+r"(z), "+r"(actorId));
        x <<= 18;
        z <<= 18;
        __MapActor_SetPos(actorId, x, z);
    } else {
        actor = __MapActor_GetActor(0xf);
        *(int *)(actor + 0x1c) = 0x19999;
    }

    if (__GetFlag(0x8c5)) {
        x = 0xf2;
        z = 0xf2;
        actorId = 0x10;
        asm volatile("" : "+r"(x), "+r"(z), "+r"(actorId));
        x <<= 18;
        z <<= 18;
        __MapActor_SetPos(actorId, x, z);
    } else {
        actor = __MapActor_GetActor(0x10);
        *(int *)(actor + 0x1c) = 0x19999;
    }

    if (__GetFlag(0x8c6)) {
        x = 0xf2;
        z = 0xf2;
        actorId = 0x11;
        asm volatile("" : "+r"(x), "+r"(z), "+r"(actorId));
        x <<= 18;
        z <<= 18;
        __MapActor_SetPos(actorId, x, z);
    } else {
        actor = __MapActor_GetActor(0x11);
        *(int *)(actor + 0x1c) = 0x19999;
    }

    if (__GetFlag(0x8c7)) {
        x = 0xf2;
        z = 0xf2;
        actorId = 0x12;
        asm volatile("" : "+r"(x), "+r"(z), "+r"(actorId));
        x <<= 18;
        z <<= 18;
        __MapActor_SetPos(actorId, x, z);
    } else {
        actor = __MapActor_GetActor(0x12);
        *(int *)(actor + 0x1c) = 0x19999;
    }
}
