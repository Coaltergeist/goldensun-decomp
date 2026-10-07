/* rom_7a4370 (overlay file 917): consolidated TU — kolima_forest_5 map overlay. */

#include "nonmatching.h"
#include "api.h"

INCLUDE_ASM("asm/maps/kolima_forest_5/exports.s");

extern unsigned char gOvl_02009ba4[];

void *KolimaForest5_GetEntrances(void) {
    return (void *)gOvl_02009ba4;
}
extern unsigned char gScript_887__02009c04[];

void *KolimaForest5_GetSpecialExits(void) {
    return (void *)gScript_887__02009c04;
}
extern unsigned char gOvl_02009c24[];

void *KolimaForest5_GetExits(void) {
    return (void *)gOvl_02009c24;
}
extern unsigned char MapEntrance_ARRAY_941__02009c34[];

void *KolimaForest5_GetActors(void) {
    return (void *)MapEntrance_ARRAY_941__02009c34;
}

extern unsigned char iwram_3001ebc[];

void OvlFunc_917_2008050(void) {
    int r5;
    int r3;
    r5 = *(int *)iwram_3001ebc;
    __CutsceneStart();
    __Func_8092304(0, 0, 0);
    r3 = 0xb6;
    r3 <<= 1;
    r5 += r3;
    r3 = 0;
    __Func_8091e9c(*(short *)(r5 + r3));
    __CutsceneEnd();
}

extern unsigned char gOvl_02009d3c[];

void *KolimaForest5_GetEvents(void) {
    return (void *)gOvl_02009d3c;
}

extern int __GetFlag(int);
extern void __SetFlag(int);
extern int __MessageID(int);
extern void __ActorMessage(int, int);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __CutsceneWait(int);
extern void __ActorMessage_Wait(int, int, int);
extern void __MapActor_DoAnim(int, int);
extern void OvlFunc_917_20092f4(int, int);
extern int _MSG_1520;

static inline int GetFlag(int flag)
{
    extern int __GetFlag(int);
    return __GetFlag(flag);
}

void OvlFunc_917_2008088(void) {
    __CutsceneStart();
    OvlFunc_917_20092f4(0xb, 1);
    if (GetFlag(0x845)) {
        __MessageID(0x151d);
        __ActorMessage(9, 0);
    } else if (GetFlag(0x84c)) {
        __MessageID(0x1525);
        __ActorMessage(9, 0);
    } else {
        __MessageID((int) (&_MSG_1520));
        __ActorMessage_Wait(9, 0, 0x14);
        OvlFunc_917_20092f4(0xb, 0);
        __CutsceneWait(0x3c);
        OvlFunc_917_20092f4(0xb, 1);
        __ActorMessage_Wait(9, 0, 0xa);
        __MapActor_DoAnim(0, 3);
        __CutsceneWait(0x28);
        __ActorMessage(9, 0);
        OvlFunc_917_20092f4(0xb, 0);
        __CutsceneWait(0x50);
        __ActorMessage_Wait(9, 0, 0x14);
        OvlFunc_917_20092f4(0xb, 1);
        __ActorMessage_Wait(9, 0, 0x14);
        __SetFlag(0x84c);
    }
    OvlFunc_917_20092f4(0xb, 0);
    __CutsceneEnd();
}

extern void __WaitFrames(int);
extern void __Func_80925cc(int, int);
extern int __CheckPartyItem(int);
extern void __Func_8091200(int, int);
extern void __Func_8091254(int);

void OvlFunc_917_2008158(void) {
    int r3;
    int r1;
    int r2;
    __CutsceneStart();
    if (__GetFlag(0x845)) {
        OvlFunc_917_20092f4(10, 1);
        __MessageID(0x151c);
        __ActorMessage(8, 0);
        OvlFunc_917_20092f4(10, 0);
    } else if (__GetFlag(0x844)) {
        OvlFunc_917_20092f4(10, 1);
        __MessageID(0x14eb);
        __ActorMessage(8, 0);
        OvlFunc_917_20092f4(10, 0);
        if (__CheckPartyItem(0xb8) != -1) {
            r3 = *(int *)iwram_3001ebc;
            r1 = 0xb9;
            r1 <<= 1;
            r2 = r3 + r1;
            r3 = 1;
            *(short *)r2 = r3;
        }
    } else {
        __MessageID(0x14c9);
        __ActorMessage(8, 0);
        __Func_8091200(0x406218, 1);
        __Func_8091254(0x14);
        __WaitFrames(0x28);
        API_ActorMessage_Wait(0x200e, 0, 10);
        __Func_80925cc(0, 2);
        API_ActorMessage(0x200e, 0);
        __Func_8091200(0x80 << 9, 1);
        __Func_8091254(0x14);
        __WaitFrames(0x28);
    }
    __CutsceneEnd();
}


