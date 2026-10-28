#include "nonmatching.h"
#include "actor.h"

extern unsigned char *GetFieldActor(int id);
extern unsigned char *iwram_3001e70;
extern signed char *_GetSpriteInfo(int);

int Func_8094154(int id, int *out)
{
    struct Actor *a = (struct Actor *)GetFieldActor(id);
    int *cam;
    int x, y, cx, cy;

    if (a == 0)
        return -1;
    cam = (int *)(iwram_3001e70 + 0xe4);
    cx = cam[0] & ~0xffff;
    cy = cam[1] & ~0xffff;
    x = a->pos.x - cx;
    y = a->pos.z - cy - a->pos.y;
    *out++ = x / 0x10000;
    *out = y / 0x10000;
    if ((a->visible & 0xf) == 1)
        *out -= _GetSpriteInfo(**(short **)((unsigned char *)a->sprite + 0x28))[8];
    return 0;
}

void Func_80941dc(void) {}

INCLUDE_ASM("asm/field/map_actor_api/BattleIntro.s");
INCLUDE_ASM("asm/field/map_actor_api/Func_942e0.s");

extern void Func_942e0(unsigned int anim);
extern void _SetFlag(int x);

void Player_EnterStairsUp(void) {
    Func_942e0(0x1a);
    _SetFlag(0x90 << 1);
}


void Player_EnterStairsDown(void) {
    Func_942e0(0x19);
    _SetFlag(0x121);
}

INCLUDE_ASM("asm/field/map_actor_api/Player_ExitStairs.s");
INCLUDE_ASM("asm/field/map_actor_api/Func_8094428.s");
