typedef struct MapActor {
    unsigned char pad00[8];
    int x;
    int field0c;
    int y;
    unsigned char pad14[0x14];
    int field28;
    unsigned char pad2c[0x1c];
    int field48;
} MapActor;

extern MapActor *__MapActor_GetActor(int actor);

int OvlFunc_935_2008944(int actorId)
{
    MapActor *base = __MapActor_GetActor(actorId);
    int i;

    for (i = 0; i <= 3; i++) {
        MapActor *actor = __MapActor_GetActor(i + 0xb);

        if ((unsigned int)(actor->field0c - 1) <= 0xffffe) {
            register int actorY asm("r4");
            register int actorX asm("r1");
            register int baseY asm("r2");
            register int baseX asm("r3");
            int value;

            value = actor->y;
            if (value < 0)
                value += 0xfffff;
            actorY = value >> 20;
            asm volatile("" : "+r"(actorY));
            value = actor->x;
            if (value < 0)
                value += 0xfffff;
            actorX = value >> 20;
            asm volatile("" : "+r"(actorX));
            value = base->y;
            if (value < 0)
                value += 0xfffff;
            baseY = value >> 20;
            asm volatile("" : "+r"(baseY));
            value = base->x;
            if (value < 0)
                value += 0xfffff;
            baseX = value >> 20;

            baseY -= actorY;
            if (baseX == actorX && baseY == 0) {
                actor->field0c = 0xff0000;
                actor->field48 = baseY;
                actor->field28 = baseY;
                return 1;
            }
        }
    }
    return 0;
}
