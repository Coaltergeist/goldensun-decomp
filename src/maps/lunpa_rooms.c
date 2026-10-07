/* rom_7c5974 (overlay file 940): consolidated TU — lunpa_rooms map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/lunpa_rooms/exports.s");

extern unsigned char gOvl_020084f8[];

unsigned int LunpaRooms_GetEntrances(void) {
    return (unsigned int)gOvl_020084f8;
}

unsigned int LunpaRooms_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_02008630[];

void *LunpaRooms_GetExits(void) {
    return (void *)gOvl_02008630;
}
extern unsigned char gOvl_0200865c[];

void *LunpaRooms_GetActors(void) {
    return (void *)gOvl_0200865c;
}

extern unsigned char Lc98[] __asm__(".Lm940_c98");
extern unsigned char La64[] __asm__(".Lm940_a64");
extern unsigned char L824[] __asm__(".Lm940_824");
extern int gState;

unsigned int LunpaRooms_GetEvents(void) {
    unsigned int r3;
    unsigned int r2;

    r3 = (unsigned int)&gState;
    r2 = 0xe1;
    r2 <<= 1;
    r3 += r2;
    r2 = 0;
    if (*(short *)((char *)r3 + r2) == 0xa) {
        return (unsigned int)Lc98;
    } else if (__GetFlag(0x941) != 0) {
        return (unsigned int)La64;
    } else {
        return (unsigned int)L824;
    }
}

void OvlFunc_940_200808c(void) {
    unsigned short t;

    if ((unsigned int)(*(unsigned short *)((char *)__MapActor_GetActor(0) + 6) + 0xffff5fff) <= 0x3ffe && __GetFlag(0x941) != 0) {
        t = 8;
        do { t = (unsigned short) t; } while (0);
        __Func_80b3284(t, 0x11);
    } else {
        __CutsceneStart();
        if (__GetFlag(0x941) != 0) {
            __MessageID(0x24fb);
            t = 0x11;
            do { t = (unsigned short) t; } while (0);
            __Func_8093054(t, 0);
        } else {
            __MessageID(0x1bd0);
            t = 0x11;
            do { t = (unsigned short) t; } while (0);
            __Func_8093054(t, 0);
        }
        __CutsceneEnd();
    }
}

void OvlFunc_940_20080fc(void) {
    __CutsceneStart();
    __MessageID(0x1bd5);
    __Func_8093054(0x14, 0);
    __SetFlag(0x94 << 4);
    __CutsceneEnd();
}

void OvlFunc_940_2008124(void) {
    __CutsceneStart();
    __MessageID(0x1bdb);
    __ActorMessage(0x14, 0);
    __SetFlag(0x94 << 4);
    __CutsceneEnd();
}

void OvlFunc_940_200814c(void) {
    __CutsceneStart();
    __MessageID(0x24fe);
    __Func_8093054(0x12, 0);
    __CutsceneEnd();
}

void OvlFunc_940_200816c(void) {
    unsigned short t;

    if ((unsigned int)(*(unsigned short *)((char *)__MapActor_GetActor(0) + 6) + 0xffff5fff) <= 0x3ffe) {
        __UI_Sanctum(0x15);
    } else if (__GetFlag(0x941) != 0) {
        __CutsceneStart();
        __MessageID(0x2507);
        t = 0x15;
        do { t = (unsigned short) t; } while (0);
        __ActorMessage(t, 0);
        __CutsceneEnd();
    } else {
        __CutsceneStart();
        __MessageID(0x1bdc);
        t = 0x15;
        do { t = (unsigned short) t; } while (0);
        __ActorMessage(t, 0);
        __CutsceneEnd();
    }
}

extern int _MSG_1be0;

void OvlFunc_940_20081d8(void)
{
  int r0;
  if (__GetFlag(0x941) != 0)
  {
    __CutsceneStart();
    r0 = __MessageID(0x24fa);
 do { __ActorMessage(0x10, 0); } while (0);
    __CutsceneEnd();
  }
  else
  {
 do { __CutsceneStart(); r0 = __MessageID((int) (&_MSG_1be0)); } while (0);
    __ActorMessage(0x10, 0);
    __CutsceneEnd();
  }
}

void OvlFunc_940_2008224(void) {
    unsigned short t;

    if ((unsigned int)(*(unsigned short *)((char *)__MapActor_GetActor(0) + 6) + 0xffff5fff) <= 0x3ffe) {
        t = 0x19;
        do { t = (unsigned short) t; } while (0);
        __Func_80b0278(t, 0x10);
    } else if (__GetFlag(0x941) != 0) {
        __CutsceneStart();
        __MessageID(0x24f9);
        t = 0x10;
        do { t = (unsigned short) t; } while (0);
        __ActorMessage(t, 0);
        __CutsceneEnd();
    } else {
        __CutsceneStart();
        __MessageID(0x1bcf);
        t = 0x10;
        do { t = (unsigned short) t; } while (0);
        __ActorMessage(t, 0);
        __CutsceneEnd();
    }
}

extern int __GetFlag(int);
extern void __MessageID(int);
extern void __ActorMessage(int, int);

void OvlFunc_940_2008294(void) {
    if (__GetFlag(0x941)) {
        __MessageID(0x24f6);
        __ActorMessage(0xe, 0);
    } else {
        __MessageID(0x1bde);
        __ActorMessage(0xe, 0);
    }
}

void OvlFunc_940_20082d0(void) {
    unsigned int r5;
    unsigned int r3;

    r5 = *(unsigned short *)((char *)__MapActor_GetActor(0) + 6);
    if (__GetFlag(0x941) != 0) {
        r3 = r5 + 0xffff5fff;
        if (r3 <= 0x3ffe) {
            __Func_80b0278(0x1d, 0xe);
        } else {
            unsigned long long t;
            unsigned long v;
            __CutsceneStart();
            __MessageID(0x24f5);
            t = 0xe;
            do { t = (unsigned long) t; } while (0);
            v = t;
            __ActorMessage(v, 0);
            __CutsceneEnd();
        }
    } else {
        __MessageID(0x1bcd);
        __ActorMessage(0xe, 0);
    }
}


void OvlFunc_940_2008338(void) {
    if (__GetFlag(0x941)) {
        __MessageID(0x24f8);
        __ActorMessage(0xf, 0);
    } else {
        __MessageID(0x1bdf);
        __ActorMessage(0xf, 0);
    }
}

void OvlFunc_940_2008374(void)
{
    unsigned int r5;
    unsigned int r3;
    unsigned short t;

    r5 = *(unsigned short *)((char *)__MapActor_GetActor(0) + 6);
    if (__GetFlag(0x941) != 0) {
        r3 = r5 + 0xffff5fff;
        if (r3 <= 0x3ffe) {
            __Func_80b0278(0x1e, 0xf);
        } else {
            __CutsceneStart();
            __MessageID(0x24f7);
            t = 0xf;
            do { t = (unsigned short) t; } while (0);
            __ActorMessage(t, 0);
            __CutsceneEnd();
        }
    } else {
        __MessageID(0x1bce);
        __ActorMessage(0xf, 0);
    }
}

extern unsigned char iwram_3001ebc[];
extern void __ClearFlag(int);
extern unsigned char *__MapActor_GetActor(int);
extern void __Actor_SetSpriteFlags(unsigned char *, int);

extern unsigned char Lconst_69[] __asm__(".Lconst_69");
__asm__(".equ .Lconst_69, 0x69");

int LunpaRooms_MapInit(void) {
    int r1;
    int r2;
    char *r3;
    short r6;

    r3 = *(char **)iwram_3001ebc;
    r1 = 0xe0;
    r1 <<= 1;
    r3 += r1;
    r2 = 0x209;
    *(int *)r3 = r2;

    r2 = 0xe1;
    r2 <<= 1;
    r3 = (char *)&gState + r2;
    r1 = 0;
    r6 = *(short *)(r3 + r1);
    if (r6 == 0xa) {
        __ClearFlag(0x12f);
        r1 = 0xe2;
        r2 = (int)Lconst_69;
        r1 <<= 1;
        r3 = (char *)&gState + r1;
        *(short *)r3 = r2;
        r2 = 0xe3;
        r2 <<= 1;
        r3 = (char *)&gState + r2;
        *(short *)r3 = r6;
    }

    __Actor_SetSpriteFlags(__MapActor_GetActor(0x17), 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0x18), 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0x19), 0);

    return 0;
}

extern void __UI_Sanctum(int);

void OvlFunc_940_2008454(void)
{
    unsigned char *p;

    p = __MapActor_GetActor(0);
    if ((unsigned int)(*(unsigned short *)(p + 6) - 0xa001) <= 0x3ffe) {
        __UI_Sanctum(0x15);
    } else {
        __MessageID(0x266b);
        __ActorMessage(0x16, 0);
    }
}

INCLUDE_ASM("asm/maps/lunpa_rooms/lunpa_rooms_data.s");

INCLUDE_ASM("asm/maps/lunpa_rooms/imports.s");
