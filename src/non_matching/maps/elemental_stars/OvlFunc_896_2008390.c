#include "api.h"

extern unsigned char CS896_Message1075[] __asm__(".Lcs896_message1075");
__asm__(".equ .Lcs896_message1075, 0x1075");

void OvlFunc_896_2008390(void)
{
    extern unsigned char CS_896_5088[] __asm__(".Lm896_5088");
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern void __Func_800fe9c(void);
    extern void __Func_8010560(void *, int, int);
    extern void __Func_8019908(unsigned int, unsigned int);
    extern void OvlFunc_896_200c248(unsigned int, unsigned int);
    extern unsigned int OvlFunc_896_200c260(unsigned int, unsigned int, unsigned int, unsigned int);
    int flash;
    unsigned int flagValue1;

    API_CutsceneStart();
    API_PlaySound(0x8d);
    for (flash = 0; flash != 6; flash++) {
        API_Func_8091200(0x403a52, 1);
        API_Func_8091254(8);
        API_CutsceneWait(8);
        API_Func_8091200(0x10000, 1);
        API_Func_8091254(8);
        API_CutsceneWait(8);
        if (flash == 1) {
            API_Func_8012330(0x10000, 0x10000, 0x10000);
        }
    }
    API_Func_8012330(0x10000, 0x20000, 0x10000);
    API_CutsceneWait(30);
    API_Func_80933d4(0x26666, 0x4ccc);
    API_Func_80933f8(0x2980000, -1, 0x1f10000, 1);
    API_Func_8093530();
    API_CutsceneWait(20);
    API_Func_8012330(0x10000, 0x20000, 0x10000);
    API_PlaySound(0x90);
    __Func_8010560(CS_896_5088, 0x60, 29);
    API_Func_8010704(0, 0, 1, 1, 0x29, 29);
    API_CopyMapTiles(0x57, 0x2a, 0x29, 31, 1, 2);
    API_CutsceneWait(0x28);
    API_Func_8012330(0, 0, 0);
    API_Func_80933d4(0x66666, 0xcccc);
    API_Func_80933f8(0x1370000, -1, 0x1f10000, 1);
    API_Func_8093530();
    API_Func_8012330(0x10000, 0x20000, 0x10000);
    API_CutsceneWait(20);
    API_PlaySound(0x90);
    __Func_8010560(CS_896_5088, 0x4a, 29);
    API_Func_8010704(0, 0, 1, 1, 19, 29);
    API_CopyMapTiles(0x57, 0x2a, 19, 31, 1, 2);
    API_CutsceneWait(0x28);
    API_Func_8012330(0, 0, 0);
    API_Func_80933f8(0x2970000, -1, 0xc00000, 1);
    API_Func_8093530();
    API_Func_8012330(0x10000, 0x20000, 0x10000);
    API_CutsceneWait(20);
    API_PlaySound(0x90);
    __Func_8010560(CS_896_5088, 0x60, 10);
    API_Func_8010704(0, 0, 1, 1, 0x29, 10);
    API_CopyMapTiles(0x57, 0x2a, 0x29, 12, 1, 2);
    API_CutsceneWait(0x28);
    *(int *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1c0) = 0x202;
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_Func_80933f8(0x2c60000, -1, 0x1da0000, 0);
    __Func_800fe9c();
    API_WaitFrames(1);
    API_Func_8012330(0x20000, 0x10000, 0x10000);
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_CutsceneWait(0x28);
    API_PlaySound(0x121);
    API_Func_8012330(-1, -1, 0xe666);
    API_Func_8012350();
    API_CutsceneWait(20);
    API_CopyMapTiles(0, 0x28, 0x2b, 0x42, 3, 3);
    API_CutsceneWait(20);
    flagValue1 = OvlFunc_896_200c260(0xdc, 0x2c80000, 0x100000, 0x1d00000);
    API_CutsceneWait(0x28);
    __Func_8019908(flagValue1, 1);
    API_Func_801776c((int)CS896_Message1075, 1);
    API_Func_8092adc(9, 0x2000, 0);
    API_Func_8092adc(5, 0x2000, 20);
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_Func_80933f8(0x1ce0000, -1, 0x15e0000, 0);
    __Func_800fe9c();
    API_WaitFrames(1);
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_CutsceneWait(0x28);
    API_MapActor_Jump(9, 4, 30);
    API_MessageID((int)CS896_Message1075 - 1);
    OvlFunc_896_200c248(9, 20);
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_Func_80933f8(0x2c60000, -1, 0x1da0000, 0);
    __Func_800fe9c();
    API_WaitFrames(1);
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_SetFlag(0x83c);
    API_CutsceneEnd();
}
