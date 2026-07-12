extern int OptionalActorEnabled asm(".L57f8");
extern void *__MapActor_GetActor(int actor);
extern void OvlFunc_882_200c304(void *actor);

void OvlFunc_882_200c56c(void) {
    OvlFunc_882_200c304(__MapActor_GetActor(0x20));
    OvlFunc_882_200c304(__MapActor_GetActor(0x21));
    OvlFunc_882_200c304(__MapActor_GetActor(0x1e));
    if (OptionalActorEnabled == 0)
        OvlFunc_882_200c304(__MapActor_GetActor(0x1d));
}
