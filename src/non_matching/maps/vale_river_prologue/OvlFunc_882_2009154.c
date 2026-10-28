static inline int CS882B_Flag(int flag) { return __GetFlag(flag); }
extern struct Actor *CS882B_Actor(int) __asm__("__MapActor_GetActor");
extern void OvlFunc_882_20092f0(void);
void OvlFunc_882_2009154(void)
{
    unsigned int savedPriority, savedFlags;
    unsigned char *flags;
    struct Actor *boulder, *player;
    if (CS882B_Flag(0x312)) return;
    __CutsceneStart();
    if (!CS882B_Flag(0x832)) {
        boulder = CS882B_Actor(13);
        player = CS882B_Actor(0);
        savedPriority = player->sprite->oam.priority;
        flags = &player->flags;
        savedFlags = *flags;
        API_Func_8012330(0x40000, 0x40000, 0x10000);
        __PlaySound(0x8d);
        __WaitFrames(40);
        __PlaySound(0x91);
        API_Func_8092b08(0, 3);
        CS882B_Actor(0)->flags |= 2;
        API_MapActor_SetPos(13, 0, 0x2bf0000);
        boulder->speed = 0x18000;
        boulder->accel = 0x18000;
        boulder->pos.y += 0x500000;
        boulder->prevPos.y = boulder->pos.y;
        boulder->bounce = 0x8000;
        API_MapActor_TravelToAnimWait(13, 0x40, 0x2bf);
        __CutsceneWait(40);
        __PlaySound(0x121);
        API_Func_8012330(-1, -1, 0xe666);
        __Func_8012350();
        __MapActor_PlayPendingSound();
        __SetFlag(0x832);
        API_Func_8092b08(0, savedPriority);
        CS882B_Actor(0)->flags |= 1;
        *flags = savedFlags;
    }
    OvlFunc_882_20092f0();
    __SetFlag(0x312);
    if (CS882B_Flag(0x837) && !CS882B_Flag(0x841) && !CS882B_Flag(0x30c)) {
        if (CS882B_Actor(0)->pos.z <= 0x2b4ffff) {
            OvlFunc_882_2009a64(0x3e, 0x29d);
            API_MapActor_TravelToAnimWait(0, 0x1b, 0x273);
        } else {
            OvlFunc_882_2009a64(0x4b, 0x2cb);
            API_MapActor_TravelToAnimWait(0, 0x43, 0x2f5);
        }
        __SetFlag(0x30c);
    }
    __CutsceneEnd();
}
