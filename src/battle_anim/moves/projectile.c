/* battle_anim/moves/projectile.c -- consolidated TU. */
#include "nonmatching.h"

extern void BaseAnim_ParticleSpray(void *context, int subanim);

void Anim_Slash(void *context) {
    BaseAnim_ParticleSpray(context, 0);
}


void Anim_Shuriken(void *context) {
    BaseAnim_ParticleSpray(context, 1);
}


void Anim_CrazyVoice(void *context) {
    BaseAnim_ParticleSpray(context, 2);
}


void Anim_WingFlutter(void *context) {
    BaseAnim_ParticleSpray(context, 3);
}


void Anim_WingStroke(void *context) {
    BaseAnim_ParticleSpray(context, 0xb);
}


void Anim_WingBeat(void *context) {
    BaseAnim_ParticleSpray(context, 4);
}

extern int _GetBattleActor(int a);
extern void _Actor_SetAnim(int actor, int anim);
extern void _Actor_SetAnimSpeed(int actor, int speed);

void Anim_CuttingEdge(void *context)
{
    int actorHolder = *(int *)((char *)context + 8);
    int actor = *(int *)_GetBattleActor(actorHolder);
    _Actor_SetAnim(actor, 2);
    _Actor_SetAnimSpeed(actor, 0x30);
    BaseAnim_ParticleSpray(context, 5);
    _Actor_SetAnimSpeed(actor, 0x10);
}


void Anim_HeatWave(void *context)
{
    int actorHolder = *(int *)((char *)context + 8);
    int actor = *(int *)_GetBattleActor(actorHolder);
    _Actor_SetAnim(actor, 2);
    _Actor_SetAnimSpeed(actor, 0x30);
    BaseAnim_ParticleSpray(context, 6);
    _Actor_SetAnimSpeed(actor, 0x10);
}


void Anim_Sleet(void *context) {
    BaseAnim_ParticleSpray(context, 7);
}


void Anim_IceBreath(void *context) {
    BaseAnim_ParticleSpray(context, 0xa);
}


void Anim_Blizzard(void *context)
{
    unsigned char *ctx = (unsigned char *)context;
    void *actor;

    actor = *(void **)_GetBattleActor(*(int *)(ctx + 8));
    _Actor_SetAnim(actor, 2);
    _Actor_SetAnimSpeed(actor, 0x30);
    BaseAnim_ParticleSpray(ctx, 9);
    _Actor_SetAnimSpeed(actor, 0x10);
}

INCLUDE_ASM("asm/battle_anim/moves/projectile/rom_de974_c_c_c_c_c_c_c_c_c_a.s");

extern void _Actor_Stop(void *actor);
extern void _Actor_TravelTo(void *actor, int dist, int a2, int a3);

void Func_80df8b8(unsigned int arg0)
{
    int *r6 = (int *)_GetBattleActor(arg0);
    unsigned char *r5 = (unsigned char *)r6[0];

    *(int *)(r5 + 0x34) = 0x80 << 10;
    *(int *)(r5 + 0x30) = 0x80 << 12;
    *(int *)(r5 + 0x28) = 0x80 << 11;
    *(int *)(r5 + 0x48) = 0xab85;
    *(int *)(r5 + 0x44) = 0;
    *(r5 + 0x5a) = 0;
    *(r5 + 0x58) = 1;
    _Actor_Stop(r5);
    {
        int t1 = r6[3];
        _Actor_TravelTo((void *)r5, t1, 0, r6[4]);
    }
    _Actor_SetAnim((void *)r5, 1);
}

INCLUDE_ASM("asm/battle_anim/moves/projectile/rom_de974_c_c_c_c_c_c_c_c_c_c.s");
