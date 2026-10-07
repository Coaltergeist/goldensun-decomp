extern int _modsi3_RAM(int, int);
extern unsigned char L5b80[] __asm__(".Lm956_5b80");
extern unsigned char gScript_956__0200d96c[];
extern void __Actor_SetSpriteFlags(struct Actor *, int);

void OvlFunc_956_20093c0(void)
{
    struct Actor *leader;
    struct Actor *actor;
    int actorId;
    int x;
    int y;

    leader = __MapActor_GetActor(0);
    x = leader->pos.x;
    y = leader->pos.y;

    actorId = 0x29;
    switch (_modsi3_RAM(++*(int *)L5b80, 180)) {
    case 10:
        break;
    case 20:
        actorId = 0x2a;
        break;
    case 30:
        actorId = 0x2b;
        break;
    default:
        return;
    }

    actor = __MapActor_GetActor(actorId);
    if (actor == NULL)
        return;

    leader = __MapActor_GetActor(0);
    if (leader != NULL) {
        API_MapActor_SetPos(actorId, leader->pos.x, leader->pos.z);
    }

    __Actor_SetSpriteFlags(__MapActor_GetActor(actorId), 0);
    actor->__unk55 = 0;
    actor->scale.x = 0x6666;
    actor->scale.y = 0x6666;
    actor->pos.x = x + 0x40000;
    actor->pos.y = y + 0x40000;
    actor->prevPos.y = y + 0x40000;
    actor->waveCounter = 0x19;
    actor->__unk66 = 0x80;
    API_MapActor_SetBehavior(actorId, (int)gScript_956__0200d96c);
}
