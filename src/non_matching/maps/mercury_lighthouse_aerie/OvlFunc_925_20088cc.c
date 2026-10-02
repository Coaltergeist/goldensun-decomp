struct ActorLayer {
    short spriteID;
};

struct ActorSprite {
    char pad[0x28];
    struct ActorLayer *layers[1];
};

struct MapActor {
    char pad[8];
    int pos[3];
    char pad2[0x3c];
    struct ActorSprite *sprite;
};

struct MapActors {
    char pad[0x14];
    struct MapActor *actors[66];
};

extern struct MapActors *iwram_3001ebc;
void *__MapActor_GetActor(int);

int OvlFunc_925_20088cc(void)
{
    struct MapActor *actor0;
    int minDist;
    int bestActor;
    unsigned int i;
    struct MapActors *mgr;

    mgr = iwram_3001ebc;
    bestActor = 0;
    actor0 = (struct MapActor *)__MapActor_GetActor(0);
    minDist = 0xa0 << 2;

    for (i = 8; i <= 0x41; i++) {
        struct MapActor *actor = mgr->actors[i];
        if (actor != 0) {
            if (actor->sprite->layers[0]->spriteID == 0xf2) {
                int dist = OvlFunc_925_2008890(actor0->pos, actor->pos);
                if (dist < minDist) {
                    minDist = dist;
                    bestActor = i;
                }
            }
        }
    }

    return bestActor;
}