void OvlFunc_917_2008248(void) {
    __CutsceneStart();
    if (__GetFlag(0x845)) {
        __MessageID(0x151f);
    } else {
        __MessageID(0x14c8);
    }
    __ActorMessage(9, 0);
    __CutsceneEnd();
}

void OvlFunc_917_2008284(void) {
    __CutsceneStart();
    if (__GetFlag(0x845)) {
        __MessageID(0x151e);
    } else {
        __MessageID(0x14ec);
    }
    __ActorMessage(8, 0);
    __CutsceneEnd();
}

extern void OvlFunc_917_20082ec(void);
extern void OvlFunc_917_2008488(void);

void OvlFunc_917_20082c0(void)
{
    __CutsceneStart();
    __Func_808e118();
    if (__GetFlag(0x844) == 0) {
        OvlFunc_917_20082ec();
    } else {
        OvlFunc_917_2008488();
    }
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/kolima_forest_5/OvlFunc_917_20082ec.s");
INCLUDE_ASM("asm/maps/kolima_forest_5/OvlFunc_917_2008488.s");
INCLUDE_ASM("asm/maps/kolima_forest_5/KolimaForest5_MapInit.s");

extern void __DeleteActor();

unsigned int OvlFunc_917_20091e8(int *p)
{
    *(unsigned int *)((char *)p + 0x18) += 0x1eb8;
    if (*(unsigned int *)((char *)p + 0x38) == 0x80000000) {
        if (*(unsigned int *)((char *)p + 0x3c) == 0x80000000) {
            if (*(unsigned int *)((char *)p + 0x40) == 0x80000000) {
                __DeleteActor();
            }
        }
    }
    return 1;
}



extern unsigned char iwram_3001e40[];
extern int L1dd0 __asm__(".Lm917_1dd0");
extern unsigned char gScript_917__02009d9c[];
extern void __PlaySound(int);
extern void __Actor_SetAnim(void *, int);
extern void __Actor_SetScript(void *, void *);

void OvlFunc_917_2009218(void) {
    int c = ~0xc;
    int r6 = *(int *)iwram_3001e40 & 3;
    if (r6 == 0) {
        char *p;
        char *sprite;
        if (L1dd0 != 0) {
            __PlaySound(0xc8);
        }
        p = (char *)API_CreateActor(0x1a, 0xa3 << 17, 0x80 << 14, 0xc0 << 16);
        if (p != 0) {
            sprite = *(char **)(p + 0x50);
            {
                unsigned char flags[1];
                flags[0] = *(unsigned char *)(p + 0x23);
                *(unsigned char *)(sprite + 0x26) = r6;
                *(unsigned char *)(p + 0x23) = flags[0] & 0xfe;
            }
            do {
                *(unsigned char *)(sprite + 9) = (*(unsigned char *)(sprite + 9) & c) | 4;
                *(int *)(p + 0x18) = 0x1999;
                *(int *)(p + 0x30) = 0x80 << 11;
                *(int *)(p + 0x34) = 0x80 << 11;
            } while (0);
            *(unsigned char *)(p + 0x55) = r6;
            __Actor_SetAnim(p, 2);
            API_Actor_TravelTo(p, 0xa3 << 17, 0, 0xf0 << 16);
            __Actor_SetScript(p, gScript_917__02009d9c);
        }
    }
}
extern int L1dd4 __asm__(".Lm917_1dd4");
extern void __Func_8091254(int);

void OvlFunc_917_20092b4(void) {
    if (L1dd4 == 0) {
        OvlFunc_917_20098b8(0);
        __Func_8091254(0x14);
    } else if (L1dd4 == 0x14) {
        OvlFunc_917_20098b8(1);
        __Func_8091254(8);
    }
    L1dd4++;
    if (L1dd4 == 0x1e) {
        L1dd4 = 0;
    }
}
INCLUDE_ASM("asm/maps/kolima_forest_5/OvlFunc_917_20092f4.s");
extern void __vec3_translate(int, int, void *);
extern void __Func_8003f3c(int);

void OvlFunc_917_200952c(char *p) {
    short *cnt = (short *)(p + 0x64);
    if (*cnt <= 0x77) {
        int vec[3];
        short angle;
        vec[0] = *(int *)(p + 0x38);
        vec[1] = *(int *)(p + 0x3c);
        vec[2] = *(int *)(p + 0x40);
        angle = *(short *)(p + 0x66);
        __vec3_translate(*cnt << 16, (*cnt * 3 << 8) + angle, vec);
        *(int *)(p + 8) = vec[0];
        *(int *)(p + 0xc) = vec[1];
        *(int *)(p + 0x10) = vec[2];
        *(int *)(p + 0x18) += 0x147;
        *(int *)(p + 0x1c) += 0x147;
        (*cnt)++;
    } else {
        char *sprite = *(char **)(p + 0x50);
        __Func_8003f3c(*(unsigned char *)(sprite + 0x1c));
        __DeleteActor(p);
    }
}
INCLUDE_ASM("asm/maps/kolima_forest_5/OvlFunc_917_20095a0.s");
extern int __CheckPartyItem(int);
extern int __CheckItem(int, int);
extern void *__GetUnit(int);

void OvlFunc_917_200972c(int item, int replace_item) {
    int unit = __CheckPartyItem(item);
    if (unit != -1) {
        int slot = __CheckItem(unit, item);
        if (slot != -1) {
            void *u = __GetUnit(unit);
            int r3 = slot * 2;
            r3 += 0xd8;
            *(short *)((char *)u + r3) = replace_item;
        }
    }
}
extern void OvlFunc_917_2009838(void);
extern void OvlFunc_917_2009858(void);
extern unsigned short OvlFunc_917_20097d0(unsigned short, int);
extern void __Func_8091200(int, int);

void OvlFunc_917_2009768(int arg0) {
    unsigned int i;
    OvlFunc_917_2009838();
    i = 0;
    do {
        unsigned int idx = i >> 16;
        if (i + 0xffef0000 > 0x60000) {
            if ((unsigned int)((idx + 0xff3f) << 16) > 0x70000) {
                unsigned short *pltt = (unsigned short *)(0x5000000 + (idx << 1));
                *pltt = OvlFunc_917_20097d0(*pltt, arg0);
            }
        }
        {
            unsigned int next = i + 0x10000;
            i = next;
            if (next > 0xdf0000) break;
        }
    } while (1);
    OvlFunc_917_2009878();
    OvlFunc_917_2009858();
    __Func_8091200(0x10000, 0);
}
extern int _divsi3_RAM(int, int);

unsigned short OvlFunc_917_20097d0(unsigned short c, int factor) {
    short r = c & 0x1f;
    short g = ((unsigned int)c >> 5) & 0x1f;
    short b = ((unsigned int)c >> 10) & 0x1f;

    r += _divsi3_RAM(r, factor * 4);
    g -= _divsi3_RAM(g, factor);
    b -= _divsi3_RAM(b, factor);

    if (r > 0x1f) {
        r = 0x1f;
    }
    return (b << 10) | (g << 5) | r;
}

#include "dma.h"
extern unsigned int iwram_3001ed0;
extern unsigned char L1de0[] __asm__(".Lm917_1de0");

void OvlFunc_917_2009838(void) {
    DMA3_COPY((void *)iwram_3001ed0, L1de0, 0x380);
}

#include "dma.h"
extern unsigned char L24e0[] __asm__(".Lm917_24e0");

void OvlFunc_917_2009858(void) {
    DMA3_COPY((void *)iwram_3001ed0, L24e0, 0x380);
}

extern void __Func_8091220(int, int);

void OvlFunc_917_2009878(void) {
    void *dst = (void *)iwram_3001ed0;
    DMA3_COPY((void *)0x5000000, dst, 0x1c0);
    DMA3_COPY((void *)0x5000200, (char *)dst + 0x1c0, 0x1c0);
    __Func_8091220(0x10000, 0);
}
extern void __Func_8091200(int, int);

void OvlFunc_917_20098b8(int arg0) {
    void *dst = (void *)iwram_3001ed0;
    if (arg0 != 0) {
        DMA3_COPY(L24e0, dst, 0x380);
    } else {
        DMA3_COPY(L1de0, dst, 0x380);
    }
    __Func_8091200(0x10000, 0);
    OvlFunc_917_2009878();
}
INCLUDE_ASM("asm/maps/kolima_forest_5/kolima_forest_5_data.s");

INCLUDE_ASM("asm/maps/kolima_forest_5/imports.s");
