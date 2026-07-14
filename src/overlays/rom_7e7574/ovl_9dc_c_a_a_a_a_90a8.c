extern void __Func_809218c(int actor, int x, int y);
extern void __MapActor_WaitMovement(int actor_id);
extern void __Func_8092adc(int actor, int speed, int arg2);
extern void __CutsceneWait(int frames);
extern void __MapActor_SetAnim(int actor, int animation);
extern void __Func_808f1c0(int actor, int value);
extern int __Func_8091a58(int target, int arg1);
extern void __SetFlag(int flag);
extern void __MapActor_SetPos(int actor_id, int x, int y);

void OvlFunc_959_20090a8(void)
{
    __Func_809218c(0, 0x108, 0x318);
    __MapActor_WaitMovement(0);
    __Func_8092adc(0, 0x4000, 0);
    __CutsceneWait(10);
    __MapActor_SetAnim(0, 1);
    __Func_808f1c0(0xea, 3);
    __MapActor_SetAnim(0, 1);
    __Func_8091a58(0xea, 0);
    __SetFlag(0xf2e);
    __MapActor_SetPos(8, 0, 0);
}
