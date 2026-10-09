extern const int Lm968_5148[] __asm__(".Lm968_5148");

void OvlFunc_968_200a2c8(int arg0)
{
    struct Actor *actor8;
    struct Actor *actor9;
    struct Actor *actor;
    unsigned int i;
    int y;

    actor8 = (struct Actor *)__MapActor_GetActor(8);
    actor9 = (struct Actor *)__MapActor_GetActor(9);
    API_MapActor_SetSpeed(8, 0x8000, 0x4000);
    API_MapActor_SetSpeed(9, 0x8000, 0x4000);
    if (arg0 != 0) {
        API_PlaySound(0xb4);
    }
    API_Actor_TravelTo(actor8, actor8->pos.x, Lm968_5148[actor8->waveCounter], actor8->pos.z);
    API_Actor_TravelTo(actor9, actor9->pos.x, Lm968_5148[actor9->waveCounter], actor9->pos.z);
    API_MapActor_WaitMovement(8);
    API_MapActor_WaitMovement(9);
    actor8->pos.y = Lm968_5148[actor8->waveCounter];
    actor9->pos.y = Lm968_5148[actor9->waveCounter];
    if (arg0 != 0) {
        API_PlaySound(0x121);
    }
    for (i = 0; i <= 4; i++) {
        actor = (struct Actor *)__MapActor_GetActor(i + 8);
        y = actor->pos.y / 0x10000;
        if (y < 0 && y > -30) {
            API_Func_8010704(4, 0x13, 1, 1, actor->pos.x >> 20, actor->pos.z >> 20);
        }
    }
    API_CutsceneWait(arg0);
}
