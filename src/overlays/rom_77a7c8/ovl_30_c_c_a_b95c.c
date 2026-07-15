typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u8 gState[];
extern u32 iwram_3001e40;
extern u8 *__MapActor_GetActor(s32 actorId);
extern u32 __Random(void);
extern u32 _umodsi3_RAM(u32, u32);
extern void __Func_80933f8(s32 x, s32 y, s32 z, s32 mode);

struct State {
    u8 pad[500];
    u32 actor;
};

void OvlFunc_881_200b95c(void)
{
    u8 *actor;
    s16 x;
    s16 y;
    u32 rnd;

    actor = __MapActor_GetActor(((struct State *)gState)->actor);
    x = *(s16 *)(actor + 0xa);
    y = *(s16 *)(actor + 0x12);

    if (_umodsi3_RAM(iwram_3001e40, 3) == 0) {
        rnd = (u32)__Random() << 2 >> 16;
        switch (rnd) {
        case 0: {
            s32 xoff = ((s32)x << 16) - 0x10000;
            s32 yoff = ((s32)y << 16) + 0x10000;
            __Func_80933f8(xoff, -1, yoff, 1);
            break;
        }
        case 1: {
            s32 xoff = ((s32)x << 16) + 0x10000;
            s32 yoff = ((s32)y << 16) - 0x10000;
            __Func_80933f8(xoff, -1, yoff, 1);
            break;
        }
        case 2: {
            s32 xoff = ((s32)x << 16) + 0x10000;
            s32 yoff = ((s32)y << 16) + 0x10000;
            __Func_80933f8(xoff, -1, yoff, 1);
            break;
        }
        case 3: {
            s32 xoff = ((s32)x << 16) - 0x10000;
            s32 yoff = ((s32)y << 16) - 0x10000;
            __Func_80933f8(xoff, -1, yoff, 1);
            break;
        }
        }
    }
}
