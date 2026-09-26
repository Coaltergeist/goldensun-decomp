/* rom_7a37f0 (overlay file 916): consolidated TU — kolima_forest_4 map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/kolima_forest_4/exports.s");

extern unsigned char gOvl_02009170[];

unsigned int KolimaForest4_GetEntrances(void) {
    return (unsigned int)gOvl_02009170;
}

unsigned int KolimaForest4_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_020091d0[];

void *KolimaForest4_GetExits(void) {
    return (void *)gOvl_020091d0;
}
extern unsigned char gOvl_020091e0[];

void *KolimaForest4_GetActors(void) {
    return (void *)gOvl_020091e0;
}
extern unsigned char gOvl_02009240[];

void *KolimaForest4_GetEvents(void) {
    return (void *)gOvl_02009240;
}

extern void *L12c0 __asm__(".Lm916_12c0");
extern void OvlFunc_916_2008c2c(void *);
extern void __Func_8010704(int, int, int, int, int, int);
extern void OvlFunc_916_2008150(void);

void OvlFunc_916_2008054(void) {
    /* Historical call-site declaration: the integer return is ignored.
     * Retained for gcc-2.96 scheduling; the definition below returns void. */
    extern int OvlFunc_916_2008b3c(void *, int);
    OvlFunc_916_2008c2c(L12c0);
    __Func_8010704(0, 0x40, 0x20, 0x20, 0, 0);
    OvlFunc_916_2008b3c(L12c0, 0xff);
    OvlFunc_916_2008150();
}

extern void __Func_8093c00(void);

void OvlFunc_916_200808c(void) {
    __Func_8093c00();
}

extern unsigned char gBuffer[];

INCLUDE_ASM("asm/maps/kolima_forest_4/OvlFunc_916_2008098.s");
#include "api.h"

/* Keep the reviewed sandbox forwarder local to this overlay. */
static inline void API_Func_80105d4(int a, int b, int c, int d, int e, int f) {
    extern void __Func_80105d4(int, int, int, int, int, int);
    __Func_80105d4(a, b, c, d, e, f);
}

struct MapTileEntry_916 {
    short id;
    short x;
    short y;
    short dir;
    void *actor;
};

extern short *L12c4 __asm__(".Lm916_12c4");
extern short *L12c8 __asm__(".Lm916_12c8");

void OvlFunc_916_2008150(void) {
    if (*L12c4 == 1) {
        API_Func_8010704(0, 0, 1, 4, 4, 9);
    } else {
        API_Func_8010704(0, 0, 1, 4, 6, 9);
    }
}
void OvlFunc_916_2008194(void) {
    struct MapTileEntry_916 *entry = (struct MapTileEntry_916 *)L12c0;

    if (*L12c8 != 0) {
        API_Func_80105d4(0x41, 0x35, 2, 1, 0x4f, 29);
        API_Func_80105d4(0x41, 0x28, 2, 4, 15, 28);
    } else {
        API_Func_80105d4(0x41, 0x32, 2, 5, 0x4f, 25);
    }

    if (*L12c8 != 0) {
        API_Func_80105d4(0, 0x20, 0x20, 0x20, 0x20, 0);
        API_Func_80105d4(0x20, 0x20, 0x20, 0x20, 0x40, 0);
        API_Func_8010704(0, 0x20, 0x20, 0x20, 0, 0);
    } else {
        API_Func_80105d4(0, 0x40, 0x20, 0x20, 0x20, 0);
        API_Func_80105d4(0x20, 0x40, 0x20, 0x20, 0x40, 0);
        API_Func_8010704(0, 0x40, 0x20, 0x20, 0, 0);
    }

    if (entry->id != -1) {
        int zero = 0;
        do {
            unsigned char *actor = (unsigned char *)entry->actor;

            if (*L12c8 == 1) {
                __Actor_SetAnim(actor, 4);
                actor[0x23] = 3;
                actor[0x55] = zero;
                *(int *)(actor + 0xc) = 0x1a0000;
                if (entry->dir != 0) {
                    API_Func_80105d4(0x44, 0x28, 1, 4, entry->x + 0x20, entry->y);
                } else {
                    API_Func_80105d4(0x46, 0x28, 4, 1, entry->x + 0x20, entry->y);
                }
            } else {
                unsigned char *p;
                __Actor_SetAnim(actor, 1);
                p = actor + 0x23;
                *p = 1;
                p += 0x32;
                *p = 2;
                *(int *)(actor + 0xc) = zero;
            }
            entry++;
        } while (entry->id != -1);
    }

    API_Func_80105d4(0x46, 0x2a, 1, 1, 10, 50);

    if (*L12c8 == 1) {
        API_Func_8010704(0, 0x20, 0x20, 0x20, 0, 0);
        OvlFunc_916_2008b3c(L12c0, 0xfe);
    } else {
        API_Func_8010704(0, 0x40, 0x20, 0x20, 0, 0);
        OvlFunc_916_2008b3c(L12c0, 0xff);
    }

    OvlFunc_916_2008150();
}
extern unsigned int __Random(void);
extern unsigned int L20dc __asm__(".Lm916_20dc");
extern unsigned int iwram_3001ad4[];
extern unsigned int L20d0[] __asm__(".Lm916_20d0");

