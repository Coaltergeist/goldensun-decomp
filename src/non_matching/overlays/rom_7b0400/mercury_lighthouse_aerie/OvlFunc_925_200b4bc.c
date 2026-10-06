extern unsigned char iwram_3001e40[];
extern unsigned char gScript_925__0200bc54[];
extern struct Actor *__CreateActor(int, int, int, int);
extern void __Actor_SetScript(struct Actor *, void *);
extern void __Func_80929d8(struct Actor *, int);
extern int _divsi3_RAM(int, int);
void OvlFunc_925_200b460(struct Actor *actor);

static inline void MapActor_SetPos(int actor, int x, int y)
{
    __MapActor_SetPos(actor, x << 12, y << 12);
}

void OvlFunc_925_200b4bc(void)
{
    struct Actor *leader;
    struct Actor *actor;
    struct Actor *spawn;
    struct Sprite *sprite;
    s16 *state;
    int offset;
    int scale;

    leader = (struct Actor *)__MapActor_GetActor(8);
    state = (s16 *)(*(unsigned char **)iwram_3001e70 + 0xe8);
    offset = ((__Random() * 48) >> 16) << 16;

    if (state[1] <= 0x81) {
        if (*(int *)iwram_3001e40 & 1) {
            __MapActor_SetPos(8, 0x98 << 17, 0x90 << 16);
            actor = (struct Actor *)__MapActor_GetActor(8);
            scale = 0x80 << 9;
        } else {
            __MapActor_SetPos(8, 0x98 << 17, 0x97 << 16);
            actor = (struct Actor *)__MapActor_GetActor(8);
            scale = 0x14ccc;
        }
        actor->scale.x = scale;
        actor = (struct Actor *)__MapActor_GetActor(8);
        actor->scale.y = scale;
    } else {
        MapActor_SetPos(8, 0x80, 0x80);
    }

    if (leader != NULL) {
        int zero = *(int *)iwram_3001e40 & 0xf;
        if (zero == 0) {
            spawn = __CreateActor(0x8e << 1,
                                  leader->pos.x + (0x80 << 12),
                                  leader->pos.y + offset + (0x80 << 12),
                                  leader->pos.z);
            offset = _divsi3_RAM(offset, 0xc0 << 11) << 16;
            if (spawn != NULL) {
                int randVal;
                sprite = spawn->sprite;
                __Actor_SetScript(spawn, gScript_925__0200bc54);
                __Func_80929d8(spawn, 3);
                spawn->__unk55 = zero;
                randVal = __Random() & 0x0ffff000;
                spawn->waveCounter = randVal;
                spawn->__unk66 = zero;
                spawn->linkedActor = leader;
                spawn->update = (actorfun_t *)OvlFunc_925_200b460;
                spawn->speed = (__sin((offset & 0xfffff) >> 4) * 24) >> 16;
                sprite->flags = 0;
                sprite->oam.priority = leader->sprite->oam.priority;
            }
        }
    }
}
