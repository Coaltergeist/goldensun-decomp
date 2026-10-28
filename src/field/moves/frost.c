#include "nonmatching.h"
#include "actor.h"

extern unsigned char iwram_3001e40[];
extern void _Actor_SetColorswap(unsigned int, unsigned int);
extern void _Actor_SetScript(void *actor, void *script);
extern unsigned char Data_9f0b0[];

void Func_8099018(unsigned int arg0)
{
    unsigned int v;

    v = *(unsigned int *)iwram_3001e40;
    v &= 7;
    if (v == 0) {
        _Actor_SetColorswap(arg0, 2);
    } else if (v == 2) {
        _Actor_SetColorswap(arg0, 0);
    }
}

void Func_8099040(void *arg0)
{
  if (arg0 != ((void *) 0))
  {
    char *p = arg0;
    int v1c;
    int v18 = (*((int *) (p + 0x18))) - 0x1000;
    *((int *) (p + 0x1c)) = (*((int *) (p + 0x1c))) - 0x1000;
    *((int *) (p + 0x18)) = v18;
    if (v18 <= 0x1000)
    {
      _Actor_SetScript(arg0, Data_9f0b0);
    }
  }
}

extern void vec3_translate(int, int, int *);
void Func_8099070(struct Actor *a)
{
    int v[3];
    short t;

    if (a != 0) {
        t = --a->waveCounter;
        if (t != 0) {
            v[0] = a->prevPos.x;
            v[1] = a->prevPos.y;
            v[2] = a->prevPos.z;
            vec3_translate(t << 17, a->__unk66 + (t << 11), v);
            a->pos.x = v[0];
            a->pos.y = v[1];
            a->pos.z = v[2];
        } else {
            a->update = (actorfun_t)Func_8099040;
        }
    }
}

void Func_80990cc(struct Actor *a)
{
    int v[3];
    short t;

    if (a != 0) {
        t = --a->waveCounter;
        if (t != 0) {
            v[0] = a->prevPos.x;
            v[1] = a->prevPos.y;
            v[2] = a->prevPos.z;
            vec3_translate(t << 17, a->__unk66 - (t << 11), v);
            a->pos.x = v[0];
            a->pos.y = v[1];
            a->pos.z = v[2];
        } else {
            a->update = (actorfun_t)Func_8099040;
        }
    }
}

extern unsigned char *iwram_3001f30__k1 __asm__("iwram_3001f30");
extern void Field_Frost(void);

void Field_Frost_Target(void)
{
    unsigned char *s = iwram_3001f30__k1;
    struct Actor *t = *(struct Actor **)(s + 0x14);

    if (t != 0) {
        if (*(signed char *)(s + 0x35) != 0)
            s[0x20] = 1;
        t->flags |= 2;
        Field_Frost();
    }
}

INCLUDE_ASM("asm/field/moves/frost/Field_Frost.s");
