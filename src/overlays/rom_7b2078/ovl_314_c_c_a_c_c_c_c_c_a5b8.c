typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u8 *__MapActor_GetActor(int mapId);
extern u32 __Random(void);
extern void __Func_8092950(int, int);
extern void OvlFunc_common0_10c(int, int, int, int, int, int, int, void *);
extern volatile u32 iwram_3001e40[];

void OvlFunc_926_200a5b8(void)
{
    u32 local[10];
    u8 *actor;
    u32 rnd;
    s32 velocity;

    actor = __MapActor_GetActor(0);
    local[1] = 7;

    rnd = __Random();
    if (((rnd * 7) >> 16 & 7) == 0)
        local[1] = 5;

    local[2] = 0xb333;
    local[3] = 0xcccc;

    rnd = __Random();
    rnd <<= 3;
    rnd >>= 16;
    velocity = rnd * 3;
    velocity += velocity << 4;
    velocity += velocity << 8;

    OvlFunc_common0_10c(*(int *)(actor + 8) + (8 - (iwram_3001e40[0] & 0xf)) * 0x10000,
                        *(int *)(actor + 0xc) + 0x180000,
                        *(int *)(actor + 0x10), 0,
                        -velocity, 0, 0x90000, local);

    if ((iwram_3001e40[0] & 1) != 0)
        __Func_8092950(0, 0xf);
    else
        __Func_8092950(0, 1);
}
