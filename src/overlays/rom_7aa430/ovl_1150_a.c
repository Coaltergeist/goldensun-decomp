extern unsigned char gScript_923__0200a820[];
extern void __ClearFlag(int flag);
extern void __MapActor_SetBehavior(int actor, void *behavior);

void OvlFunc_923_2009150(void)
{
    __ClearFlag(0x205);
    __MapActor_SetBehavior(8, gScript_923__0200a820);
}
