extern void __Func_80925cc(int, int);
extern void __Func_8092adc(int a, int b, int c);

void OvlFunc_887_2008e34(void)
{
    struct Actor *actor;
    int rangeHi;
    unsigned int diff;

    actor = __MapActor_GetActor(0);
    rangeHi = 0x90;
    diff = actor->facing + (int)0xffffe000;
    rangeHi <<= 8;
    if (diff > (unsigned int)rangeHi) {
        __Func_80b3284(0, 0xd);
    } else {
        __CutsceneStart();
        if (__GetFlag(0x87a)) {
            __Func_80925cc(0xd, 2);
            __MapActor_Face(0xd, 0, 0xa);
            if (!GetFlagShl2(0xc0)) {
                __MessageID(0x1c14);
                __ActorMessage(0xd, 0);
                SetFlagShl2(0xc0);
            }
            __MessageID(0x1c15);
            __Func_8093054(0xd, 0);
            __Func_8092adc(0xd, rangeHi, 0xa);
        } else {
            if (__GetFlag(0x815)) {
                __MessageID(0x11a9);
            } else {
                __MessageID(0xf58);
            }
            __ActorMessage(0xd, 0);
        }
        __CutsceneEnd();
    }
}
