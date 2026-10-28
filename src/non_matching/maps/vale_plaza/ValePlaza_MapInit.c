extern void OvlFunc_884_200a5b0(void);
extern void OvlFunc_884_20097c8(void);
extern void OvlFunc_884_20095b4(void);
extern void OvlFunc_884_2009084(void);
extern unsigned char gScript_884__0200ac00[];
extern void CS884_StartRain(void) __asm__("__StartRain");
extern void CS884_StartThunder(void) __asm__("__StartThunder");
extern void CS884_Refresh(void) __asm__("__Func_800fe9c");
extern void CS884_FinalizeRain(void) __asm__("__Func_8095268");
extern struct Actor *CS884_Actor(int) __asm__("__MapActor_GetActor");
extern void CS884_SpriteFlags(void *, int) __asm__("__Actor_SetSpriteFlags");
struct CS884_StateView { unsigned char pad[0x1c2]; short room; };
extern struct CS884_StateView CS884_State __asm__("gState");
int ValePlaza_MapInit(void)
{
    struct Actor *actor;
    if (API_GetFlag(0x90b)) API_MapActor_SetPos(8, 0, 0);
    if (API_GetFlag(0x90c)) API_MapActor_SetPos(9, 0, 0);
    if (API_GetFlag(0x90d)) API_MapActor_SetPos(10, 0, 0);

    switch (CS884_State.room) {
    case 0x61: goto entryScene;
    case 0x62:
        API_SetFlag(0x20);
        API_Func_8091e9c(0x32);
        goto done;
    case 0x63:
        OvlFunc_884_200a5b0();
        goto done;
    }
    actor = CS884_Actor(8);
    actor->scale.y = 0x18000;
    actor = CS884_Actor(9);
    actor->scale.y = 0x18000;
    actor = CS884_Actor(10);
    actor->scale.y = 0x18000;
    if (API_GetFlag(0x87a)) {
        API_CopyMapTiles(0x61, 2, 0x50, 5, 2, 2);
        API_CopyMapTiles(0x2a, 0x35, 0x2a, 0x36, 3, 1);
        CS884_Refresh();
        API_WaitFrames(1);
        goto done;
    }
    if (API_GetFlag(0x834)) {
        CS884_StartRain();
        CS884_StartThunder();
        API_Func_8010704(0x15, 0x26, 1, 1, 0x12, 0x29);
        if (API_GetFlag(0x840)) {
            API_MapActor_SetPos(0x11, 0, 0);
            API_MapActor_SetPos(0x12, 0, 0);
            API_Func_8092a1c(0x13, 0x10000, gScript_884__0200ac00);
        }
    } else if (API_GetFlag(0x815)) {
        API_MapActor_SetPos(0x10, 0xb40000, 0x2380000);
        API_CopyMapTiles(0x5c, 2, 0x50, 5, 2, 2);
        API_CopyMapTiles(0x2a, 0x35, 0x2a, 0x36, 3, 1);
        CS884_Refresh();
        API_WaitFrames(1);
    }
    if (CS884_State.room == 12) {
        OvlFunc_884_20097c8();
        goto done;
    }
    if (API_GetFlag(0x834)) {
        actor = CS884_Actor(20);
        actor->scale.x = 0x4ccc;
        actor->scale.y = 0x4ccc;
        actor = CS884_Actor(20);
        CS884_SpriteFlags(actor, 0);
        actor = CS884_Actor(21);
        actor->scale.x = 0x9999;
        actor->scale.y = 0x9999;
        API_MapActor_SetAnim(13, 5);
    } else if (API_GetFlag(0x815)) {
        API_MapActor_SetPos(21, 0x14b0000, 0xf90000);
        actor = CS884_Actor(21);
        CS884_SpriteFlags(actor, 0);
    }
    if (API_GetFlag(0x840)) {
        API_MapActor_SetPos(26, 0, 0);
        API_MapActor_SetPos(22, 0, 0);
    }
    if (CS884_State.room == 0x13) {
entryScene:
        OvlFunc_884_20095b4();
        goto done;
    }
    if (API_GetFlag(0x834) && API_GetFlag(0x842)) {
        OvlFunc_884_2009084();
        goto done;
    }
    if (API_GetFlag(0x834)) {
        API_MapTransitionIn();
        API_WaitMapTransition();
        CS884_FinalizeRain();
    }
done:
    return 0;
}
