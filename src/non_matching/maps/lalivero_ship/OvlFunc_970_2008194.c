/*
 * Remaining diff vs target OvlFunc_970_2008194 (1 instruction order swap):
 * - At 0x40-0x42: target schedules `ldrh r2, [r2, #0]` before `ldr r3, =0x04000052`
 *   on `REG_BLDALPHA` write, whereas GCC schedules the constant-pool load first.
 */
#include "actor.h"
#include "math.h"
#include "gba/io.h"

extern unsigned char iwram_3001e70[];
extern int gOvl_020097e8;
extern unsigned int Lm970_17ec __asm__(".Lm970_17ec");
extern int Lm970_17f0[] __asm__(".Lm970_17f0");
extern int Lm970_17f8 __asm__(".Lm970_17f8");
extern int Lm970_17fc __asm__(".Lm970_17fc");
extern unsigned int Lm970_1800 __asm__(".Lm970_1800");
extern int Lm970_1804 __asm__(".Lm970_1804");
extern int Lm970_1808 __asm__(".Lm970_1808");
extern int Lm970_180c[] __asm__(".Lm970_180c");
extern int Lm970_1810[] __asm__(".Lm970_1810");
extern unsigned char gOvl_02009814[];
extern int Lm970_1818[] __asm__(".Lm970_1818");
extern unsigned int iwram_3001e40;

extern int __sin(int);
extern int __Random(void);
extern void *__MapActor_GetActor(int);
extern struct Actor *__CreateActor(int, int, int, int);
extern void __Actor_SetSpriteFlags(struct Actor *, int);
extern void __Actor_SetAnim(void *, int);
extern void OvlFunc_970_2008100(void *);

static inline void ShipWriteHalf2(volatile unsigned short *p, int value)
{
    *p = value;
}

static inline struct Actor *ShipCreateActor(int sprite, int x, int y, int z)
{
    return __CreateActor(sprite, x, y, z);
}

void OvlFunc_970_2008194(void)
{
    unsigned char *field = *(unsigned char **)iwram_3001e70;
    struct Actor *actor;

    if (gOvl_020097e8) {
        int s = fx32_multiply(__sin(Lm970_17ec << 9), 3) + 8;
        volatile unsigned short alpha = Lm970_17f0[0] + (s << 8);
        ShipWriteHalf2(&REG_BLDALPHA, alpha);
        ++Lm970_17ec;
    }
    if (Lm970_17fc) {
        int delta = (unsigned int)fx32_multiply(__sin(Lm970_1800 << 9), 2) << 16;
        *(int *)(field + 0x140) = Lm970_1804 + delta;
        *(int *)(field + 0x170) = Lm970_1808 + delta;
        if (Lm970_180c[0] != -0x10000) {
            actor = (struct Actor *)__MapActor_GetActor(0);
            actor->floorPos = actor->pos.y = Lm970_180c[0] + delta;
            actor->__unk55 = 0;
        }
        if (Lm970_1810[0] != -0x10000) {
            actor = (struct Actor *)__MapActor_GetActor(1);
            actor->pos.y = Lm970_1810[0] + delta;
            actor->floorPos = Lm970_180c[0] + delta;
            actor->__unk55 = 0;
        }
        if (*(int *)gOvl_02009814 != -0x10000) {
            actor = (struct Actor *)__MapActor_GetActor(3);
            actor->pos.y = *(int *)gOvl_02009814 + delta;
            actor->floorPos = Lm970_180c[0] + delta;
            actor->__unk55 = 0;
        }
        if (Lm970_1818[0] != -0x10000) {
            actor = (struct Actor *)__MapActor_GetActor(2);
            actor->pos.y = Lm970_1818[0] + delta;
            actor->floorPos = Lm970_180c[0] + delta;
            actor->__unk55 = 0;
        }
        ++Lm970_1800;
    }
    if (Lm970_17f8) {
        if (iwram_3001e40 & 1) {
            int x = *(int *)(field + 0xe4) & 0xffff0000;
            int z = *(int *)(field + 0xe8) & 0xffff0000;
            int position[3];
            position[0] = x + (unsigned int)__Random() * 240;
            position[1] = 0;
            position[2] = z + (unsigned int)__Random() * 160 + 0x1e0000;
            actor = ShipCreateActor(0x1f7, position[0], position[1], position[2]);
            if (actor) {
                actor->update = (actorfun_t)OvlFunc_970_2008100;
                actor->waveCounter = 60;
                actor->__unk66 = 1;
                actor->__unk55 = 0;
                actor->flags = 2;
                actor->sprite->oam.priority = 2;
                __Actor_SetSpriteFlags(actor, 0);
                __Actor_SetAnim(actor, 0);
            }
        }
    }
}
