extern void __Func_8092950(int a, int b);
extern void __Actor_SetSpriteFlags(int actor, int flags);
extern void __MapActor_SetSpeed(int a, int b, int c);

void OvlFunc_969_2009280(int a, int b)
{
    if (b != 0) {
        __Func_8092950(a, 0);
        __Actor_SetSpriteFlags(__MapActor_GetActor(a), 1);
        __MapActor_SetSpeed(a, 0xcccc, 0x6666);
    } else {
        __Func_8092950(a, 0xf);
        __Actor_SetSpriteFlags(__MapActor_GetActor(a), 0);
    }
}
