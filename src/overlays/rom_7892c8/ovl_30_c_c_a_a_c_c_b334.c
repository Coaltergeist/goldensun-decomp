typedef signed short s16;

struct GameState {
    unsigned char unknown[0x1c2];
    s16 map;
};

extern struct GameState gState;
extern int OvlFunc_888_200b2a8(void);
extern void OvlFunc_888_2008360(void);
extern void __UI_Sanctum(int);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern int __GetFlag(int);
extern void __MessageID(int);
extern void __ActorMessage(int, int);

void OvlFunc_888_200b334(void)
{
    if (OvlFunc_888_200b2a8() != 0) {
        __UI_Sanctum(8);
        return;
    }

    __CutsceneStart();
    switch (gState.map) {
    case 10:
    case 12:
        if (__GetFlag(0x855) != 0)
            __MessageID(0x1376);
        else
            __MessageID(0x1288);
        break;
    case 11:
        __MessageID(0x1ce8);
        break;
    case 20:
    case 21:
    case 50:
        __CutsceneEnd();
        OvlFunc_888_2008360();
        return;
    }
    __ActorMessage(8, 0);
    __CutsceneEnd();
}
