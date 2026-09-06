/* rom_7a0010 (overlay file 912): consolidated TU — kolima_rooms map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/kolima_rooms/exports.s");

void OvlFunc_912_2008030(void *ptr) {
    unsigned int i = 0;
    int b = 2;
    int c = 1;
    int v1 = 0x69;
    int v2 = 0x6e;

    for (; i <= 14; i++) {
        *(unsigned char *)((char *)ptr + 0x16) = b;
        *(int *)((char *)ptr + 4) = c;
        *(short *)ptr = v1;
        if (i == 4 || i == 7) {
            *(short *)ptr = v2;
        }
        ptr = (char *)ptr + 0x18;
    }
}



extern unsigned char gOvl_02008318[];

unsigned int KolimaRooms_GetEntrances(void) {
    return (unsigned int)gOvl_02008318;
}

unsigned int KolimaRooms_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_02008498[];

void *KolimaRooms_GetExits(void) {
    return (void *)gOvl_02008498;
}

extern unsigned char L4d8[] __asm__(".Lm912_4d8");
extern void OvlFunc_912_2008030(void *);

void *KolimaRooms_GetActors(void)
{
  unsigned char *r5;
  if (!__GetFlag(0x845))
    OvlFunc_912_2008030(L4d8);
  r5 = L4d8;
  __Func_808b868(r5);
  return r5;
}

extern void __CutsceneStart(void);
extern void __MessageID(int a);
extern void __ActorMessage(int a, int b);
extern void __CutsceneEnd(void);
extern unsigned char *__MapActor_GetActor(int);
extern void __Func_80b0278(int, int);

void OvlFunc_912_200809c(void) {
    unsigned int r5;

    r5 = *(unsigned short *)((char *)__MapActor_GetActor(0) + 6);
    __CutsceneStart();
    r5 += 0xffff5fff;
    if (r5 <= 0x3ffe) {
        __Func_80b0278(0xd, 0x10);
    } else {
        __MessageID(0x16ad);
        __ActorMessage(0x10, 0);
    }
    __CutsceneEnd();
}


void OvlFunc_912_20080e4(void) {
    unsigned int r5;

    r5 = *(unsigned short *)((char *)__MapActor_GetActor(0) + 6);
    __CutsceneStart();
    r5 += 0xffff5fff;
    if (r5 <= 0x3ffe) {
        __Func_80b0278(0xe, 0x11);
    } else {
        __MessageID(0x16af);
        __ActorMessage(0x11, 0);
    }
    __CutsceneEnd();
}


void OvlFunc_912_200812c(void) {
    unsigned int r5;

    r5 = *(unsigned short *)((char *)__MapActor_GetActor(0) + 6);
    __CutsceneStart();
    r5 += 0xffff5fff;
    if (r5 <= 0x3ffe) {
        __Func_80b0278(0xf, 0x12);
    } else {
        __MessageID(0x16b1);
        __ActorMessage(0x12, 0);
    }
    __CutsceneEnd();
}

extern void __Func_80b3284(int, int);

void OvlFunc_912_2008174(void) {
    unsigned int r5;

    r5 = *(unsigned short *)((char *)__MapActor_GetActor(0) + 6);
    __CutsceneStart();
    r5 += 0xffff5fff;
    if (r5 <= 0x3ffe) {
        __Func_80b3284(3, 0x13);
    } else {
        __MessageID(0x16b7);
        __ActorMessage(0x13, 0);
    }
    __CutsceneEnd();
}

extern unsigned char gOvl_02008658[];

void *KolimaRooms_GetEvents(void) {
    return (void *)gOvl_02008658;
}

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char iwram_3001ebc[];
extern void __Actor_SetSpriteFlags(unsigned char *, int);
extern void __CopyMapTiles(int, int, int, int, int, int);
extern void __MapActor_SetPos(int, int, int);

int KolimaRooms_MapInit(void) {
    int r1;
    int r2;
    char *r3;
    unsigned int i;
    int w, h;

    r3 = *(char **)iwram_3001ebc;
    r1 = 0xe0;
    r1 <<= 1;
    r3 += r1;
    r2 = 0x209;
    *(int *)r3 = r2;

    if (!__GetFlag(0x845)) {
        for (i = 8; i <= 0x16; i++) {
            __Actor_SetSpriteFlags(__MapActor_GetActor(i), 0);
        }
    }

    r3 = (char *)&gState;
    r2 = 0xe1;
    r2 <<= 1;
    r3 += r2;
    if ((r2 = *(unsigned short *)r3, r1 = 0, *(short *)(r3 + r1) == 7)) {
        w = 0xd;
        h = 8;
        __CopyMapTiles(0x22, 0x22, 0x12, 0x10, w, h);
        __CopyMapTiles(0x22, 0x5e, 0x12, 0x4c, w, h);
        __CopyMapTiles(0x5e, 0x22, 0x4e, 0x10, w, h);
    } else if ((unsigned short)(r2 - 8) <= 1) {
        w = 0xb;
        h = 8;
        __CopyMapTiles(0x22, 0x2b, 0x13, 0x17, w, h);
        __CopyMapTiles(0x22, 0x5e, 0x13, 0x53, w, h);
        __CopyMapTiles(0x5e, 0x22, 0x4f, 0x17, w, h);
        __MapActor_SetPos(0xa, 0, 0);
        __MapActor_SetPos(0xb, 0, 0);
        __MapActor_SetPos(0xc, 0, 0);
    }
    return 0;
}
INCLUDE_ASM("asm/maps/kolima_rooms/kolima_rooms_data.s");

INCLUDE_ASM("asm/maps/kolima_rooms/imports.s");
