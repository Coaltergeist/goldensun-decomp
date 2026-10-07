void OvlFunc_927_200a1b0(void)
{
    struct Actor *actor;

    actor = (struct Actor *)__MapActor_GetActor(0x12);
    __CutsceneStart();
    __MapActor_SetPos(0x12, 0x88 << 16, 0xb4 << 17);
    OvlFunc_927_2008ea8(0x12, 1);
    OvlFunc_927_2008d90(0x12, 0x88, 0x198, 0x80000);
    __CutsceneWait(10);
    OvlFunc_927_2008ae8(actor->pos.x, actor->pos.y, actor->pos.z + 0x40000,
                        0, 0, 0, 1, 0);
    API_Func_8092adc(0x12, 0xc000, 0x28);
    __MapActor_Surprise(0x12, 0x102);
    API_Func_80925cc(0x12, 2);
    __SetCameraTarget(0x12, 1);
    OvlFunc_927_2008d90(0x12, 0x88, 0x1b8, 0x60000);
    __MapActor_Face(0, 0x12, 0);
    __CutsceneWait(10);
    OvlFunc_927_2008d90(0x12, 0x88, 0x1d8, 0x30000);
    __MapActor_Face(0, 0x12, 0);
    __CutsceneWait(6);
    OvlFunc_927_2008d90(0x12, 0x88, 0x1f8, 0x30000);
    __MapActor_Face(0, 0x12, 0);
    __CutsceneWait(6);
    __SetCameraTarget(0, 1);
    __MapActor_SetPos(0x12, 0, 0);
    __CutsceneWait(60);
    __SetFlag(0x89d);
    __CutsceneEnd();
}
