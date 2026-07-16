typedef unsigned char u8;

void __Actor_SetSpriteFlags();
void __Func_80105d4();
void __Func_8010704();
void *__MapActor_GetActor();
void __MapActor_SetAnim();
void __WaitFrames();

void OvlFunc_941_20080d4(void)
{
    void *actor;
    register int sixth asm("r2");
    register int fifth asm("r3");

    actor = __MapActor_GetActor(10);
    __MapActor_SetAnim(10, 5);
    if (actor != 0) {
        __Actor_SetSpriteFlags(actor, 0);
        *((u8 *)actor + 0x23) = 1;
    }
    __Func_80105d4(0x29, 0x57, 2, 5, 0x15, 0x3b);
    __WaitFrames(4);
    fifth = 0x18;
    sixth = 0x3e;
    __Func_80105d4(3, 0x5d, 1, 1, fifth, sixth);
    __Func_80105d4(1, 0x5e, 1, 1, 0x15, 0x37);
    __Func_80105d4(0x2b, 0x57, 2, 5, 0x15, 0x3a);
    __WaitFrames(4);
    __Func_80105d4(0x29, 0x57, 2, 5, 0x15, 0x3a);
    __WaitFrames(4);
    __WaitFrames(4);
    __Func_8010704(0x15, 0xb, 2, 2, 0x15, 0xd);
    fifth = 0x16;
    sixth = 0xf;
    __Func_8010704(0x15, 0xb, 1, 1, fifth, sixth);
    __Func_8010704(0x13, 0x11, 1, 1, 0x15, 0xe);
}
