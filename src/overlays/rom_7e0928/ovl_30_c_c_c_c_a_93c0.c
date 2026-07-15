typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u8 *__MapActor_GetActor(int actor_id);
extern void __MapActor_SetPos(int actor_id, int x, int y);
extern void __Actor_SetSpriteFlags(u8 *actor, int flags);
extern void __MapActor_SetBehavior(int actor_id, const void *script);
extern s32 _modsi3_RAM(s32 value, s32 divisor);
extern const u8 gScript_956__0200d96c[];

extern s32 gOvlCounter_956 asm(".L5b80");

void OvlFunc_956_20093c0(void)
{
    u8 *actor;
    u8 *cam;
    s32 id;
    s32 x;
    s32 y;
    s32 mod;

    id = 0x29;
    actor = __MapActor_GetActor(0);
    x = *(s32 *)(actor + 8);
    y = *(s32 *)(actor + 0xc);
    gOvlCounter_956 += 1;
    mod = _modsi3_RAM(gOvlCounter_956, 0xb4);

    switch (mod) {
    case 0x14:
        id = 0x2a;
        break;
    case 0x1e:
        id = 0x2b;
        break;
    case 0xa:
        break;
    default:
        return;
    }

    actor = __MapActor_GetActor(id);
    if (actor == 0)
        return;

    cam = __MapActor_GetActor(0);
    if (cam != 0) {
        __MapActor_SetPos(id, *(s32 *)(cam + 8), *(s32 *)(cam + 0x10));
    }

    __Actor_SetSpriteFlags(__MapActor_GetActor(id), 0);
    actor[0x55] = 0;
    *(s32 *)(actor + 0x18) = 0x6666;
    *(s32 *)(actor + 0x1c) = 0x6666;
    {
        s32 off = 0x40000;
        *(s32 *)(actor + 8) = x + off;
        asm volatile("" ::: "memory");
        off = off + y;
        *(s32 *)(actor + 0xc) = off;
        *(s32 *)(actor + 0x3c) = off;
    }
    {
        u8 *p = actor + 0x64;
        register u16 v asm("r3");
        asm volatile("mov r3, #25" : "=r"(v));
        *(u16 *)p = v;
        p = p + 2;
        asm volatile("mov r3, #128" : "=r"(v));
        *(u16 *)p = v;
    }

    __MapActor_SetBehavior(id, gScript_956__0200d96c);
}
