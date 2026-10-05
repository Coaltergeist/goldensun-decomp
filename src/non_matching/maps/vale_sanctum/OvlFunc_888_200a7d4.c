extern void __MapActor_SetPos(int, int, int);
extern void __Func_8091200(int, int);
extern void __Func_8091254(int);
extern void __CutsceneWait(int);
extern void *__CreateUIBox(int, int, int, int, int);
extern void __DrawSmallText(int, void *, int, int);
extern int __Func_801f730(int);
extern void __Func_801c0dc(void *, void *);
extern void __Func_801c154(void *, int, int);
extern void __Func_801c17c(void *);
extern void __CloseUIBox(void *, int);

extern int gKeyPress;
extern int gKeyRepeat;
extern unsigned int iwram_3001800;
extern int Lm888_411c[] __asm__(".Lm888_411c");

int OvlFunc_888_200a7d4(void)
{
    int cursor[3];
    void *handle;
    void *box;
    int choice;

    __MapActor_SetPos(8, 0, 0);
    __MapActor_SetPos(9, 0, 0);
    __MapActor_SetPos(10, 0, 0);
    __MapActor_SetPos(1, 0, 0);
    __MapActor_SetPos(11, 0, 0);
    __MapActor_SetPos(12, 0, 0);
    __MapActor_SetPos(0, 0, 0);

    __Func_8091200(0x80 << 9, 2);
    __Func_8091254(1);
    __CutsceneWait(1);

    box = __CreateUIBox(2, 7, 0x19, 5, 1);
    choice = 0x116e;
    __DrawSmallText(choice, box, 0x10, 0);
    if (!__Func_801f730(1)) {
        __DrawSmallText(choice + 2, box, 0x10, 0x10);
    } else {
        __DrawSmallText(choice + 1, box, 0x10, 0x10);
    }

    __Func_801c0dc(cursor, &handle);
    __Func_801c154(cursor, 0x48, 0x3c);

    choice = 0;
    while (!(gKeyPress & 1)) {
        if (gKeyRepeat & 0xc0) {
            choice ^= 1;
        }
        __Func_801c154(cursor, Lm888_411c[(iwram_3001800 >> 1) & 0xf] + 0x18, choice * 16 + 0x3c);
        __CutsceneWait(1);
    }

    __Func_801c17c(handle);
    __CloseUIBox(box, 1);

    return choice;
}
