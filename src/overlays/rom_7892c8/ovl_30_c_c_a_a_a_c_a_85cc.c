typedef signed short s16;

struct GameState {
    unsigned char unknown[0x1c2];
    s16 map;
};

struct IwramState {
    unsigned char unknown[0x1c0];
    int value;
};

extern struct GameState gState;
extern struct IwramState *iwram_3001ebc;
extern void __Func_8091200(int, int);
extern void __Func_8091254(int);
extern void __CutsceneWait(int);
extern int __GetFlag(int);
extern void __SetFlag(int);
extern void __ClearFlag(int);
extern void __MapActor_SetPos(int, int, int);
extern void OvlFunc_888_200b270(void);
extern void OvlFunc_888_200888c(void);

static inline void SetActorPosition(int actor, int x, int z)
{
    __MapActor_SetPos(actor, x << 16, z << 15);
}

int OvlFunc_888_20085cc(void)
{
    iwram_3001ebc->value = 0x209;
    __Func_8091200(0x10000, 0);
    __Func_8091254(1);
    __CutsceneWait(1);

    switch (gState.map) {
    case 10:
    case 11:
    case 12:
        if (__GetFlag(0x855) != 0) {
            SetActorPosition(10, 0xc8, 0xa0);
        }
        goto clear_flag;
    case 20:
        OvlFunc_888_200b270();
        if (__GetFlag(0x109) == 0)
            OvlFunc_888_200888c();
        goto clear_flag;
    case 29:
    case 32:
    case 35:
clear_flag:
        __ClearFlag(0x12f);
        break;
    case 21:
        OvlFunc_888_200b270();
        __SetFlag(0x201);
        if (__GetFlag(0x109) == 0)
            OvlFunc_888_200888c();
        __ClearFlag(0x12f);
        break;
    }
    return 0;
}
