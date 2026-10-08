void __Func_808e118(void);
void OvlFunc_943_20092f0(void);
void OvlFunc_943_200b9ec(int);

void OvlFunc_943_20090a0(void) {
    struct Actor *actor;

    if (API_GetFlag(0x911) == 0) {
        return;
    }
    if (API_GetFlag(0x922) != 0) {
        return;
    }

    API_CutsceneStart();
    __Func_808e118();
    OvlFunc_943_20092f0();

    API_MapActor_SetSpeed(0x14, 0x6666, 0x3333);
    actor = (struct Actor *)__MapActor_GetActor(0x14);
    actor->__unk5A &= ~1;
    API_MapActor_TravelToAnimWait(0x14, 0xe8, 0x330);
    API_CutsceneWait(1);
    actor = (struct Actor *)__MapActor_GetActor(0x14);
    actor->__unk5A |= 1;
    API_CutsceneWait(0x14);

    API_Func_809259c(0x14, 2);
    OvlFunc_943_200b9ec(0x14);

    API_MapActor_SetSpeed(0x14, 0x13333, 0x9999);
    actor = (struct Actor *)__MapActor_GetActor(0x14);
    actor->__unk5A &= ~1;
    API_MapActor_TravelToAnimWait(0x14, 0xf4, 0x324);
    API_CutsceneWait(1);
    actor = (struct Actor *)__MapActor_GetActor(0x14);
    actor->__unk5A |= 1;
    API_CutsceneWait(0x14);

    API_MapActor_SetSpeed(0x14, 0x33333, 0x19999);
    API_MapActor_TravelToAnimWait(0x14, 0xf8, 0x30a);
    API_MapActor_TravelToAnimWait(0x14, 0xf8, 0x2bc);
    API_MapActor_SetPos(0x14, 0xf6 << 16, 0x80 << 18);
    API_Func_8092adc(0x14, 0, 0);
    API_MapActor_Emote(0, 0x101, 0x3c);
    API_CutsceneEnd();
}