void OvlFunc_916_200836c(void) {
    unsigned int vcount = *(volatile unsigned short *)0x04000006;
    unsigned int *src = iwram_3001ad4;
    volatile unsigned int *dst = (volatile unsigned int *)0x04000014;

    if (vcount == 0xe3 || vcount <= 0x34) {
        if (((100 * __Random()) >> 16) < L20dc) {
            src = L20d0;
        }
    }
    *dst = *src++;
    dst = (volatile unsigned int *)0x04000018;
    *dst++ = *src++;
    *dst = *src;
}

void OvlFunc_916_20083c0(void) {
    unsigned int *src;
    unsigned int *dst;
    unsigned short *h;

    src = iwram_3001ad4;
    dst = L20d0;
    *dst++ = *src++;
    *dst++ = *src++;
    *dst = *src;

    h = (unsigned short *)L20d0;
    h[1] += 0xb0;
    h[3] += 0xb0;
    h[5] += 0xb0;
}

INCLUDE_ASM("asm/maps/kolima_forest_4/OvlFunc_916_20083f0.s");
void OvlFunc_916_20087e0(void) {
    API_CutsceneStart();
    API_MapActor_SetAnim(0, 8);
    API_CutsceneWait(6);
    API_PlaySound(0xef);
    API_MapActor_SetSpeed(8, 0x8000, 0x3333);
    API_MapActor_SetAnim(8, 2);
    API_MapActor_TravelTo(8, 0x48, 0xb0);
    API_CutsceneWait(6);
    API_MapActor_SetAnim(0, 2);
    API_MapActor_SetSpeed(0, 0x4ccc, 0x3333);
    API_MapActor_TravelBy(0, -8, 0);
    API_CutsceneWait(24);
    API_MapActor_SetAnim(0, 1);
    API_MapActor_WaitMovement(8);
    API_MapActor_SetAnim(8, 1);
    API_PlaySound(0x120);
    API_PlaySound(0xd5);
    API_Func_8010704(5, 9, 1, 4, 6, 9);
    API_Func_8010704(0, 0, 1, 4, 4, 9);
    *L12c4 = 1;
    API_CutsceneEnd();
}
void OvlFunc_916_20088b0(void) {
    API_CutsceneStart();
    API_MapActor_SetAnim(0, 8);
    API_CutsceneWait(6);
    API_PlaySound(0xef);
    API_MapActor_SetSpeed(8, 0x8000, 0x3333);
    API_MapActor_SetAnim(8, 2);
    API_MapActor_TravelTo(8, 0x68, 0xb0);
    API_CutsceneWait(6);
    API_MapActor_SetAnim(0, 2);
    API_MapActor_SetSpeed(0, 0x4ccc, 0x3333);
    API_MapActor_TravelBy(0, 8, 0);
    API_CutsceneWait(24);
    API_MapActor_SetAnim(0, 1);
    API_MapActor_WaitMovement(8);
    API_MapActor_SetAnim(8, 1);
    API_PlaySound(0x120);
    API_PlaySound(0xd5);
    API_Func_8010704(5, 9, 1, 4, 4, 9);
    API_Func_8010704(0, 0, 1, 4, 6, 9);
    *L12c4 = 0;
    API_CutsceneEnd();
}

#include "dma.h"
extern unsigned char ewram_2001000[];
extern struct MapTileEntry_916 L111c[] __asm__(".Lm916_111c");
extern unsigned char iwram_3001ebc[];
extern void *__MapActor_GetActor(int);
extern void OvlFunc_916_2008e64(int);

extern void OvlFunc_916_2008a90(struct MapTileEntry_916 *);

int KolimaForest4_MapInit(void) {
    char *act;
    unsigned short v;

    do {
        L12c4 = (short *)ewram_2001000;
        L12c8 = (short *)(ewram_2001000 + 2);
        L12c0 = ewram_2001000 + 4;
    } while (0);

    API_Func_80105d4(0x20, 0, 0x40, 0x20, 0, 0x40);
    API_Func_8010704(0, 0, 0x20, 0x20, 0, 0x40);
    API_Func_8010704(0x20, 0, 0x20, 0x20, 0, 0x20);

    if (!API_GetFlag(0x109)) {
        DMA3_COPY(L111c, L12c0, 0x48);
        *L12c4 = 0;
        *L12c8 = 1;
    }

    OvlFunc_916_2008a90(L12c0);
    OvlFunc_916_2008b3c(L111c, 0xff);
    OvlFunc_916_2008194();
    API_MapActor_SetAnim(9, 0);

    ((unsigned char *)__MapActor_GetActor(9))[0x55] = 0;

    act = (char *)__MapActor_GetActor(10);
    v = 8;
    *(unsigned short *)(act + 0x20) = v;
    *(int *)(act + 0x18) = 0xc000;
    *(int *)(act + 0x1c) = 0xc000;

    *(int *)(*(unsigned char **)iwram_3001ebc + (0xe0 << 1)) = 0x81 << 2;

    if (!API_GetFlag(0x845)) {
        OvlFunc_916_2008e64(4);
    }
    return 0;
}


