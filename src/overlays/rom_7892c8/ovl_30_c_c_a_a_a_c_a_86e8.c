void OvlFunc_888_20086e8(void)
{
    unsigned long a;
    unsigned long b;

    __CutsceneStart();
    a = 0x80;
    b = 0x80;
    a = a << 9;
    asm volatile("" : "+r"(a), "+r"(b));
    b = b << 6;
    __Func_80933d4(a, b);
    __Func_8093500(1, 1);
    __Func_8093530();
    __CutsceneWait(0x14);
    __Func_809280c(8, 0, 0);
    __CutsceneWait(0xa);
    __MapActor_DoAnim(8, 4);
    __CutsceneWait(0x14);
    __MessageID(0x116c);
    __ActorMessage(8, 0);
    __SetFlag(0x200);
    __CutsceneEnd();
}
