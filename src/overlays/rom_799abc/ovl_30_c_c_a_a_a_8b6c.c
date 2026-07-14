extern unsigned char *__MapActor_GetActor(int);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __Func_8010704(int, int, int, int, int, int);
extern void __ClearFlag(int);
extern void __SetFlag(int);

void OvlFunc_905_2008b6c(void)
{
    unsigned char *p;
    int a;
    int w;

    p = __MapActor_GetActor(8);
    a = *(int *)(p + 8) / 0x100000;
    __CutsceneStart();
    if (a == 0x14) {
        __Func_8010704(0x12, 0x28, (w = 6), 3, 0x12, w);
        __ClearFlag(0x302);
    } else {
        __Func_8010704(0x18, 0x28, (w = 6), 3, 0x12, w);
        __SetFlag(0x302);
    }
    __CutsceneEnd();
}
