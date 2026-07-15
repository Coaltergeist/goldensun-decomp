typedef unsigned char u8;

typedef struct MapActor {
    u8 pad0[0x23];
    u8 flags23;
    u8 pad24[0x31];
    u8 value55;
    u8 pad56[3];
    u8 flags59;
    u8 pad5a[0x12];
    void (*callback)(void);
} MapActor;

extern void __CutsceneStart(void);
extern MapActor *__MapActor_GetActor(int actorId);
extern void OvlFunc_930_2009060(void);
extern void __Func_8010704(int, int, int, int, int, int);
extern void __WaitFrames(int frames);
extern void __SetFlag(int flag);
extern void __Func_8092b08(int actor, int value);
extern void __CutsceneEnd(void);

void OvlFunc_930_20090b8(void)
{
    __CutsceneStart();
    __MapActor_GetActor(0xe)->flags23 &= 0xfd;
    __MapActor_GetActor(0xe)->flags59 &= 0xfd;
    __MapActor_GetActor(0xe)->value55 = 0;
    __MapActor_GetActor(0xe)->callback = OvlFunc_930_2009060;
    __Func_8010704(0x37, 0x10, 1, 1, 0x38, 0x12);
    __Func_8010704(0x37, 0x10, 1, 1, 0x14, 0x12);
    __WaitFrames(1);
    __SetFlag(0x200);
    __Func_8092b08(0xe, 2);
    __CutsceneEnd();
}
