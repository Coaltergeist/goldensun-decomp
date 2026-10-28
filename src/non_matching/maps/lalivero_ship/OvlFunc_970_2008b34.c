static inline void CS970_API_CutsceneEnd(void)
{
    extern void CS970__CutsceneEnd(void) __asm__("__CutsceneEnd");
    CS970__CutsceneEnd();
}
static inline void CS970_API_CutsceneStart(void)
{
    extern void CS970__CutsceneStart(void) __asm__("__CutsceneStart");
    CS970__CutsceneStart();
}
static inline void CS970_API_CutsceneWait(int a0) { extern void CS970__CutsceneWait(int) __asm__("__CutsceneWait"); CS970__CutsceneWait(a0); }
static inline void CS970_API_Func_8012330(int a, int b, int c) { extern void CS970__Func_8012330(int, int, int) __asm__("__Func_8012330"); CS970__Func_8012330(a,b,c); }
static inline void CS970_API_Func_8092adc(int a0, int a1, int a2)
{
    extern void CS970__Func_8092adc(int, int, int) __asm__("__Func_8092adc");
    CS970__Func_8092adc(a0, a1, a2);
}
static inline void CS970_API_MapActor_TravelToAnimWait(int a0,int a1,int a2) { extern void CS970__MapActor_TravelToAnimWait(int, int, int) __asm__("__MapActor_TravelToAnimWait"); CS970__MapActor_TravelToAnimWait(a0,a1,a2); }
static inline void CS970_API_PlaySound(int a) { extern void CS970__PlaySound(int a) __asm__("__PlaySound"); CS970__PlaySound(a); }
static inline int CS970_API_StartTask(void (*task)(void), unsigned int priority) { extern int CS970__StartTask(void (*)(void), unsigned int) __asm__("__StartTask"); return CS970__StartTask(task, priority); }
static inline int CS970_API_StopTask(void (*task)(void)) { extern int CS970__StopTask(void (*)(void)) __asm__("__StopTask"); return CS970__StopTask(task); }
static inline void CS970_API_WaitFrames(int a0) { extern void CS970__WaitFrames(int) __asm__("__WaitFrames"); CS970__WaitFrames(a0); }
#include "gba/io.h"
extern unsigned char *CS970_Field __asm__("iwram_3001e70");
extern int CS970_LaunchMode __asm__("gOvl_020097e8");
extern int CS970_Timer __asm__(".Lm970_17ec");
extern int CS970_MotionTimer __asm__(".Lm970_17f4");
extern int CS970_Impulse __asm__(".Lm970_17f8");
extern int CS970_Phase __asm__(".Lm970_17fc");
extern int CS970_SavedA __asm__(".Lm970_1804");
extern int CS970_SavedB __asm__(".Lm970_1808");
extern void OvlFunc_970_2008194(void);
extern void OvlFunc_970_2008430(void);
extern void CS970_Prepare(void) __asm__("__Func_808e118");
extern void CS970_Complete(void) __asm__("__Func_80b04c4");
static inline void CS970_WriteHalf(int value, volatile unsigned short *p) { *p = value; }
void OvlFunc_970_2008b34(void)
{
    unsigned char *field = CS970_Field;
    int i, moved;
    unsigned int bg;
    CS970_API_CutsceneStart();
    CS970_Prepare();
    CS970_API_MapActor_TravelToAnimWait(0, 0x138, 0xe8);
    CS970_API_Func_8092adc(0, 0xc000, 0);
    CS970_API_CutsceneWait(0x28);
    CS970_API_PlaySound(0x8c);
    for (i = 0; i <= 15; i++) {
        CS970_WriteHalf((i << 11) | (i << 5), (volatile unsigned short *)0x05000000);
        CS970_API_CutsceneWait(10);
    }
    CS970_WriteHalf(0x7e00, (volatile unsigned short *)0x05000000);
    {
    int lowAlpha = 0x810;
    int flashAlpha = 0x1010;
    for (i = 2; i >= 0; i--) {
        CS970_API_PlaySound(0xd4);
        CS970_WriteHalf(flashAlpha, &REG_BLDALPHA);
        CS970_API_CutsceneWait(3);
        CS970_WriteHalf(lowAlpha, &REG_BLDALPHA);
        CS970_API_CutsceneWait(0x41);
    }
    }
    CS970_LaunchMode = 1;
    CS970_Timer = 0;
    CS970_API_StartTask(OvlFunc_970_2008194, 0xc80);
    CS970_Impulse = 1;
    CS970_API_CutsceneWait(20);
    CS970_API_PlaySound(0xa3);
    CS970_API_Func_8012330(0x10000, 0x10000, 0x10000);
    CS970_API_CutsceneWait(0x3c);
    CS970_Impulse = 1;
    CS970_API_Func_8012330(0x20000, 0x20000, 0x10000);
    CS970_API_CutsceneWait(0x3c);
    CS970_API_Func_8012330(0x30000, 0x30000, 0x10000);
    CS970_MotionTimer = 0;
    CS970_API_StartTask(OvlFunc_970_2008168, 0xc80);
    moved = 0;
    do {
        *(int *)(field + 0x140) += 0x3333;
        *(int *)(field + 0x170) += 0x3333;
        moved += 0x3333;
        CS970_API_WaitFrames(1);
    } while (moved <= 0x59ffff);
    CS970_API_StopTask(OvlFunc_970_2008168);
    bg = REG_BG3CNT;
    CS970_Impulse = 0;
    bg = (bg & 0xfffc) | 3;
    CS970_WriteHalf(bg, &REG_BG3CNT);
    bg = (REG_BG2CNT & 0xfffc) | 3;
    CS970_WriteHalf(bg, &REG_BG2CNT);
    bg = (REG_BG1CNT & 0xfffc) | 2;
    CS970_LaunchMode = 0;
    CS970_WriteHalf(bg, &REG_BG1CNT);
    CS970_API_PlaySound(0x120);
    CS970_API_WaitFrames(1);
    CS970_API_PlaySound(0x91);
    CS970_WriteHalf(0xbf, &REG_BLDCNT);
    for (i = 0; i <= 16; i++) {
        REG_BLDY = i;
        CS970_API_CutsceneWait(1);
    }
    CS970_API_CutsceneWait(0x28);
    CS970_API_Func_8012330(-1, -1, 0xe666);
    CS970_SavedA = *(int *)(field + 0x140);
    CS970_SavedB = *(int *)(field + 0x170);
    CS970_Phase = 1;
    for (i = 16; i >= 0; i--) {
        REG_BLDY = i;
        CS970_API_CutsceneWait(8);
    }
    CS970_API_StartTask(OvlFunc_970_20080b0, 0xc80);
    CS970_API_PlaySound(0x50);
    CS970_Complete();
    CS970_API_CutsceneWait(20);
    CS970_API_CutsceneEnd();
    OvlFunc_970_2008430();
}
