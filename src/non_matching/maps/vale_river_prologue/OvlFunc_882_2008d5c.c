extern void OvlFunc_882_2008ec4(void);
extern void OvlFunc_882_2009a64(int, int);
extern int __MapActor_GetActor(int);

void OvlFunc_882_2008d5c(void)
{
    struct Actor *actor;
    struct Sprite *sprite;

    if (API_GetFlag(0xc4 << 2))
        return;

    API_CutsceneStart();
    if (!API_GetFlag(0x83 << 4)) {
        actor = (struct Actor *)__MapActor_GetActor(0xb);
        sprite = actor->sprite;
        API_Func_8012330(0x80 << 11, 0x80 << 11, 0x80 << 9);
        API_PlaySound(0x8d);
        API_WaitFrames(0x28);
        API_PlaySound(0x91);
        actor->flags &= ~1;
        *(u8 *)((u8 *)&sprite->oam + 9) = (*(u8 *)((u8 *)&sprite->oam + 9) & ~0xc) | 4;
        API_MapActor_SetPos(0xb, 0x1d90000, 0xe9 << 18);
        actor->speed = 0xc0 << 9;
        actor->accel = 0xc0 << 9;
        actor->pos.y += 0xf0 << 16;
        actor->prevPos.y = actor->pos.y;
        actor->bounce = 0x6666;
        API_MapActor_TravelToAnimWait(0xb, 0xac << 1, 0xe9 << 2);
        *(u8 *)((u8 *)&sprite->oam + 9) |= 0xc;
        actor->flags |= 1;
        API_CutsceneWait(0x28);
        API_PlaySound(0x121);
        API_Func_8012330(-1, -1, 0xe666);
        API_Func_8012350();
        API_MapActor_PlayPendingSound();
        API_SetFlag(0x83 << 4);
    }
    OvlFunc_882_2008ec4();
    API_SetFlag(0xc4 << 2);
    if (API_GetFlag(0x837) && !API_GetFlag(0x841) && !API_GetFlag(0xc3 << 2)) {
        actor = (struct Actor *)__MapActor_GetActor(0);
        if (actor->pos.y > (0x80 << 16)) {
            OvlFunc_882_2009a64(0xa3 << 1, 0x396);
            API_MapActor_TravelToAnimWait(0, 0x123, 0x396);
        } else {
            OvlFunc_882_2009a64(0x14f, 0x3bd);
        }
        API_SetFlag(0xc3 << 2);
    }
    API_CutsceneEnd();
}
