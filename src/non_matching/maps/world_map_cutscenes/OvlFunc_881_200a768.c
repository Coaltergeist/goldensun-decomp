struct CutsceneEvent {
    int type;
    short id;
    short unk6;
    void (*func)(void);
};

struct CutsceneActor {
    short id;
    short unk2;
    int unk4;
    int x;
    int y;
    int z;
    short angle;
    short unk22;
};

void OvlFunc_881_200a768(void)
{
    extern unsigned char gOvl_0200e3f4[];
    extern unsigned char L5b84[] __asm__(".Lm881_5b84");
    extern void OvlFunc_881_200a858(void);
    struct CutsceneEvent *events;
    struct CutsceneActor *actors;
    int i;

    events = (struct CutsceneEvent *)gOvl_0200e3f4;
    for (i = 0; ; i++) {
        if (events[i].type == 1 && events[i].id == 0x8a) {
            events[i].type = 2;
            events[i].func = OvlFunc_881_200a858;
        }
        if (events[i].type == -1)
            break;
    }

    actors = (struct CutsceneActor *)L5b84;
    for (i = 0; ; i++) {
        if (actors[i].id == 0x39) {
            actors[i].x = 0x17940000;
            actors[i].z = 0xd480000;
            actors[i].angle = 0xc0 << 6;
            return;
        }
    }
}
