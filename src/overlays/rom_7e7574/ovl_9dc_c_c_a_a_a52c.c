typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u8 *__MapActor_GetActor(s32 actor_id);
extern void __MapActor_SetPos(s32 actor_id, s32 x, s32 y);
extern void __MapActor_SetSpeed(s32 actor_id, s32 horizontal, s32 vertical);
extern void __Func_809218c(s32 actor_id, s32 x, s32 y);
extern void __MapActor_WaitMovement(s32 actor_id);
extern void __Func_809280c(s32 actor_id, s32 value, s32 duration);
extern void __Func_8092adc(s32 actor_id, s32 value, s32 duration);
extern void __CutsceneWait(s32 frames);

void OvlFunc_959_200a52c(void) {
    u8 *actor;
    s32 id, sx, sy, mx, my;

    actor = __MapActor_GetActor(0);
    if (actor != 0) {
        __MapActor_SetPos(2, *(s32 *)(actor + 8), *(s32 *)(actor + 0x10));
    }
    actor = __MapActor_GetActor(0);
    if (actor != 0) {
        __MapActor_SetPos(3, *(s32 *)(actor + 8), *(s32 *)(actor + 0x10));
    }
    actor = __MapActor_GetActor(0);
    if (actor != 0) {
        __MapActor_SetPos(1, *(s32 *)(actor + 8), *(s32 *)(actor + 0x10));
    }
    __Func_8092adc(0, 0, 0);

    id = 2;
    asm volatile("" : "+r"(id));
    sx = 0xB333;
    sy = 0x5999;
    asm volatile("" : "+r"(sx), "+r"(sy));
    __MapActor_SetSpeed(id, sx, sy);
    mx = 0xE4;
    asm volatile("" : "+r"(mx));
    id = 2;
    asm volatile("" : "+r"(id));
    mx = mx << 1;
    asm volatile("" : "+r"(mx));
    my = 0xC0;
    asm volatile("" : "+r"(my));
    __Func_809218c(id, mx, my);

    id = 3;
    asm volatile("" : "+r"(id));
    sx = 0xB333;
    sy = 0x5999;
    asm volatile("" : "+r"(sx), "+r"(sy));
    __MapActor_SetSpeed(id, sx, sy);
    mx = 0xDC;
    asm volatile("" : "+r"(mx));
    id = 3;
    asm volatile("" : "+r"(id));
    mx = mx << 1;
    asm volatile("" : "+r"(mx));
    my = 0xB8;
    asm volatile("" : "+r"(my));
    __Func_809218c(id, mx, my);

    id = 1;
    asm volatile("" : "+r"(id));
    sx = 0xB333;
    sy = 0x5999;
    asm volatile("" : "+r"(sx), "+r"(sy));
    __MapActor_SetSpeed(id, sx, sy);
    mx = 0xE0;
    asm volatile("" : "+r"(mx));
    mx = mx << 1;
    asm volatile("" : "+r"(mx));
    my = 0xF0;
    asm volatile("" : "+r"(my));
    id = 1;
    asm volatile("" : "+r"(id));
    __Func_809218c(id, mx, my);

    __MapActor_WaitMovement(2);
    __Func_809280c(2, 0xC, 0);
    __MapActor_WaitMovement(1);
    __MapActor_WaitMovement(3);
    __Func_809280c(1, 0xC, 0);
    __Func_809280c(3, 0xC, 0);
    __CutsceneWait(0xF);
}
