/* rom_7fc720 (overlay file 973): consolidated TU */

#include "nonmatching.h"
#include "api.h"

INCLUDE_ASM("asm/maps/debug_get_item/exports.s");

extern unsigned char gOvl_02008920[];
extern unsigned char gOvl_02008964[];
extern unsigned char gOvl_02008994[];
extern unsigned char gOvl_02008998[];
extern unsigned char gOvl_02008a58[];
extern unsigned char L93c[] __asm__(".L93c");
extern unsigned char L958[] __asm__(".L958");

extern void __MapActor_Emote(int actor, int emote, int c);
extern void __MessageID(int id);
extern void __ActorMessage(int actor, int b);
extern unsigned char *__GetUnit(int unit);
extern void __SetMinLevel(int unit, int level);
extern void __CalcStats(int unit);
extern void *__CreateUIBox(int a, int b, int c, int d, int e);
extern void __UIDrawText(unsigned char *text, void *box, int x, int y);
extern int __Debug_IconTest(void);
extern int __Debug_FaceTest(void);

extern unsigned int iwram_3001f30;

unsigned int OvlFunc_973_2008030(void) {
    return (unsigned int)gOvl_02008964;
}

unsigned int OvlFunc_973_2008038(void) {
    return 0;
}

unsigned int OvlFunc_973_200803c(void) {
    return (unsigned int)gOvl_02008994;
}

unsigned int OvlFunc_973_2008044(void) {
    return (unsigned int)gOvl_02008998;
}

void OvlFunc_973_200804c(void)
{
    __MessageID(0x23cd);
    API_MapActor_Emote(0xd, 0x102, 0);
    do { { int arg0 = 0xd; __ActorMessage(arg0, 0); } } while (0);
}

void OvlFunc_973_2008070(void)
{
  __MapActor_Emote(0xd, 0x105, 0);
  __MessageID(0x23cd);
 do { { int arg0 = 0xd; __ActorMessage(arg0, 0); } } while (0);
}

unsigned int OvlFunc_973_2008098(void) {
    return (unsigned int)gOvl_02008a58;
}

void OvlFunc_973_20080a0(int r0, int r1) {
    int r5, r6;
    unsigned char *unit;
    r5 = r0;
    r6 = r1;
    unit = __GetUnit(r5);
    __SetMinLevel(r5, unit[0xf] + r6);
    __CalcStats(r5);
}


static inline int GetPartyMembers(unsigned short *buf) {
    return __Func_80796c4(buf);
}

void OvlFunc_973_20080c0(int r0)
{
    unsigned short buf[16];
    int count;
    int i;

    count = GetPartyMembers(buf);
    for (i = 0; i < count; i++) {
        OvlFunc_973_20080a0(buf[i], r0);
    }
}
#include "dma.h"

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
typedef struct { unsigned char _bytes[4]; } KeyState32;
extern KeyState32 gKeyPress;
extern KeyState32 gKeyRepeat;
extern unsigned char s_Lv_973__020088d0[];

__asm__(".equ .Lc20, 0xc20");
extern unsigned char ConstC20[] __asm__(".Lc20");

extern int __DrawSmallText(int, void *, int, int);
extern void __Func_801e8b0(void *, void *, int, int);
extern void __Func_801ea08(int, int, void *, int, int);
extern void OvlFunc_973_20080c0(int);
extern void __PlaySound(int);
extern void __WaitFrames(int);
extern void __CloseUIBox(void *, int);

