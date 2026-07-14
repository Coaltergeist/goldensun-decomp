extern void __CutsceneStart(void);
extern unsigned char *__MapActor_GetActor(int actor);
extern void OvlFunc_903_2008dd8(int arg0);
extern void __Func_8010704(int, int, int, int, int, int);
extern void __SetFlag(int flag);
extern void __CutsceneEnd(void);

void OvlFunc_903_2008d04(void)
{
    unsigned char *actor;
    unsigned char *actor2;
    int kind;
    int twelve;
    int new_var;

    __CutsceneStart();
    actor = __MapActor_GetActor(8);
    kind = *(int *)(actor + 8) >> 20;
    if (kind == 0xb) {
        OvlFunc_903_2008dd8(8);
        actor2 = __MapActor_GetActor(8);
        new_var = actor2[0x23] | 2;
        actor2[0x23] = new_var;
        twelve = 0xc;
        __Func_8010704(0x27, 0xc, 3, 1, 8, twelve);
        __Func_8010704(0x2b, 0xb, 3, 1, twelve, kind);
        __SetFlag(0x86 << 4);
    }
    __CutsceneEnd();
}
