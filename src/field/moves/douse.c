#include "nonmatching.h"
#include "actor.h"

extern int Random(void);
extern void _Actor_SetScript(void *actor, void *script);
extern unsigned char Data_9f0b0[];
extern void Field_Douse(void);

void Func_8099920(struct Actor *a)
{
    extern struct Actor *CreateParticleActor(int, int, int, int);
    extern void Func_8096bec(struct Actor *, int, int);
    struct Actor *p;
    int i;

    if (a->pos.y <= a->floorPos) {
        a->waitTimer = 2;
        _Actor_SetScript(a, Data_9f0b0);
        a->update = 0;
        for (i = 0; i < 3 && (p = CreateParticleActor(0xf0, a->pos.x, a->pos.y, a->pos.z)) != 0; i++) {
            p->scale.y = 0x8000;
            p->scale.x = 0x8000;
            p->__unk55 = 2;
            p->motion.y = 0x10000;
            p->speed = Random() + 0x13333;
            Func_8096bec(p, 0x200000, Random());
            p->waitTimer = 6;
            _Actor_SetScript(p, Data_9f0b0);
        }
    }
}

void Func_80999a8(int *r6)
{
    int r5;

    r6[3] += (int)0xffffb334;
    r5 = Random();
    r5 -= Random();
    r6[2] += r5;
    if (r6[3] <= r6[5])
        _Actor_SetScript(r6, Data_9f0b0);
}

void Field_Douse_Target(void) {
    Field_Douse();
}

INCLUDE_ASM("asm/field/moves/douse/Field_Douse.s");
