typedef unsigned char u8;

extern void __CutsceneStart(void);
extern u8 *__MapActor_GetActor(int actor);
extern void __SetFlag(int flag);
extern void __ClearFlag(int flag);
extern void __Func_8010704(int arg0, int arg1, int arg2, int arg3,
                           int arg4, int arg5);
extern void __CutsceneEnd(void);

static __inline__ void Configure(int selector, u8 first, u8 second)
{
    __Func_8010704(0x35, selector, 1, 1, first, second);
}

void OvlFunc_924_200a51c(void)
{
    int flag;
    int index;
    int position;

    __CutsceneStart();
    index = 0;
    flag = 0x330;
    do {
        position = *(int *)(__MapActor_GetActor(index + 0xf) + 8) / 0x100000;
        if (position == index * 4 + 0x27) {
            __SetFlag(flag);
            __ClearFlag(flag + 1);
        } else if (position == index * 4 + 0x29) {
            __SetFlag(flag + 1);
            __ClearFlag(flag);
        } else {
            __ClearFlag(flag);
            __ClearFlag(flag + 1);
        }
        index++;
        flag += 2;
    } while (index <= 3);

    position = *(int *)(__MapActor_GetActor(0x13) + 8) / 0x100000;
    if (position == 0x39) {
        __SetFlag(0x338);
        __ClearFlag(0x339);
        Configure(0xa, 0x3a, 7);
    } else if (position == 0x3b) {
        __SetFlag(0x339);
        __ClearFlag(0x338);
        Configure(0xa, 0x3a, 7);
    } else {
        __ClearFlag(0x338);
        __ClearFlag(0x339);
        Configure(0xb, 0x3a, 7);
    }
    __CutsceneEnd();
}
