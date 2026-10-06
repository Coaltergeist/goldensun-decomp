extern unsigned int gKeyRepeat;
extern unsigned int gKeyPress;
extern void *__CreateUIBox(int, int, int, int, int);
extern void __Func_8016478(void *);
extern void __Func_801e9a0(int, int, void *, int, int);
extern int __CloseUIBox(void *, int);
extern int __Debug_LoadPresetParty(int);

unsigned int OvlFunc_971_2008e10(int actor)
{
    void *box;
    int selected;
    int prev_selected;
    int off;
    unsigned char *p;

    __CutsceneStart();
    off = 0xfa;
    off <<= 1;
    p = (unsigned char *)&gState + off;
    __MapActor_Face(actor, *(int *)p, 0);
    __MessageID(0x989);
    __ActorMessage(actor, 0);

    box = __CreateUIBox(0, 0, 6, 4, 2);
    prev_selected = -1;
    selected = 0;

    while (1) {
        if (selected != prev_selected) {
            __Func_8016478(box);
            __Func_801e9a0(selected, 3, box, 0, 0);
            prev_selected = selected;
        }

        if (gKeyRepeat & 0x20) {
            selected--;
        }
        if (gKeyRepeat & 0x10) {
            selected++;
        }
        if (selected < 0) {
            selected = 0;
        }

        if (gKeyPress & 1) {
            break;
        }
        if (gKeyPress & 2) {
            selected = -1;
            break;
        }

        __WaitFrames(1);
    }

    __CloseUIBox(box, 1);

    if (selected < 0) {
        __MessageID(0x98a);
        __ActorMessage(9, 0);
    } else if (__Debug_LoadPresetParty(selected) != 0) {
        __MessageID(0x98b);
        __ActorMessage(9, 0);
    } else {
        __MessageID(0x98c);
        __ActorMessage(9, 0);
    }

    __WaitFrames(10);
    return __CutsceneEnd();
}
