struct Struct_20089c8 {
    int unk0;
    int unk4;
    int unk8;
    int unkC;
    u8 pad[0x14];
    void *unk24;
};

extern void __Func_800fe9c(void);
extern void OvlFunc_968_200896c(void);
extern int __cos(int);
extern int __sin(int);
extern void OvlFunc_968_2008118(fx32, fx32, fx32, int, int, int, int, void *);

void OvlFunc_968_20089c8(void)
{
    struct Actor *actor;
    vec3_t v;
    struct Struct_20089c8 sp1c;
    unsigned int i;

    actor = (struct Actor *)__MapActor_GetActor(0);
    API_CutsceneStart();
    API_Func_80933f8(-1, -1, -1, 0);
    __Func_800fe9c();
    API_WaitFrames(1);
    actor->pos.y = 0x82 << 16;
    actor->gravity = 0x80 << 8;
    actor->bounce = 0;
    actor->__unk55 = 0;
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_CutsceneWait(0x1e);
    API_PlaySound(0xcc);
    actor->__unk55 = 3;
    API_CutsceneWait(0x18);
    sp1c.unk4 = 7;
    sp1c.unk24 = (void *)OvlFunc_968_200896c;
    sp1c.unk8 = 0xcccc;
    sp1c.unkC = 0xcccc;
    for (i = 0; i <= 0x10; i++) {
        int angle = i << 12;
        v.x = __cos(angle);
        v.y = 0;
        v.z = __sin(angle);
        v.x += v.x / 2;
        OvlFunc_968_2008118(actor->pos.x, actor->pos.y, actor->pos.z, v.x, v.y, v.z, 0x1090001, &sp1c);
    }
    API_PlaySound(0xbc);
    API_MapActor_Surprise(0, 0x101);
    API_MapActor_SetAnim(0, 0x16);
    API_Func_8012330(0xa0 << 11, 0xa0 << 11, 0x80 << 9);
    API_Func_8012330(-1, -1, 0xe666);
    API_Func_8012350();
    API_MapActor_Surprise(0, 0x80 << 1);
    API_MapActor_PlayPendingSound();
    actor->gravity = 0x80 << 9;
    actor->bounce = 0x80 << 7;
    API_CutsceneEnd();
}
