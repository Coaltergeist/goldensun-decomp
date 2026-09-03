/* rom_799998 (overlay file 904): consolidated TU — goma_cave_1 map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/goma_cave_1/exports.s");

extern unsigned char gOvl_02008108[];

unsigned int GomaCave1_GetEntrances(void) {
    return (unsigned int)gOvl_02008108;
}

unsigned int GomaCave1_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_02008180[];

void *GomaCave1_GetExits(void) {
    return (void *)gOvl_02008180;
}
extern unsigned char gOvl_02008194[];

void *GomaCave1_GetActors(void) {
    return (void *)gOvl_02008194;
}
extern unsigned char gOvl_020081c4[];

void *GomaCave1_GetEvents(void) {
    return (void *)gOvl_020081c4;
}

extern unsigned char iwram_3001ebc[];

int __GetFlag(int);
void __MapActor_SetPos(int, int, int);
void __MapActor_SetAnim(int, int);
void *__MapActor_GetActor(int);
void __Actor_SetSpriteFlags(void *, int);
void __Func_8010704(int, int, int, int, int, int);

struct Actor {
    unsigned char pad1[0x23];
    unsigned char f23;
    unsigned char pad2[0x59 - 0x23 - 1];
    unsigned char f59;
};

int GomaCave1_MapInit(void) {
    int pos_x = 0xd8 << 16;
    int pos_y = 0x88 << 16;
    unsigned char *base;
    int s1;
    int s2;

    do {} while (pos_x == 0);

    base = *(unsigned char **)iwram_3001ebc;
    *(int *)(base + 0x1c0) = 0x204;
    *(int *)(base + 0x1c8) = 0x18;
    if (__GetFlag(0x300) != 0) {
        __MapActor_SetPos(8, pos_x, pos_y);
        __MapActor_SetAnim(8, 2);
        __Actor_SetSpriteFlags(__MapActor_GetActor(8), 0);
        ((struct Actor *)__MapActor_GetActor(8))->f23 = 2;
        ((struct Actor *)__MapActor_GetActor(8))->f59 = 0;
        s1 = 0xb;
        s2 = 6;
        __Func_8010704(0xb, 0x24, 5, 5, s1, s2);
    }
    return 0;
}

INCLUDE_ASM("asm/maps/goma_cave_1/imports.s");
INCLUDE_ASM("asm/maps/goma_cave_1/goma_cave_1_data.s");
