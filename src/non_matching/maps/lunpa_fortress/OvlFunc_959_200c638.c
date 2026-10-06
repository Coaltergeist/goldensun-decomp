extern int L5fa4 __asm__(".Lm959_5fa4");

void OvlFunc_959_200c638(void)
{
    int msg;

    switch (L5fa4) {
    case 0:
        msg = 0x2414;
        break;
    case 1:
        msg = 0x2415;
        break;
    case 2:
        msg = 0x2416;
        break;
    case 3:
        msg = 0x2417;
        break;
    case 4:
        msg = 0x2418;
        break;
    case 5:
        __Func_8092adc(0x15, 0xd000, 0);
        __CutsceneWait(0x32);
        __Func_8092adc(0x15, 0xb000, 0);
        __CutsceneWait(0x32);
        __Func_8092adc(0x15, 0x5000, 0);
        __CutsceneWait(0x32);
        __MessageID(0x2419);
        __ActorMessage(0x15, 0);
        return;
    case 6:
        msg = 0x241a;
        break;
    case 7:
        msg = 0x241b;
        break;
    default:
        return;
    }
    __MessageID(msg);
    __ActorMessage(0x15, 0);
}
