extern void __CutsceneStart(void);
extern void __MapActor_SetAnim(int actor, int animation);
extern void __CutsceneEnd(void);

void OvlFunc_934_2009378(void)
{
    __CutsceneStart();
    __MapActor_SetAnim(8, 0);
    __CutsceneEnd();
}
