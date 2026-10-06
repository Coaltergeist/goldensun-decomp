struct Actor;
struct MapActors;

extern unsigned char gState[];
extern struct MapActors *iwram_3001ebc;
extern unsigned char iwram_3001e70[];

void __SetFlag(int);
int __GetFlag(int);
void __StartTask(void (*)(void), int);
void __Func_8092b08(int, int);
void *__MapActor_GetActor(int);
void __Actor_SetSpriteFlags(struct Actor *, int);
void __Func_800fe9c(void);
void __WaitFrames(int);
void __CopyMapTiles(int, int, int, int, int, int);
void __MapActor_SetPos(int, int, int);
int OvlFunc_925_20088cc(void);
void OvlFunc_925_200856c(void);
void OvlFunc_925_2009af0(void);
void OvlFunc_925_200b4bc(void);

int MercuryLighthouseAerie_MapInit(void)
{
    unsigned int i;
    int actorId;
    unsigned char *actor;
    short state;

    __SetFlag(0x111);
    *(int *)((unsigned char *)iwram_3001ebc + 0x1c0) = 0x204;
    if (*(short *)(gState + 0x1c0) != 0x3a)
        return 0;

    __SetFlag(0x144);
    __StartTask(OvlFunc_925_200b4bc, 0xc80);
    __Func_8092b08(0, 1);
    __Func_8092b08(1, 1);
    __Func_8092b08(2, 1);
    __Func_8092b08(3, 1);
    __Func_8092b08(5, 1);
    __Func_8092b08(0x14, 1);
    __Func_8092b08(0x15, 1);
    __Func_8092b08(0x16, 1);
    __Func_8092b08(0x17, 1);
    __Func_8092b08(0x18, 1);
    __Func_8092b08(8, 1);
    __Func_8092b08(9, 1);
    __Func_8092b08(0xa, 1);
    __Func_8092b08(0xb, 1);
    __Func_8092b08(0xc, 1);
    __Func_8092b08(0xd, 1);

    for (i = 0xe; i <= 0x13; i++) {
        __Func_8092b08(i, 1);
        ((unsigned char *)__MapActor_GetActor(i))[0x55] = 4;
        ((unsigned char *)__MapActor_GetActor(i))[0x23] |= 2;
        *(int *)((unsigned char *)__MapActor_GetActor(i) + 0xc) = 0xffcd8000;
    }

    if (__GetFlag(0x109) != 0) {
        actorId = OvlFunc_925_20088cc();
        if (actorId != 0) {
            actor = (unsigned char *)__MapActor_GetActor(actorId);
            if (actor != 0)
                actor[0x55] = 0;
        }
    }

    __Actor_SetSpriteFlags(__MapActor_GetActor(9), 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0xa), 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0xb), 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0xc), 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0xd), 0);
    *(int *)((unsigned char *)__MapActor_GetActor(0xc) + 0x18) = 0xffff0000;
    *(int *)((unsigned char *)__MapActor_GetActor(0xd) + 0x18) = 0xffff0000;

    state = *(short *)(gState + 0x1c2);
    if (state == 1) {
        if (__GetFlag(0x109) == 0)
            OvlFunc_925_200856c();
    } else if (state == 2) {
        if (__GetFlag(0x251) == 0) {
            *(int *)(*(unsigned char **)iwram_3001e70 + 0x164 + 0xc) = 0x4000000;
            __Func_800fe9c();
            __WaitFrames(1);
            __CopyMapTiles(4, 0x46, 4, 0x4a, 5, 4);
            __MapActor_SetPos(9, 0, 0);
            if (__GetFlag(0x109) == 0)
                OvlFunc_925_2009af0();
        }
    } else if (state == 5) {
        __SetFlag(0x251);
    }
    return 0;
}
