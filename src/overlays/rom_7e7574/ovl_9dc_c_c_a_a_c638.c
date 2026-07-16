typedef unsigned int u32;

extern const u32 mode_value asm(".L5fa4");
extern void __MessageID(int id);
extern void __ActorMessage(int actor, int value);
extern void __Func_8092adc(int actor, int speed, int arg2);
extern void __CutsceneWait(int frames);

void OvlFunc_959_200c638(void)
{
    int message;

    switch (mode_value) {
    case 0:
        message = 0x2414;
        goto send_message;
    case 1:
        message = 0x2415;
        goto send_message;
    case 2:
        message = 0x2416;
        goto send_message;
    case 3:
        message = 0x2417;
        goto send_message;
    case 4:
        message = 0x2418;
        goto send_message;
    case 6:
        message = 0x241a;
        goto send_message;
    case 7:
        message = 0x241b;
    send_message:
        __MessageID(message);
        __ActorMessage(0x15, 0);
        return;
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
    }
}
