extern void __SetFlag(int);
extern void __WaitFrames(int);
extern void __Actor_SetSpriteFlags(int, int);
extern void __Func_8092b08(int, int);
extern int __GetFlag(int);
extern void __CutsceneStart(void);
extern void __GiveItemTo(int, int);
extern void __Func_8091e9c(int);
extern int OvlFunc_969_20084bc(void);
extern void OvlFunc_969_20088b4(void);
extern void OvlFunc_969_200a360(void);
extern void OvlFunc_969_200b8c0(void);
extern void OvlFunc_969_200b8dc(void);
extern void OvlFunc_969_200b924(void);
extern unsigned char gState[];

int VenusLighthouseAerie_MapInit(void)
{
    int i;
    struct Actor *actor;

    __SetFlag(0x144);
    __WaitFrames(1);
    __SetFlag(0x110);

    __Actor_SetSpriteFlags(__MapActor_GetActor(8), 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(9), 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(10), 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(11), 0);

    ((struct Actor *)__MapActor_GetActor(10))->scale.x = 0xffff0000;
    ((struct Actor *)__MapActor_GetActor(11))->scale.x = 0xffff0000;

    for (i = 12; i <= 17; i++) {
        actor = (struct Actor *)__MapActor_GetActor(i);
        __Actor_SetSpriteFlags(__MapActor_GetActor(i), 0);
        __Func_8092b08(i, 1);
        actor->__unk55 = 4;
        actor->flags |= 2;
        actor->pos.y = 0x8000;
    }

    switch (*(s16 *)&gState[0x1c2]) {
    case 1:
        if (!__GetFlag(0x109)) {
            OvlFunc_969_20088b4();
        }
        break;
    case 2:
        OvlFunc_969_200a360();
        break;
    case 3:
        OvlFunc_969_200b8c0();
        break;
    case 4:
        OvlFunc_969_200b924();
        break;
    case 9:
        __CutsceneStart();
        if (__GetFlag(0x345)) {
            __GiveItemTo(0, 0x41);
        } else if (__GetFlag(0x346)) {
            __GiveItemTo(1, 0x41);
        } else if (__GetFlag(0x347)) {
            __GiveItemTo(2, 0x41);
        } else {
            __GiveItemTo(3, 0x41);
        }
        __Func_8091e9c(9);
        break;
    case 0x5d:
        OvlFunc_969_200b8dc();
        break;
    }

    if (__GetFlag(0x109)) {
        int actorId = OvlFunc_969_20084bc();
        if (actorId != 0) {
            actor = (struct Actor *)__MapActor_GetActor(actorId);
            if (actor != NULL) {
                actor->__unk55 = 0;
            }
        }
    }

    return 0;
}
