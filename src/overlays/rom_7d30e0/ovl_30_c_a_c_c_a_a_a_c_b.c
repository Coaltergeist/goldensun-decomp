extern void __CutsceneStart(void);
extern void __MapActor_SetAnim(int actor, int animation);
extern void __CutsceneEnd(void);

void OvlFunc_948_2008ec8(void)
{
    __CutsceneStart();
    __MapActor_SetAnim(0xf, 0);
    __CutsceneEnd();
}
