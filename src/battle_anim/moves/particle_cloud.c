/* battle_anim/moves/particle_cloud.c -- consolidated TU. */
#include "nonmatching.h"

extern void BaseAnim_ParticleCloud(void *context, int subanim);

void Anim_Poison(void *context) {
    unsigned int v;
    v = *(unsigned int *)((char *)context + 0x18);
    if (v == 0) {
        BaseAnim_ParticleCloud(context, 0);
    } else {
        BaseAnim_ParticleCloud(context, 1);
    }
}


void Anim_PoisonGel(void *context) {
    BaseAnim_ParticleCloud(context, 1);
}


void Anim_Delude(void *context) {
    BaseAnim_ParticleCloud(context, 2);
}


void Anim_Paralyze(void *context) {
    BaseAnim_ParticleCloud(context, 3);
}


void Anim_Charm(void *context) {
    BaseAnim_ParticleCloud(context, 4);
}


void Anim_MysticFlame(void *context) {
    BaseAnim_ParticleCloud(context, 5);
}


void Anim_DemonFire(void *context) {
    BaseAnim_ParticleCloud(context, 7);
}


void Anim_Drown(void *context) {
    BaseAnim_ParticleCloud(context, 6);
}

INCLUDE_ASM("asm/battle_anim/moves/particle_cloud/rom_d5258_c_c_c_c_c_c_c.s");
