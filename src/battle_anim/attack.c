#include "nonmatching.h"

#include "anim.h"

extern void *galloc_ewram(int, unsigned int);
extern void *galloc_iwram(int, unsigned int);
extern void gfree(int);
extern void BaseAnim_SpecialAttack(struct AnimContext *);
extern void Anim_CriticalHit(struct AnimContext *);
extern void BaseAnim_Attack(struct AnimContext *);

void Anim_Attack(struct AnimContext *context)
{
    unsigned int tmp;
    int anim;

    galloc_ewram(0x29, 0x60e);
    galloc_iwram(0x27, 0x782c);
    tmp = 0x4000;
    galloc_iwram(0x28, tmp);

    anim = context->anim;
    tmp = (unsigned int)(anim - 0x64);
    if (tmp <= 0x23)
        BaseAnim_SpecialAttack(context);
    else if (anim > 0xc7)
        Anim_CriticalHit(context);
    else
        BaseAnim_Attack(context);

    gfree(0x28);
    gfree(0x27);
    gfree(0x29);
}

INCLUDE_ASM("asm/battle_anim/attack/BaseAnim_Attack.s");

INCLUDE_ASM("asm/battle_anim/attack/Anim_CriticalHit.s");