void OvlFunc_973_20080ec(void)
{
    unsigned int r2;
    unsigned int r3;
    unsigned char *unit;
    void *box;
    int text;
    int update;

    r3 = (unsigned int)&gState;
    r2 = 0xfa;
    r2 <<= 1;
    r3 += r2;
    unit = __GetUnit(*(int *)r3);

    box = __CreateUIBox(0, 0, 30, 9, 2);

    text = (int)ConstC20;
    __DrawSmallText(text, box, 0, 0);
    __DrawSmallText(text + 1, box, 0, 0x10);
    text += 2;
    update = 1;
    __DrawSmallText(text, box, 0, 0x20);

    while (1) {
        if (update != 0) {
            __Func_8016498(box);
            __Func_801e8b0(unit, box, 0, 0x30);
            __UIDrawText(s_Lv_973__020088d0, box, 0x30, 0x30);
            update = 0;
            __Func_801ea08(unit[0xf], 0, box, 0x48, 0x30);
        }

        if ((*(vu32 *)&gKeyPress & 8) || (*(vu32 *)&gKeyPress & 4)) {
            OvlFunc_973_20080c0(5);
            __PlaySound(0x5d);
            update = 1;
        }
        if (*(vu32 *)&gKeyPress & 1) {
            OvlFunc_973_20080c0(1);
            __PlaySound(0x5b);
            update = 1;
        }
        if (*(vu32 *)&gKeyPress & 2) {
            __PlaySound(0x71);
            __Func_8016498(box);
            __WaitFrames(1);
            __CloseUIBox(box, 1);
            __CalcStats(0);
            __CalcStats(1);
            __CalcStats(3);
            __CalcStats(2);
            return;
        }

        __WaitFrames(1);
    }
}

extern unsigned char L8d4[] __asm__(".L8d4");
extern unsigned char L8e0[] __asm__(".L8e0");
extern unsigned char L8f8[] __asm__(".L8f8");

__asm__(".equ .L50001e8, 0x50001e8");
extern unsigned char DmaSrc2[] __asm__(".L50001e8");
__asm__(".equ .L80000001, 0x80000001");
extern unsigned char DmaCnt2[] __asm__(".L80000001");

__asm__(".equ .Lc75, 0x75");
extern unsigned char Const75[] __asm__(".Lc75");
__asm__(".equ .Lc182, 0x182");
extern unsigned char Const182[] __asm__(".Lc182");

struct ItemInfo {
    u8 pad[6];
    u16 unk6;
};

int _modsi3_RAM(int, int);

static inline int ModWrap(int item, int add, int mod) {
    return _modsi3_RAM(item + (add << 1), mod << 1);
}

int __GiveItem(int);
int __Func_8078500(void);
struct ItemInfo *__GetItemInfo(int);
void __Func_80a4924(void *, int);
void __Func_80164ac(void *);
void __Func_801e9d4(int, int, void *, int, int);
void __Func_801e7c0(int, void *, int, int);

