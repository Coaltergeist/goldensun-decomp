extern void *__galloc_iwram(int, int);
extern void __LoadItemIcon(int);
extern void __UploadSpriteGFX(int, int, void *);
extern void __gfree(int);
extern void __Actor_SetScript(struct Actor *, const void *);
extern void __Actor_WaitScript(struct Actor *);
extern void __DeleteActor(struct Actor *);
extern unsigned char gScript_887__02009eac[];
extern unsigned char gScript_887__02009ecc[];

void OvlFunc_887_20093e4(void)
{
    struct Actor *actor;
    struct Sprite *sprite;
    unsigned char *icon;

    __CutsceneStart();
    __Func_80933f8(-1, -1, -1, 0);
    __WaitFrames(1);
    __MapActor_SetPos(0, 0, 0);
    __MapActor_SetPos(0x12, 0xf0 << 17, 0xca << 16);
    __WaitFrames(1);
    __SetCameraTarget(0x12, 1);

    actor = __CreateActor(0x16, 0xa4 << 17, 0x80 << 10, 0xc3 << 16);
    actor->__unk55 = 0;
    actor->pos.y = 0xa0 << 11;

    sprite = actor->sprite;
    sprite->numLayers = 0;
    sprite->oam.attr0 &= ~0x2000;
    sprite->oam.palette = 0;

    icon = __galloc_iwram(0x11, sizeof(struct IconBuffer));
    __LoadItemIcon(0xe0);
    icon += 0x400;
    __UploadSpriteGFX(sprite->slot, 0x80, icon);
    __gfree(0x11);

    *(unsigned int *)(*(unsigned int *)iwram_3001ebc + (0xe0 << 1)) = (0xe0 << 1) + 0x42;

    __MapTransitionIn();
    __MapActor_SetSpeed(0x12, 0x80 << 9, 0x80 << 8);
    __MapActor_TravelToAnimWait(0x12, 0xf0 << 1, 0xb0);
    __MapActor_TravelToAnimWait(0x12, 0xd2 << 1, 0xa4);
    __MapActor_TravelToAnimWait(0x12, 0xa3 << 1, 0xb9);
    __Func_8092adc(0x12, 0x80 << 7, 0xa);

    __Actor_SetScript(actor, gScript_887__02009eac);
    __Actor_WaitScript(actor);
    __Actor_SetScript(actor, gScript_887__02009ecc);
    __Actor_WaitScript(actor);
    __CutsceneWait(0x14);
    __DeleteActor(actor);

    __MapActor_Jump(0x12, 2, 0x14);
    __Func_8092adc(0x12, 0, 0x28);
    __MapTransitionOut();
    __WaitMapTransition();
    __Func_8091e9c(0x16);
}
