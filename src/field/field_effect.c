#include "nonmatching.h"
#include "dma.h"

extern void _Sprite_SetAnim(unsigned int);

struct FieldEffect809b804 {
    unsigned char pad0[0x34];
    void (*fn)(struct FieldEffect809b804 *);
    unsigned short timer;
    short delay;
    unsigned char pad3c[7];
    signed char flag43;
    signed char flag44;
    signed char active;
};

extern void Func_809b8f4(struct FieldEffect809b804 *);
extern void Func_809b86c(struct FieldEffect809b804 *);

void Func_809b804(struct FieldEffect809b804 *e)
{
    if (e->active != 0) {
        e->timer++;
        if (e->delay != 0)
            e->delay--;
        else if (e->fn != 0)
            e->fn(e);
        if (e->active != 0) {
            if (e->flag43 != 0)
                Func_809b8f4(e);
            if (e->flag44 != 0)
                Func_809b86c(e);
        }
    }
}

INCLUDE_ASM("asm/field/field_effect/Func_809b86c.s");

INCLUDE_ASM("asm/field/field_effect/Func_809b8f4.s");

unsigned int Func_809ba34(unsigned char *arg0)
{
    signed char v;
    unsigned int x;

    v = *(signed char *)(arg0 + 0x41);
    if (v == 0)
        return 0;
    x = *(unsigned int *)(arg0 + 0xc) ^ 0x80000000;
    return ((unsigned int)(-(int)x | x)) >> 31;
}

void Func_809ba5c(unsigned int arg0, unsigned int arg1, unsigned int arg2) {
    unsigned int v3;
    v3 = 0x80 << 24;
    *(unsigned int *)(arg0 + 12) = v3;
    *(unsigned int *)(arg0 + 16) = v3;
    *(unsigned int *)(arg0 + 4) = arg1;
    *(unsigned int *)(arg0 + 8) = arg2;
    *(unsigned int *)(arg0 + 28) = 0;
}

void Func_809ba70(unsigned int *p) {
    _Sprite_SetAnim(*p);
}

void Func_809ba7c(unsigned int arg0, unsigned int arg1) {
    unsigned int r3 = 0;
    unsigned int r2 = 0;
    *(unsigned int *)(arg0 + 0x34) = arg1;
    *(unsigned short *)(arg0 + 0x3a) = r3;
    *(unsigned short *)(arg0 + 0x38) = r3;
    arg0 += 0x40;
    *(unsigned char *)arg0 = r2;
}

INCLUDE_ASM("asm/field/field_effect/Func_809ba90.s");

extern void _DeleteSprite(void *sprite);

void Func_809bb34(unsigned char *arg0) {
    void **p = (void **)arg0;
    if (*p != 0) {
        _DeleteSprite(*p);
    }
    DMA3_CLEAR(arg0, 0x48);
}

INCLUDE_ASM("asm/field/field_effect/rodata.s");
