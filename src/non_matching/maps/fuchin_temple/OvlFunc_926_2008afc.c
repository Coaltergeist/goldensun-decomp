extern unsigned char gScript_926__0200c638[];

void OvlFunc_926_2008afc(void)
{
    __CutsceneStart();
    ((struct Actor *)__MapActor_GetActor(12))->stop = 0;
    while (((struct Actor *)__MapActor_GetActor(12))->pos.y > 0) {
        __WaitFrames(1);
    }
    ((struct Actor *)__MapActor_GetActor(12))->pos.y = 0;
    ((struct Actor *)__MapActor_GetActor(12))->prevPos.y = 0x80 << 24;
    ((struct Actor *)__MapActor_GetActor(12))->motion.y = 0;
    ((struct Actor *)__MapActor_GetActor(12))->stop = 1;
    API_MapActor_Face(12, 0, 0);
    if (__GetFlag(0x895)) {
        API_MessageID(0x1a5b);
    } else if (__GetFlag(0x89b)) {
        API_MessageID(0x189e);
    } else {
        API_MessageID(0x182a);
    }
    API_ActorMessage(12, 0);
    ((struct Actor *)__MapActor_GetActor(12))->facing = 0x80 << 7;
    ((struct Actor *)__MapActor_GetActor(12))->stop = 0;
    API_MapActor_SetBehavior(12, (int)gScript_926__0200c638);
    __CutsceneEnd();
}
