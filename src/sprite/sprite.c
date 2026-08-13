/* sprite/sprite.c -- consolidated TU. */
#include "nonmatching.h"

INCLUDE_ASM("asm/sprite/sprite/rom_b074_a.s");

void Sprite_SetColorswap(unsigned char *sprite, int colorswap) {
    unsigned char count;
    unsigned int *p;
    int i;

    if (sprite == (unsigned char *)0)
        return;

    count = sprite[0x27];
    if (count != 0) {
        p = (unsigned int *)(sprite + 0x28);
        for (i = count; i != 0; i--) {
            unsigned int e;
            e = *p++;
            if (*(unsigned char *)((char *)e + 5) != 0xf)
                *(unsigned char *)((char *)e + 5) = colorswap;
        }
    }
    sprite[0x25] = 1;
}

INCLUDE_ASM("asm/sprite/sprite/rom_b074_c.s");

extern unsigned int iwram_3001e68;

unsigned char **GetCachedSpriteGFX(unsigned int spriteID)
{
    unsigned int *base;
    unsigned char *r2;
    unsigned int i;

    base = (unsigned int *)iwram_3001e68;
    r2 = (unsigned char *)base + 0x1c;
    for (i = 0; i <= 7; i++) {
        if (*(unsigned int *)r2 == spriteID)
            return *(unsigned char ***)(r2 + 4);
        r2 += 8;
    }
    return (unsigned char **)0;
}

INCLUDE_ASM("asm/sprite/sprite/rom_b798_c_a_a.s");

extern void *_GetSpriteInfo(int id);

void SpriteLayer_SetAnim(void *self, int anim) {
    unsigned char *r5;
    int r6;
    int r7;
    void *r0;
    unsigned int *arr;
    unsigned int r2;

    r5 = (unsigned char *)self;
    r6 = anim;
    r7 = 0x80 & r6;
    if (*(int *)(r5 + 0xc) == 0) {
        return;
    }
    r0 = _GetSpriteInfo(*(short *)r5);
    if (r6 >= *((unsigned char *)r0 + 5)) {
        return;
    }
    arr = *(unsigned int **)(r5 + 0xc);
    r2 = arr[r6];
    *(r5 + 4) = *((unsigned char *)r0 + 4);
    *(unsigned int *)(r5 + 0x10) = r2;
    *(r5 + 0x15) = 0x10;
    if (r7 != 0) {
        return;
    }
    *(r5 + 0x14) = r7;
    *(unsigned short *)(r5 + 2) = r7;
}

INCLUDE_ASM("asm/sprite/sprite/rom_b798_c_a_c.s");

unsigned int Sprite_SetAnimTimer(unsigned char *sprite, unsigned int timer)
{
    unsigned char count;
    unsigned char **p;
    int i;

    count = *(unsigned char *)(sprite + 0x27);
    if (count != 0) {
        timer <<= 4;
        p = (unsigned char **)(sprite + 0x28);
        i = count;
        do {
            unsigned char *e = *p;
            p++;
            if (e != 0 && *(int *)(e + 0xc) != 0)
                *(unsigned short *)(e + 2) = timer;
            i--;
        } while (i != 0);
    }
    return 0;
}
void Sprite_SetAnimSpeed(unsigned char *sprite, int speed) {
    int count;
    unsigned int *p;
    int i;

    count = *(unsigned char *)(sprite + 0x27);
    if (count == 0)
        return;
    p = (unsigned int *)(sprite + 0x28);
    i = count;
    do {
        unsigned int e;
        e = *p++;
        if (e != 0 && *(unsigned int *)((char *)e + 0xc) != 0) {
            *(unsigned char *)((char *)e + 0x15) = speed;
        }
        i--;
    } while (i != 0);
}

INCLUDE_ASM("asm/sprite/sprite/rom_b798_c_c.s");

INCLUDE_ASM("asm/sprite/sprite/rom_be70_a.s");

extern void Func_800be70(unsigned int arg0, unsigned int arg1);
extern void WaitFrames(unsigned int nframes);

void Func_800befc(unsigned int arg0) {
    unsigned int i;

    i = 0;
    do {
        Func_800be70(arg0, i);
        Func_800be70(arg0, i + 1);
        Func_800be70(arg0, i + 2);
        Func_800be70(arg0, i + 3);
        i += 4;
        WaitFrames(1);
    } while (i <= 0x7f);
}

INCLUDE_ASM("asm/sprite/sprite/Func_800bf34.s");
INCLUDE_ASM("asm/sprite/sprite/rom_be70_c.rodata.s");
