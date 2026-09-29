extern void __Actor_SetSpriteFlags(void *, int);

void OvlFunc_942_2008b68(int r0) {
    struct Actor *actor = __MapActor_GetActor(r0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(r0), 0);
    __Func_8092b08(r0, 3);
    actor->__unk55 = 0;
    actor->flags |= 2;
}
