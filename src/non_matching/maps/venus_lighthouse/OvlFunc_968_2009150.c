void OvlFunc_968_2009150(void)
{
    extern unsigned char gScript_968__0200d21c[];
    extern int OvlFunc_968_20085e4(struct Actor *);
    extern void __Func_8092950(int, int);
    struct Actor *actor;
    int dest;

    actor = (struct Actor *)__MapActor_GetActor(0);
    API_CutsceneStart();
    API_MapActor_SetBehavior(0, (int)gScript_968__0200d21c);
    API_MapActor_WaitScript(0);
    __Func_8092950(0, 6);
    actor->motion.y = 0x80 << 11;
    API_MapActor_SetSpeed(0, 0x80 << 11, 0x80 << 10);
    if ((actor->pos.z >> 20) <= 0x36) {
        ((struct Actor *)__MapActor_GetActor(0))->__unk5A &= 0xfe;
        dest = 0xd2;
    } else {
        ((struct Actor *)__MapActor_GetActor(0))->__unk5A &= 0xfe;
        dest = 0xee;
    }
    API_MapActor_TravelToAnimWait(0, ((short *)&actor->pos.x)[1], dest << 2);
    API_CutsceneWait(1);
    ((struct Actor *)__MapActor_GetActor(0))->__unk5A |= 1;
    API_CutsceneWait(0x14);
    actor->update = (actorfun_t *)OvlFunc_968_20085e4;
    API_MapActor_Emote(0, 0x81 << 1, 0x3c);
    API_MapActor_DoAnim(0, 4);
    __Func_8092950(0, 0);
    API_MapActor_DoAnim(0, 4);
    actor->update = 0;
    API_CutsceneEnd();
}
