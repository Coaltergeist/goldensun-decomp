/* rom_7b7790 (overlay file 929): consolidated TU — xian_rooms map overlay. */

#include "nonmatching.h"

extern unsigned char gOvl_02008778[];

unsigned int XianRooms_GetEntrances(void) {
    return (unsigned int)gOvl_02008778;
}

int XianRooms_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_02008868[];

void *XianRooms_GetExits(void) {
    return (void *)gOvl_02008868;
}

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char L9c8[] __asm__(".Lm929_9c8");
extern unsigned char L890[] __asm__(".Lm929_890");

unsigned int XianRooms_GetActors(void) {
    unsigned int r3;
    unsigned int r2;
    unsigned int r5;

    r3 = (unsigned int)&gState;
    r2 = 0xe1;
    r2 <<= 1;
    r3 += r2;
    r2 = 0;
    if (*(short *)((char *)r3 + r2) == 8) {
        return (unsigned int)L9c8;
    }
    r5 = (unsigned int)L890;
    __Func_808b868(r5);
    return r5;
}

void OvlFunc_929_200835c(void)
{
    unsigned char *p;
    int v5;

    p = __MapActor_GetActor(0);
    v5 = *(unsigned short *)(p + 6);
    __CutsceneStart();
    if ((v5 + 0xffff5fff) <= 0x3ffe) {
        __Func_80b0278(0x10, 0xe);
    } else {
        if (!__GetFlag(0x895)) {
            __MessageID(0x1817);
        } else {
            __MessageID(0x1a46);
        }
        __ActorMessage(0xe, 0);
    }
    __CutsceneEnd();
}

void OvlFunc_929_20083bc(void)
{
    unsigned char *p;
    int v5;

    p = __MapActor_GetActor(0);
    v5 = *(unsigned short *)(p + 6);
    __CutsceneStart();
    if ((v5 + 0xffff5fff) <= 0x3ffe) {
        __Func_80b0278(0x11, 0xf);
    } else {
        if (!__GetFlag(0x895)) {
            __MessageID(0x1819);
        } else {
            __MessageID(0x1a48);
        }
        __ActorMessage(0xf, 0);
    }
    __CutsceneEnd();
}

void OvlFunc_929_200841c(void)
{
    unsigned char *p;
    int v5;

    p = __MapActor_GetActor(0);
    v5 = *(unsigned short *)(p + 6);
    __CutsceneStart();
    if ((v5 + 0xffff5fff) <= 0x3ffe) {
        __Func_80b0278(0x12, 0x10);
    } else {
        if (!__GetFlag(0x895)) {
            __MessageID(0x181b);
            __ActorMessage(0x10, 0);
        } else {
            __MessageID(0x1a4a);
            __Func_8093054(0x10, 0);
        }
    }
    __CutsceneEnd();
}

void OvlFunc_929_2008484(void) {
    void *r0;
    unsigned int r5;

    r0 = __MapActor_GetActor(0);
    r5 = *(unsigned short *)((char *)r0 + 6);
    __CutsceneStart();
    r5 += 0xffffe000;
    if (r5 > 0xc000) {
        __Func_80b3284(5, 0x11);
    } else {
        if (!__GetFlag(0x895)) {
            __MessageID(0x181d);
        } else {
            __MessageID(0x1a4e);
        }
        __ActorMessage(0x11, 0);
    }
    __CutsceneEnd();
}

void OvlFunc_929_20084e4(void) {
    __CutsceneStart();
    __MessageID(0x1a3a);
    __Func_8093054(0xa, 0);
    __CutsceneEnd();
}

#include "message.h"

void OvlFunc_929_2008504(void)
{
    __CutsceneStart();
    __MessageID(MSG_1a40);
    __Func_8093054(0xc, 0);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/xian_rooms/ovl_314_c_c_c_c_c_a.s");

extern unsigned char Ld4c[] __asm__(".Lm929_d4c");
extern unsigned char La28[] __asm__(".Lm929_a28");

unsigned int XianRooms_GetEvents(void) {
    unsigned int r3;
    unsigned int r2;

    r3 = (unsigned int)&gState;
    r2 = 0xe1;
    r2 <<= 1;
    r3 += r2;
    r2 = 0;
    if (*(short *)((char *)r3 + r2) == 8) {
        return (unsigned int)Ld4c;
    }
    return (unsigned int)La28;
}

INCLUDE_ASM("asm/maps/xian_rooms/ovl_314_c_c_c_c_c_c.s");
