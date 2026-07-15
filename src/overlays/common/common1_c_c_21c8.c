typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u8 gState[];
extern u8 *__MapActor_GetActor(int actorId);
extern void __vec3_translate(int x, int y, int *position);
extern int OvlFunc_common1_2018(int *position, u8 *actor);

struct State {
    u8 pad[500];
    u32 actor;
};

int OvlFunc_common1_21c8(void)
{
    u8 *actor;
    int position[3];
    int direction;
    int result;

    actor = __MapActor_GetActor(((struct State *)gState)->actor);
    direction = (*(u16 *)(actor + 6) + 0x2000) & 0xc000;

    position[0] = (*(s32 *)(actor + 8) & 0xfff00000) + 0x80000;
    position[1] = *(s32 *)(actor + 0xc);
    position[2] = (*(s32 *)(actor + 0x10) & 0xfff00000) + 0x80000;
    __vec3_translate(0x100000, direction, position);

    result = OvlFunc_common1_2018(position, actor);
    if (!result) {
        position[0] = (*(s32 *)(actor + 8) & 0xfff00000) + 0x80000;
        position[1] = *(s32 *)(actor + 0xc);
        position[2] = (*(s32 *)(actor + 0x10) & 0xfff00000) + 0x80000;
        __vec3_translate(0x200000, direction, position);
        result = OvlFunc_common1_2018(position, actor);
    }
    return result;
}
