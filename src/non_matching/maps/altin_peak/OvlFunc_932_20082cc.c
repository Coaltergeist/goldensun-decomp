extern void OvlFunc_932_200b850(int, int);
void __Func_808e118(void);

void OvlFunc_932_20082cc(int arg0)
{
    struct Actor *player = (struct Actor *)__MapActor_GetActor(0);
    struct Actor *target = (struct Actor *)__MapActor_GetActor(8);
    int dist;

    __Func_808e118();
    API_CutsceneStart();
    API_MapActor_SetAnim(0, 0x16);
    API_CutsceneWait(10);
    API_PlaySound(0x98);
    API_MapActor_SetSpeed(0, 0x33333, 0x19999);
    dist = target->pos.y - player->pos.y;
    if (dist < 0) {
        dist = player->pos.y - target->pos.y;
    }
    player->motion.y = ((dist >> 14) << 14) + (0x80 << 11);
    API_MapActor_SetAnim(0, 7);
    API_Actor_TravelTo(player, target->pos.x, target->pos.y, target->pos.z);
    API_WaitFrames(10);
    player->sprite->oam.priority = 3;
    API_MapActor_WaitMovement(0);
    while ((target->pos.y >> 14) < (player->pos.y >> 14)) {
        API_WaitFrames(1);
    }
    API_CutsceneEnd();
    API_PlaySound(0x9f);
    OvlFunc_932_200b850(arg0, 0);
    API_WaitFrames(20);
    API_MapActor_PlayPendingSound();
}
