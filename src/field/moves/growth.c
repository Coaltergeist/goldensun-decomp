#include "nonmatching.h"
#include "actor.h"

extern unsigned char **iwram_3001f30;
extern void Func_8098698(void);
extern void _Actor_SetAnim(void *, int);
extern void _Actor_SetSpriteFlags(void *, int);
extern void WaitFrames(int);
extern void _PlaySound(int);
extern void Func_809748c(void);
void Field_Growth_Target(void)
{
    struct { char p[0x23]; unsigned char f; char q[0x35]; unsigned char g; } *a = (void *) *(unsigned char **)((unsigned char *)iwram_3001f30 + 0x14);
    if (a != 0) {
        Func_8098698();
        _Actor_SetAnim(a, 2);
        a->g = 0;
        _Actor_SetSpriteFlags(a, 0);
        a->f |= 2;
        WaitFrames(10);
        _PlaySound(0x7e);
        WaitFrames(0x28);
        Func_809748c();
    }
}

extern unsigned int Random(void);
extern void vec3_translate(int, int, int *);
extern struct Actor *CreateParticleActor(int, int, int, int);
extern void _Actor_SetScript(void *actor, void *script);
extern unsigned char gScript_0809f11c[];
void Field_Growth(void)
{
    int *pos = (int *)iwram_3001f30;
    int v[3];
    struct Actor *a;
    int i;

    Func_8098698();
    _PlaySound(0x86);
    for (i = 0; i < 5; i++) {
        v[0] = pos[1];
        v[2] = pos[3];
        vec3_translate(Random() * 6 + 0x40000, Random(), v);
        v[1] = pos[2];
        a = CreateParticleActor(0xd9, v[0], v[1], v[2]);
        if (a != 0) {
            _Actor_SetScript(a, gScript_0809f11c);
            a->__unk55 = 2;
        }
        WaitFrames(((Random() << 1) >> 16) + 2);
    }
    WaitFrames(0x1e);
    Func_809748c();
}

INCLUDE_ASM("asm/field/moves/growth/Func_8098698.s");