INCLUDE_ASM("asm/maps/kolima_forest_4/OvlFunc_916_2008a90.s");


void OvlFunc_916_2008b3c(struct MapTileEntry_916 *entry, int val) {
    int i;
    int x, y, dir;

    if (entry->id != -1) {
        do {
            x = entry->x;
            y = entry->y;
            dir = entry->dir;
            for (i = 3; i >= 0; i--) {
                unsigned char *p = gBuffer + ((x + (y << 7)) << 2);
                p[2] = val;
                if (dir == 0) {
                    x++;
                } else {
                    y++;
                }
            }
            entry++;
        } while (entry->id != -1);
    }
}
struct MapTileEntry_916 *OvlFunc_916_2008b8c(struct MapTileEntry_916 *entry, int x, int y) {
    while (entry->id != -1) {
        int ex = entry->x;
        int ey = entry->y;
        int min_x = ex;
        int min_y = ey;

        if (entry->dir == 0) {
            ex += 3;
        } else {
            ey += 3;
        }

        if (x >= min_x && x <= ex && y >= min_y && y <= ey) {
            return entry;
        }
        entry++;
    }
    return 0;
}
extern unsigned char ewram_202c000[];

int OvlFunc_916_2008be4(int arg0, int arg1, int arg2) {
    int i;

    for (i = 0; i <= 3; i++) {
        int off = (arg0 + (arg1 << 7)) << 2;
        unsigned char *p = gBuffer + off;
        if (p[2] == 0xff || (p[3] << 2)[ewram_202c000] != 0) {
            return -1;
        }
        if (arg2 == 0) {
            arg0++;
        } else {
            arg1++;
        }
    }
    return 0;
}
extern unsigned char L1164[] __asm__(".Lm916_1164");
extern signed char L1168[] __asm__(".Lm916_1168");
extern signed char L116c[] __asm__(".Lm916_116c");
INCLUDE_ASM("asm/maps/kolima_forest_4/OvlFunc_916_2008c2c.s");
extern void OvlFunc_916_2008f34(void);
extern void OvlFunc_916_2008f54(void);
extern void OvlFunc_916_2008f74(void);
extern void __Func_8091200(int, int);
extern unsigned short OvlFunc_916_2008ecc(unsigned short, int);

void OvlFunc_916_2008e64(int arg0) {
    unsigned int i;
    OvlFunc_916_2008f34();
    i = 0;
    do {
        unsigned int idx = i >> 16;
        if (i + 0xffef0000 > 0x60000) {
            if ((unsigned int)((idx + 0xff3f) << 16) > 0x70000) {
                volatile unsigned short *pltt = (volatile unsigned short *)(0x5000000 + (idx << 1));
                *pltt = OvlFunc_916_2008ecc(*pltt, arg0);
            }
        }
        {
            unsigned int next = i + 0x10000;
            i = next;
            if (next > 0xdf0000) break;
        }
    } while (1);
    OvlFunc_916_2008f74();
    OvlFunc_916_2008f54();
    __Func_8091200(0x10000, 0);
}
extern int _divsi3_RAM(int, int);

unsigned short OvlFunc_916_2008ecc(unsigned short c, int factor) {
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
extern void *iwram_3001ed0;
extern unsigned char L12d0[] __asm__(".Lm916_12d0");

void OvlFunc_916_2008f34(void) {
    DMA3_COPY(iwram_3001ed0, L12d0, 0x380);
}

#include "dma.h"
extern unsigned char L19d0[] __asm__(".Lm916_19d0");

void OvlFunc_916_2008f54(void) {
    DMA3_COPY(iwram_3001ed0, L19d0, 0x380);
}

extern void __Func_8091220(int, int);

void OvlFunc_916_2008f74(void) {
    unsigned char *dst = iwram_3001ed0;
    DMA3_COPY((void *)0x5000000, dst, 0x1c0);
    DMA3_COPY((void *)0x5000200, dst + 0x1c0, 0x1c0);
    __Func_8091220(0x10000, 0);
}
extern void __Func_8091200(int, int);

void OvlFunc_916_2008fb4(int a0) {
    void *dst = iwram_3001ed0;
    if (a0 != 0) {
        DMA3_COPY(L19d0, dst, 0x380);
    } else {
        DMA3_COPY(L12d0, dst, 0x380);
    }
    __Func_8091200(0x10000, 0);
    OvlFunc_916_2008f74();
}
INCLUDE_ASM("asm/maps/kolima_forest_4/kolima_forest_4_data.s");

INCLUDE_ASM("asm/maps/kolima_forest_4/imports.s");
