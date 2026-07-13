extern unsigned char *__CreateActor(int, int, int, int);
extern void __Actor_SetSpriteFlags(unsigned char *actor, int flags);
extern void __Func_80929d8(unsigned char *actor, int value);

struct Sprite {
    unsigned char pad[9];
    unsigned char low : 2;
    unsigned char mode : 2;
};

struct Actor {
    unsigned char pad[0x50];
    struct Sprite *sprite;
};

unsigned char *OvlFunc_common0_70(int arg0, int arg1, int arg2, int arg3)
{
    unsigned char *actor = __CreateActor(arg3, arg0, arg1, arg2);
    register unsigned char *callActor asm("r0") = actor;

    if (actor != 0) {
        asm volatile("" : "+r"(callActor));
        ((struct Actor *)actor)->sprite->mode = 1;
        actor[0x55] = 0;
        actor[0x59] = 8;
        __Actor_SetSpriteFlags(callActor, 0);
        callActor = actor;
        asm volatile("" : "+r"(callActor));
        __Func_80929d8(callActor, 0xf);
        actor[0x23] = (actor[0x23] & 0xfe) | 2;
        return actor;
    }
    return 0;
}

void OvlFunc_common0_d4(unsigned char *actor)
{
    *(int *)(actor + 8) += *(int *)(actor + 0x44);
    *(int *)(actor + 0xc) += *(int *)(actor + 0x48);
    *(int *)(actor + 0x10) += *(int *)(actor + 0x4c);
    *(int *)(actor + 0x18) += *(int *)(actor + 0x30);
    *(int *)(actor + 0x1c) += *(int *)(actor + 0x34);
    asm volatile("" : : : "memory");
    *(unsigned short *)(*(unsigned char **)(actor + 0x50) + 0x1e) +=
        *(unsigned short *)(actor + 0x64);
}
