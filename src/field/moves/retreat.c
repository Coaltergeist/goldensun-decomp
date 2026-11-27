#include "nonmatching.h"
#include "actor.h"

void Func_809b0b0(unsigned int arg0)
{
    unsigned short *p;
    unsigned short *base;
    int n;
    unsigned int v;

    base = (unsigned short *)arg0;
    p = (unsigned short *)(arg0 + 0x64);
    n = *(short *)p;
    v = (unsigned int)((n * 5) << 4);
    base[3] = (unsigned short)(base[3] + v + 0x1000);
    if (v < 0x1000) {
        *p = *p + 1;
    }
}

INCLUDE_ASM("asm/field/moves/retreat/Func_809b0dc.s");

extern unsigned char *iwram_3001f30;
extern unsigned int iwram_3001e40;
extern unsigned int Random(void);
extern void vec3_translate(int, int, int *);
extern void Func_80974d8(int *vec);
extern unsigned int Func_809ba34(unsigned char *arg0);
extern void Func_809bb34(unsigned char *arg0);
extern void _PlaySound(int);
void Func_809b11c(unsigned char *arg0)
{
    int stk[3];
    signed char *state = (signed char *)(arg0 + 0x40);
    struct Actor *actor = *(struct Actor **)(iwram_3001f30 + 0x10);

    if (*state == 0) {
        int x, z;

        stk[0] = actor->pos.x;
        stk[1] = actor->pos.y;
        stk[2] = actor->pos.z;
        Func_80974d8(stk);
        x = stk[0];
        *(int *)(arg0 + 4) = x;
        z = stk[2] + 0x80000;
        *(int *)(arg0 + 8) = z;
        *(int *)(arg0 + 0x18) = z;
        *(int *)(arg0 + 0x14) = x;
        stk[2] = z;
        stk[0] = x;
        vec3_translate(0x780000, (Random() << 13 >> 16) - (Random() << 13 >> 16) + 0xc000, stk);
        *(int *)(arg0 + 0xc) = stk[0];
        *(int *)(arg0 + 0x10) = stk[2];
        *(int *)(arg0 + 0x24) = 0x50000;
        *(int *)(arg0 + 0x20) = 0x50000;
        arg0[0x42] = 0;
        (*state)++;
        if (iwram_3001e40 & 2)
            _PlaySound(0xf6);
    } else if (*state == 1) {
        if (Func_809ba34(arg0) == 0)
            (*state)--;
    } else if (*state == 2) {
        if (Func_809ba34(arg0) == 0)
            Func_809bb34(arg0);
    }
}

INCLUDE_ASM("asm/field/moves/retreat/Field_Retreat.s");
