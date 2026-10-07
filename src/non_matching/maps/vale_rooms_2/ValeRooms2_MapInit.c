extern void __ClearFlag(int);
extern void __SetFlag(int);
extern void __MapActor_SetPos(int, int, int);
extern void OvlFunc_887_20093b4(void);
extern void __Func_8092b08(int, int);
extern struct Actor *__MapActor_GetActor(int);
extern void __Actor_SetSpriteFlags(struct Actor *, int);
extern void __Func_80118a8(int);
extern void __MapActor_SetAnim(int, int);
extern void OvlFunc_887_2008a0c(void);
extern void OvlFunc_887_2008578(void);
extern void OvlFunc_887_20093e4(void);
extern void __StartThunder(void);
extern void __Func_8095240(void);
extern void __WaitFrames(int);
extern void __MapTransitionIn(void);
extern void __Func_8095268(void);
extern void __Func_800fe9c(void);

int ValeRooms2_MapInit(void)
{
    unsigned char *base;

    if (*(short *)((char *)&gState + (0xe1 << 1)) == 0x13) {
        __ClearFlag(0x12f);
        base = *(unsigned char **)iwram_3001ebc;
        *(unsigned int *)(base + (0xe0 << 1)) = (0xe0 << 1) + 0x49;
        return 0;
    }

    if (__GetFlag(0x834) != 0) {
        __MapActor_SetPos(0xb, 0, 0);
        __MapActor_SetPos(0xc, 0, 0);
        __MapActor_SetPos(0xd, 0, 0);
        __MapActor_SetPos(0xe, 0, 0);
        __MapActor_SetPos(0xf, 0, 0);
        __MapActor_SetPos(0x10, 0, 0);
    } else {
        OvlFunc_887_20093b4();
    }
    __Func_8092b08(0xd, 1);

    if (__GetFlag(0x87a) != 0) {
        __Actor_SetSpriteFlags(__MapActor_GetActor(0x11), 0);
        switch (*(unsigned short *)((char *)&gState + (0xe1 << 1))) {
        case 6:
        case 7:
            if (__GetFlag(0x109) != 0) {
                if (__GetFlag(0x203) != 0) {
                    __Func_80118a8(0xc);
                }
            } else {
                __Func_80118a8(0xb);
                __Actor_SetSpriteFlags(__MapActor_GetActor(8), 0);
                __MapActor_SetAnim(8, 0xa);
            }
            break;
        }
    } else {
        switch (*(short *)((char *)&gState + (0xe1 << 1))) {
        case 0x15:
            OvlFunc_887_2008a0c();
            break;
        case 0x14:
            __SetFlag(0x834);
            OvlFunc_887_2008578();
            break;
        case 0x16:
            OvlFunc_887_20093e4();
            break;
        default:
            base = *(unsigned char **)iwram_3001ebc;
            *(unsigned int *)(base + (0xe0 << 1)) = (0xe0 << 1) + 0x49;
            if (__GetFlag(0x834) != 0) {
                __StartThunder();
                *(unsigned short *)(*(unsigned char **)(iwram_3001ebc + 0xc) + 0x1f84) = 1;
                __Func_8095240();
                __WaitFrames(0x1e);
                __MapTransitionIn();
                __WaitMapTransition();
                __Func_8095268();
            } else {
                __Func_800fe9c();
                __WaitFrames(1);
            }
            break;
        }
    }
    return 0;
}