void OvlFunc_973_2008214(void)
{
    int dir = 0;
    void *box;
    void *box2;
    int item = 1;
    int update = 1;

    __PlaySound(0x70);
    box = __CreateUIBox(0, 0, 30, 7, 2);
    box2 = __CreateUIBox(0, 8, 28, 10, 2);

    DMA3_SET((void *)0x5000200, (void *)0x50001c0, 0x80000010);
    DMA3_SET(DmaSrc2, (void *)(0x50001c0 + 0x1c), (u32)DmaCnt2);
    __WaitFrames(1);

    while (1) {
        if (update != 0) {
            int r5;
            update = 0;
            item = ModWrap(item, 0x87, 0x87);
            __Func_8016498(box);
            __Func_80164ac(box);
            __UIDrawText(L8d4, box, 0, 0);
            __Func_801e9d4(item, 0, box, 0x50, update);
            if (__Func_8078500() != 0) {
                r5 = 0x1ff;
                __UIDrawText(L8e0, box, 0, 0x20);
                r5 &= item;
                __GetItemInfo(r5);
                __Func_801e7c0(r5 + (int)Const182, box, 0x78, 0);
                r5 += (int)Const75;
                __Func_801e7c0(r5, box, 0, 0x10);
                __Func_8016498(box2);
                __Func_80a4924(box2, item);
            } else {
                __UIDrawText(L8f8, box, 0, 0x20);
            }
        }

        if (*(vu32 *)&gKeyPress & 1) {
            if (__GiveItem(item) != -1) {
                __PlaySound(0xaf);
            } else {
                __PlaySound(0x71);
                break;
            }
        }

        if (*(vu32 *)&gKeyPress & 2) {
            __PlaySound(0x71);
            break;
        }

        if (*(vu32 *)&gKeyRepeat & 0x40) {
            dir = 0xff;
            item -= 1;
            update = 1;
            __PlaySound(0x6f);
        }
        if (*(vu32 *)&gKeyRepeat & 0x80) {
            dir = 1;
            item += 1;
            update = 1;
            __PlaySound(0x6f);
        }
        if (*(vu32 *)&gKeyRepeat & 0x10) {
            dir = 1;
            item += 10;
            update = 1;
            __PlaySound(0x6f);
        }
        if (*(vu32 *)&gKeyRepeat & 0x20) {
            dir = 0xff;
            item -= 10;
            update = 1;
            __PlaySound(0x6f);
        }
        if (*(vu32 *)&gKeyRepeat & 0x100) {
            dir = 1;
            item += 30;
            update = 1;
            __PlaySound(0x6f);
        }
        if (*(vu32 *)&gKeyRepeat & 0x200) {
            dir = 0xff;
            item -= 30;
            update = 1;
            __PlaySound(0x6f);
        }

        if ((signed char)dir == -1) {
            item = ModWrap(item, 0x87, 0x87);
            goto check_neg;
            while (1) {
                item = _modsi3_RAM(item + 0x10d, 0x87 << 1);
            check_neg:
                if (__GetItemInfo(item & 0x1ff)->unk6 != 0)
                    break;
            }
        }
        if ((signed char)dir == 1) {
            item = ModWrap(item, 0x87, 0x87);
            goto check_pos;
            while (1) {
                item = _modsi3_RAM(item + 0x10f, 0x87 << 1);
            check_pos:
                if (__GetItemInfo(item & 0x1ff)->unk6 != 0)
                    break;
            }
        }

        dir = 0;
        __WaitFrames(1);
    }

    __Func_8016498(box);
    __WaitFrames(1);
    __CloseUIBox(box, 1);
    __CloseUIBox(box2, 1);
}

extern unsigned char L90c[] __asm__(".L90c");
extern unsigned char L914[] __asm__(".L914");


__asm__(".equ .L333, 0x333");
extern unsigned char Const333[] __asm__(".L333");
__asm__(".equ .L53a, 0x53a");
extern unsigned char Const53a[] __asm__(".L53a");

struct MoveInfo {
    u8 pad[4];
    u8 unk4;
};

struct MoveInfo *__GetMoveInfo(int);

