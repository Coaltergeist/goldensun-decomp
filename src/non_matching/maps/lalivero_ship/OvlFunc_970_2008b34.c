/*
 * Remaining diff vs target OvlFunc_970_2008b34:
 * - Minor shift/decrement scheduling and REG_BGxCNT register allocation around
 *   the volatile unsigned short `bg` stack temporary.
 */
#include "api.h"
#include "gba/io.h"

extern unsigned char iwram_3001e70[];
extern int gOvl_020097e8;
extern unsigned int Lm970_17ec __asm__(".Lm970_17ec");
extern int Lm970_17f4[] __asm__(".Lm970_17f4");
extern int Lm970_17f8 __asm__(".Lm970_17f8");
extern int Lm970_17fc __asm__(".Lm970_17fc");
extern int Lm970_1804 __asm__(".Lm970_1804");
extern int Lm970_1808 __asm__(".Lm970_1808");

extern void OvlFunc_970_20080b0(void);
extern void OvlFunc_970_2008168(void);
extern void OvlFunc_970_2008194(void);
extern void OvlFunc_970_2008430(void);
extern void __Func_808e118(void);
extern void __Func_80b04c4(void);

static inline void ShipWriteHalf(int value, volatile unsigned short *p)
{
    *p = value;
}

void OvlFunc_970_2008b34(void)
{
    unsigned char *field = *(unsigned char **)iwram_3001e70;
    int i, moved;
    volatile unsigned short bg;

    API_CutsceneStart();
    __Func_808e118();
    API_MapActor_TravelToAnimWait(0, 0x138, 0xe8);
    API_Func_8092adc(0, 0xc000, 0);
    API_CutsceneWait(0x28);
    API_PlaySound(0x8c);
    for (i = 0; i <= 15; i++) {
        ShipWriteHalf((i << 11) | (i << 5), (volatile unsigned short *)0x05000000);
        API_CutsceneWait(10);
    }
    ShipWriteHalf(0x7e00, (volatile unsigned short *)0x05000000);
    {
        int flashAlpha = 0x1010;
        int lowAlpha = 0x810;
        for (i = 2; i >= 0; i--) {
            API_PlaySound(0xd4);
            ShipWriteHalf(flashAlpha, &REG_BLDALPHA);
            API_CutsceneWait(3);
            ShipWriteHalf(lowAlpha, &REG_BLDALPHA);
            API_CutsceneWait(0x41);
        }
    }
    gOvl_020097e8 = 1;
    Lm970_17ec = 0;
    API_StartTask(OvlFunc_970_2008194, 0xc80);
    Lm970_17f8 = 1;
    API_CutsceneWait(20);
    API_PlaySound(0xa3);
    API_Func_8012330(0x10000, 0x10000, 0x10000);
    API_CutsceneWait(0x3c);
    Lm970_17f8 = 1;
    API_Func_8012330(0x20000, 0x20000, 0x10000);
    API_CutsceneWait(0x3c);
    API_Func_8012330(0x30000, 0x30000, 0x10000);
    Lm970_17f4[0] = 0;
    API_StartTask(OvlFunc_970_2008168, 0xc80);
    moved = 0;
    do {
        *(int *)(field + 0x140) += 0x3333;
        moved += 0x3333;
        *(int *)(field + 0x170) += 0x3333;
        API_WaitFrames(1);
    } while (moved <= 0x59ffff);
    API_StopTask(OvlFunc_970_2008168);
    {
        unsigned int tmp = REG_BG3CNT;
        Lm970_17f8 = 0;
        REG_BG3CNT = bg = (tmp & 0xfffc) | 3;
    }
    REG_BG2CNT = bg = (REG_BG2CNT & 0xfffc) | 3;
    bg = (REG_BG1CNT & 0xfffc) | 2;
    gOvl_020097e8 = 0;
    REG_BG1CNT = bg;
    API_PlaySound(0x120);
    API_WaitFrames(1);
    API_PlaySound(0x91);
    ShipWriteHalf(0xbf, &REG_BLDCNT);
    for (i = 0; i <= 16; i++) {
        REG_BLDY = i;
        API_CutsceneWait(1);
    }
    API_CutsceneWait(0x28);
    API_Func_8012330(-1, -1, 0xe666);
    Lm970_1804 = *(int *)(field + 0x140);
    Lm970_1808 = *(int *)(field + 0x170);
    Lm970_17fc = 1;
    for (i = 16; i >= 0; i--) {
        REG_BLDY = i;
        API_CutsceneWait(8);
    }
    API_StartTask(OvlFunc_970_20080b0, 0xc80);
    API_PlaySound(0x50);
    __Func_80b04c4();
    API_CutsceneWait(20);
    API_CutsceneEnd();
    OvlFunc_970_2008430();
}
