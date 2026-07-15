typedef unsigned char u8;
typedef short s16;

extern int __GetFlag(int flag);
extern void __MapActor_SetPos(int actor, int x, int z);
extern u8 *__MapActor_GetActor(int actor);
extern void __Actor_SetSpriteFlags(u8 *actor, int flags);
extern void __Func_8092b08(int actor, int flags);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void OvlFunc_932_200b028(void);
extern u8 gState[];

void OvlFunc_932_200a934(void)
{
    int flag;
    s16 state;
    u8 *actor;
    register u8 *base asm("r3");
    register int offset asm("r2");

    flag = __GetFlag(0x909);
    if (flag != 0) {
        __MapActor_SetPos(8, 0, 0);
        __MapActor_SetPos(9, 0, 0);
    } else {
        __Actor_SetSpriteFlags(__MapActor_GetActor(8), 0);
        __Func_8092b08(9, 3);
        __Actor_SetSpriteFlags(__MapActor_GetActor(9), 0);
        __MapActor_GetActor(9)[0x59] = flag;
    }

    base = gState;
    asm volatile("" : "+r"(base));
    offset = 0xe1;
    offset <<= 1;
    asm volatile("" : "+r"(base), "+r"(offset));
    base += offset;
    offset = 0;
    asm volatile("" : "+r"(base), "+r"(offset));
    state = *(s16 *)(base + offset);
    if (state == 1 || state == 0x62) {
        if (__GetFlag(0x109) == 0) {
            actor = __MapActor_GetActor(0);
            __CutsceneStart();
            *(int *)(actor + 0xc) = 0x100000;
            __CutsceneEnd();
        }
    } else if (state == 0x63) {
        if (__GetFlag(0x109) == 0) {
            OvlFunc_932_200b028();
        }
    }
}