void OvlFunc_973_20084b0(void)
{
    int dir = 0;
    void *box;
    void *box2;
    int move = 1;
    int update = 1;

    __PlaySound(0x70);
    box = __CreateUIBox(0, 0, 30, 12, 2);

    DMA3_SET((void *)0x5000200, (void *)0x50001c0, 0x80000010);
    DMA3_SET(DmaSrc2, (void *)(0x50001c0 + 0x1c), (u32)DmaCnt2);
    __WaitFrames(1);

    while (1) {
        if (update != 0) {
            int r5;
            update = 0;
            move = ModWrap(move, 0x87, 0x87);
            __Func_8016498(box);
            __Func_80164ac(box);
            __UIDrawText(L90c, box, 0, 0);
            __Func_801e9d4(move, 0, box, 0x50, update);
            r5 = move & 0x3fff;
            __UIDrawText(L914, box, 0, 0x48);
            __Func_801e7c0(r5 + (int)Const333, box, 0x78, 0);
            r5 += (int)Const53a;
            __Func_801e7c0(r5, box, 0, 0x18);
            __DrawSmallText(r5, box, 0, 0x30);
        }

        if (*(vu32 *)&gKeyPress & 2) {
            __PlaySound(0x71);
            __Func_8016498(box);
            __WaitFrames(1);
            __CloseUIBox(box, 1);
            __CloseUIBox(box2, 1);
            break;
        }

        if (*(vu32 *)&gKeyRepeat & 0x40) {
            dir = 0xff;
            move -= 1;
            update = 1;
            __PlaySound(0x6f);
        }
        if (*(vu32 *)&gKeyRepeat & 0x80) {
            dir = 1;
            move += 1;
            update = 1;
            __PlaySound(0x6f);
        }
        if (*(vu32 *)&gKeyRepeat & 0x10) {
            dir = 1;
            move += 10;
            update = 1;
            __PlaySound(0x6f);
        }
        if (*(vu32 *)&gKeyRepeat & 0x20) {
            dir = 0xff;
            move -= 10;
            update = 1;
            __PlaySound(0x6f);
        }
        if (*(vu32 *)&gKeyRepeat & 0x100) {
            dir = 1;
            move += 30;
            update = 1;
            __PlaySound(0x6f);
        }
        if (*(vu32 *)&gKeyRepeat & 0x200) {
            dir = 0xff;
            move -= 30;
            update = 1;
            __PlaySound(0x6f);
        }

        if ((signed char)dir == -1) {
            move = ModWrap(move, 0x87, 0x87);
            goto check_neg;
            while (1) {
                move = _modsi3_RAM(move + 0x10d, 0x87 << 1);
            check_neg:
                if (__GetMoveInfo(move & 0x3fff)->unk4 != 0)
                    break;
            }
        }
        if ((signed char)dir == 1) {
            move = ModWrap(move, 0x87, 0x87);
            goto check_pos;
            while (1) {
                move = _modsi3_RAM(move + 0x10f, 0x87 << 1);
            check_pos:
                if (__GetMoveInfo(move & 0x3fff)->unk4 != 0)
                    break;
            }
        }

        dir = 0;
        __WaitFrames(1);
    }
}
extern unsigned char *iwram_3001ebc;
extern void __Func_8091e9c(void);

void OvlFunc_973_20086f8(void)
{
    unsigned char *base = iwram_3001ebc;
    *(unsigned int *)(base + (0xe0 << 1)) = (0xe0 << 1) + 0x41;
    *(unsigned int *)(base + ((0xe0 << 1) + 8)) = 0x18;
    __Func_8091e9c();
}
extern unsigned char *__MapActor_GetActor(int);
extern void __MapActor_SetAnim(int, int);

int OvlFunc_973_200871c(void)
{
    unsigned char *base = iwram_3001ebc;
    unsigned char *actor;
    *(unsigned int *)(base + (0xe0 << 1)) = (0xe0 << 1) + 0x44;
    *(unsigned int *)(base + ((0xe0 << 1) + 8)) = 0x18;
    actor = __MapActor_GetActor(0xb);
    *(int *)(actor + 0x1c) = 0x19999;
    actor = __MapActor_GetActor(0xb);
    *(int *)(actor + 0x18) = 0x19999;
    __MapActor_SetAnim(0xd, 5);
    do { { int arg0 = 0xe; __MapActor_SetAnim(arg0, 2); } } while (0);
    return 0;
}

void OvlFunc_973_2008768(void)
{
    unsigned char unused[32];
    void *pUVar1;

    pUVar1 = __CreateUIBox(0, 0xd, 0x1e, 6, 2);
    __UIDrawText(gOvl_02008920, pUVar1, 0, 0);
    __UIDrawText(L93c, pUVar1, 0, 8);
    __UIDrawText(L958, pUVar1, 0, 0x10);
}

void OvlFunc_973_20087b8(void) {
    unsigned int ptr;
    ptr = iwram_3001f30;
    *((unsigned char *)(ptr + 0x35)) = 1;
}

int OvlFunc_973_20087c8(void) {
    return __Debug_IconTest();
}

int OvlFunc_973_20087d4(void) {
    return __Debug_FaceTest();
}

INCLUDE_ASM("asm/maps/debug_get_item/imports.s");

INCLUDE_ASM("asm/maps/debug_get_item/debug_get_item_data.s");
