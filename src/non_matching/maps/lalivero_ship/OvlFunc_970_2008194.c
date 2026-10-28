#include "actor.h"
#include "math.h"
#include "gba/io.h"
extern unsigned char *CS970W_Field __asm__("iwram_3001e70");
extern int CS970W_Launch __asm__("gOvl_020097e8");
extern unsigned int CS970W_AlphaTimer __asm__(".Lm970_17ec");
extern int CS970W_AlphaBase __asm__(".Lm970_17f0");
extern int CS970W_Emit __asm__(".Lm970_17f8");
extern int CS970W_Move __asm__(".Lm970_17fc");
extern unsigned int CS970W_WaveTimer __asm__(".Lm970_1800");
extern int CS970W_LayerA __asm__(".Lm970_1804");
extern int CS970W_LayerB __asm__(".Lm970_1808");
extern int CS970W_Height0 __asm__(".Lm970_180c");
extern int CS970W_Height1 __asm__(".Lm970_1810");
extern int CS970W_Height3 __asm__("gOvl_02009814");
extern int CS970W_Height2 __asm__(".Lm970_1818");
extern unsigned int CS970W_Frame __asm__("iwram_3001e40");
extern int CS970W_Sin(int) __asm__("__sin");
extern unsigned int CS970W_Random(void) __asm__("__Random");
extern struct Actor *CS970W_Actor(int) __asm__("__MapActor_GetActor");
extern struct Actor *CS970W_Create(int, int, int, int) __asm__("__CreateActor");
extern void CS970W_SpriteFlags(struct Actor *, int) __asm__("__Actor_SetSpriteFlags");
extern void CS970W_Anim(unsigned char *, unsigned int) __asm__("__Actor_SetAnim");
static inline struct Actor *CS970W_CreateAt(int sprite, int x, int y, int z)
{
    return CS970W_Create(sprite, x, y, z);
}
void OvlFunc_970_2008194(void)
{
    unsigned char *field = CS970W_Field;
    struct Actor *actor;
    if (CS970W_Launch) {
        unsigned short alpha;
        alpha = fx32_multiply(CS970W_Sin(CS970W_AlphaTimer << 9), 3) + 8;
        alpha <<= 8;
        alpha += CS970W_AlphaBase;
        REG_BLDALPHA = alpha;
        ++CS970W_AlphaTimer;
    }
    if (CS970W_Move) {
        int delta = (unsigned int)fx32_multiply(CS970W_Sin(CS970W_WaveTimer << 9), 2) << 16;
        *(int *)(field + 0x140) = CS970W_LayerA + delta;
        *(int *)(field + 0x170) = CS970W_LayerB + delta;
        if (CS970W_Height0 != -0x10000) {
            actor = CS970W_Actor(0);
            actor->floorPos = actor->pos.y = CS970W_Height0 + delta;
            actor->__unk55 = 0;
        }
        if (CS970W_Height1 != -0x10000) {
            actor = CS970W_Actor(1);
            actor->pos.y = CS970W_Height1 + delta;
            actor->floorPos = CS970W_Height0 + delta;
            actor->__unk55 = 0;
        }
        if (CS970W_Height3 != -0x10000) {
            actor = CS970W_Actor(3);
            actor->pos.y = CS970W_Height3 + delta;
            actor->floorPos = CS970W_Height0 + delta;
            actor->__unk55 = 0;
        }
        if (CS970W_Height2 != -0x10000) {
            actor = CS970W_Actor(2);
            actor->pos.y = CS970W_Height2 + delta;
            actor->floorPos = CS970W_Height0 + delta;
            actor->__unk55 = 0;
        }
        ++CS970W_WaveTimer;
    }
    if (CS970W_Emit) {
        if (CS970W_Frame & 1) {
            int x = *(int *)(field + 0xe4) & 0xffff0000;
            int z = *(int *)(field + 0xe8) & 0xffff0000;
            int position[3];
                position[0] = x + CS970W_Random() * 240;
            position[1] = 0;
            position[2] = z + CS970W_Random() * 160 + 0x1e0000;
            actor = CS970W_CreateAt(0x1f7, position[0], position[1], position[2]);
            if (actor) {
                actor->update = (actorfun_t *)OvlFunc_970_2008100;
                actor->waveCounter = 60;
                actor->__unk66 = 1;
                actor->__unk55 = 0;
                actor->flags = 2;
                actor->sprite->oam.priority = 2;
                CS970W_SpriteFlags(actor, 0);
                CS970W_Anim((unsigned char *)actor, 0);
            }
        }
    }
}
