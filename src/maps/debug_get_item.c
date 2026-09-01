/* rom_7fc720 (overlay file 973): consolidated TU */

#include "nonmatching.h"

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

INCLUDE_ASM("asm/maps/debug_get_item/OvlFunc_973_200804c.s");

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

INCLUDE_ASM("asm/maps/debug_get_item/OvlFunc_973_20080c0.s");
INCLUDE_ASM("asm/maps/debug_get_item/OvlFunc_973_20080ec.s");
INCLUDE_ASM("asm/maps/debug_get_item/OvlFunc_973_2008214.s");
#include "dma.h"

typedef struct { unsigned char _bytes[4]; } KeyState32;
extern KeyState32 gKeyPress;
extern KeyState32 gKeyRepeat;

extern unsigned char L90c[] __asm__(".L90c");
extern unsigned char L914[] __asm__(".L914");

__asm__(".equ .L50001e8, 0x50001e8");
extern unsigned char DmaSrc2[] __asm__(".L50001e8");
__asm__(".equ .L80000001, 0x80000001");
extern unsigned char DmaCnt2[] __asm__(".L80000001");

__asm__(".equ .L333, 0x333");
extern unsigned char Const333[] __asm__(".L333");
__asm__(".equ .L53a, 0x53a");
extern unsigned char Const53a[] __asm__(".L53a");

struct MoveInfo {
    u8 pad[4];
    u8 unk4;
};

void __PlaySound(int);
void __WaitFrames(int);
int _modsi3_RAM(int, int);
void __Func_8016498(void *);
void __Func_80164ac(void *);
void __Func_801e9d4(int, int, void *, int, int);
void __Func_801e7c0(int, void *, int, int);
void __DrawSmallText(int, void *, int, int);
void __CloseUIBox(void *, int);
struct MoveInfo *__GetMoveInfo(int);

static inline int ModWrap(int item, int add, int mod) {
    return _modsi3_RAM(item + (add << 1), mod << 1);
}

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
INCLUDE_ASM("asm/maps/debug_get_item/OvlFunc_973_20086f8.s");
INCLUDE_ASM("asm/maps/debug_get_item/OvlFunc_973_200871c.s");

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

INCLUDE_ASM("asm/maps/debug_get_item/ovl_30_c_c_c_c.s");
