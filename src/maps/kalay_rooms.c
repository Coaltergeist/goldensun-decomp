/* rom_7c3044 (overlay file 937): consolidated TU — kalay_rooms map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/kalay_rooms/exports.s");

INCLUDE_ASM("asm/maps/kalay_rooms/KalayRooms_GetEntrances.s");

int KalayRooms_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_02008728[];

void *KalayRooms_GetExits(void) {
    return (void *)gOvl_02008728;
}

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
typedef struct { unsigned char _bytes[4]; } ActorCmd;
extern ActorCmd gScript_906__0200879c[14];

extern unsigned char Lm937_8d4[] __asm__(".Lm937_8d4");
extern unsigned char Lm937_a0c[] __asm__(".Lm937_a0c");
extern unsigned char Lm937_784[] __asm__(".Lm937_784");

extern unsigned char Lconst_64[] __asm__(".Lconst_64");
extern unsigned char Lconst_65[] __asm__(".Lconst_65");
__asm__(".equ .Lconst_64, 0x64");
__asm__(".equ .Lconst_65, 0x65");

unsigned char *KalayRooms_GetActors(void)
{
    char *base;
    char *addr;
    short a;
    short b;
    unsigned char *r;

    base = (char *)&gState;
    addr = base + (0xe0 << 1);
    a = *(short *)addr;
    if (a == (int)Lconst_64) {
        addr = base + (0xe1 << 1);
        b = *(short *)addr;
        switch (b) {
        case 9 ... 15:
        case 17:
            r = Lm937_8d4;
            break;
        default:
            r = (unsigned char *)gScript_906__0200879c;
            break;
        }
        __Func_808b868(r);
        return r;
    } else if (a == (int)Lconst_65) {
        return Lm937_a0c;
    }
    return Lm937_784;
}
extern unsigned char _EVENT_64[], _EVENT_65[];
extern unsigned char Lm937_c88[] __asm__(".Lm937_c88");
extern unsigned char Lm937_a48[] __asm__(".Lm937_a48");
extern unsigned char Lm937_eb0[] __asm__(".Lm937_eb0");
extern unsigned char Lm937_a3c[] __asm__(".Lm937_a3c");

int KalayRooms_GetEvents(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_64) {
        int f1 = *(short *)((char *)p + 0x1c2);
        switch (f1) {
        case 9: case 0xa: case 0xb: case 0xc: case 0xd: case 0xe: case 0xf:
        case 0x11:
            return (int)Lm937_c88;
        default:
            return (int)Lm937_a48;
        }
    }
    if (ev == (int)_EVENT_65)
        return (int)Lm937_eb0;
    return (int)Lm937_a3c;
}

void OvlFunc_937_2008144(void) {
    __CutsceneStart();
    __MessageID(0x1add);
    __ActorMessage(0xc, 0);
    __SetFlag(0x91 << 4);
    __CutsceneEnd();
}

void OvlFunc_937_200816c(void) {
    __CutsceneStart();
    __MessageID(0x1ae3);
    __Func_8093054(0x10, 0);
    __CutsceneEnd();
}

void OvlFunc_937_200818c(void)
{
    unsigned short v;

    v = *(unsigned short *)((char *)__MapActor_GetActor(0) + 6) - 0x6001;
    if (v <= 0x3ffe) {
        __Func_80b3284(7, 8);
    } else {
        __CutsceneStart();
        if (__GetFlag(0x911) != 0) {
            __MessageID(0x1afb);
            __ActorMessage(8, 0);
        } else {
            __MessageID(0x1ad7);
            __Func_8093054(8, 0);
            __SetFlag(0x910);
        }
        __CutsceneEnd();
    }
}

INCLUDE_ASM("asm/maps/kalay_rooms/OvlFunc_937_20081fc.s");
extern unsigned char iwram_3001ebc[];

struct TableEntry {
    void *unk0;
    unsigned short unk4;
    unsigned short unk6;
};

extern struct TableEntry Lm937_ef8[] __asm__(".Lm937_ef8");

void OvlFunc_937_2008240(void)
{
    unsigned char *map;
    unsigned char *actor;
    unsigned int i;
    int index;
    int arg1, arg2;

    map = *(unsigned char **)iwram_3001ebc;
    __CutsceneStart();

    for (i = 8; i <= 0x41; i++) {
        actor = (unsigned char *)__MapActor_GetActor(i);
        if (actor != 0) {
            actor[0x55] = 0;
        }
    }

    switch (*(short *)(map + 0x16c)) {
    case 12:
        index = 0;
        break;
    case 13:
        index = 1;
        break;
    case 16:
        index = 2;
        break;
    case 19:
        index = 3;
        break;
    default:
        return;
    }

    __PlaySound(0x9e);
    arg1 = Lm937_ef8[index].unk4;
    arg2 = Lm937_ef8[index].unk6;
    __Func_8010560(Lm937_ef8[index].unk0, arg1, arg2);

    __MapActor_SetSpeed(0, 0x8000, 0x4000);
    ((unsigned char *)__MapActor_GetActor(0))[0x55] = 0;
    __MapActor_SetAnim(0, 2);
    __Func_8092208(0, 3, -8);
    __CutsceneWait(10);
    __Func_8091e9c(*(short *)(map + 0x16c));
    __MapTransitionOut();
    __WaitMapTransition();
    __CutsceneEnd();
}
INCLUDE_ASM("asm/maps/kalay_rooms/KalayRooms_MapInit.s");
INCLUDE_ASM("asm/maps/kalay_rooms/OvlFunc_937_200833c.s");

INCLUDE_ASM("asm/maps/kalay_rooms/imports.s");
