typedef unsigned char u8;

typedef struct Actor {
    u8 pad0[8];
    int x;
    u8 pad0c[4];
    int y;
    u8 pad14[0x40];
    u8 visible;
} Actor;

typedef struct GameState {
    u8 pad[0x1f4];
    int actorId;
} GameState;

extern GameState gState;
extern u8 *iwram_3001ebc;
extern Actor *MapActor_GetActor(int actorId);
extern Actor *GetFieldActor(int actorId);

void Func_809c314(void)
{
    register Actor *focus asm("r0");
    Actor *actor;
    int actorX;
    int actorY;
    register int focusY asm("r3");
    register int minX asm("r10");
    register int maxX asm("r8");
    register int minY asm("r7");
    register int maxY asm("r6");
    register unsigned actorId asm("r5");

    MapActor_GetActor(gState.actorId);
    focus = *(Actor **)(iwram_3001ebc + 0x1e0);
    minX = focus->x - 0x1400000;
    maxX = focus->x + 0x1400000;
    focusY = focus->y;
    minY = focusY - 0x2580000;
    maxY = focusY + 0x1900000;

    actorId = 8;
    do {
        actor = GetFieldActor(actorId);
        if (actor != 0) {
            actorX = actor->x;
            actorY = actor->y;
            if (actorX < minX || actorX > maxX ||
                actorY < minY || actorY > maxY) {
                actor->visible = 0;
            } else {
                actor->visible = 1;
            }
        }
        actorId++;
    } while (actorId <= 0x41);
}
