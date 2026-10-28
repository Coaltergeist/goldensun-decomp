#include "api.h"

extern unsigned char CS896_Message1076[] __asm__(".Lcs896_message1076");
__asm__(".equ .Lcs896_message1076, 0x1076");

void OvlFunc_896_20086f4(void)
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
        API_Func_8091200(0x404a4e, 1);
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
    API_Func_8012330(0, 0, 0);
    API_Func_80933d4(0x59999, 0xb333);
    API_Func_80933f8(0x1d80000, -1, 0x620000, 1);
    API_Func_8093530();
    API_Func_8012330(0x10000, 0x20000, 0x10000);
    API_CutsceneWait(20);
    API_PlaySound(0x90);
    __Func_8010560(CS_896_5088, 0x54, 4);
    API_Func_8010704(0, 0, 1, 1, 29, 4);
    API_CopyMapTiles(0x57, 0x2a, 29, 6, 1, 2);
    API_CutsceneWait(0x28);
    API_Func_8012330(0, 0, 0);
    API_Func_80933f8(0x1570000, -1, 0x1710000, 1);
    API_Func_8093530();
    API_Func_8012330(0x10000, 0x20000, 0x10000);
    API_CutsceneWait(20);
    API_PlaySound(0x90);
    __Func_8010560(CS_896_5088, 0x4c, 21);
    API_Func_8010704(0, 0, 1, 1, 21, 21);
    API_CopyMapTiles(0x57, 0x2a, 21, 23, 1, 2);
    API_CutsceneWait(0x28);
    API_Func_8012330(0, 0, 0);
    API_Func_80933d4(0x33333, 0x6666);
    API_Func_80933f8(0x1570000, -1, 0x1f10000, 1);
    API_Func_8093530();
    API_Func_8012330(0x10000, 0x20000, 0x10000);
    API_CutsceneWait(20);
    API_PlaySound(0x90);
    __Func_8010560(CS_896_5088, 0x4c, 29);
    API_Func_8010704(0, 0, 1, 1, 21, 29);
    API_CopyMapTiles(0x57, 0x2a, 21, 31, 1, 2);
    API_CutsceneWait(0x28);
    *(int *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1c0) = 0x202;
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_Func_80933f8(0x2c80000, -1, 0x980000, 0);
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
    API_CopyMapTiles(0, 0x28, 0x2b, 0x2e, 3, 3);
    API_CutsceneWait(20);
    flagValue1 = OvlFunc_896_200c260(0xdd, 0x2c80000, 0x100000, 0x900000);
    API_CutsceneWait(0x28);
    __Func_8019908(flagValue1, 1);
    API_Func_801776c((int)CS896_Message1076, 1);
    API_Func_8092adc(9, 0xe000, 0);
    API_Func_8092adc(5, 0xe000, 20);
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_Func_80933f8(0x1ce0000, -1, 0x15e0000, 0);
    __Func_800fe9c();
    API_WaitFrames(1);
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_CutsceneWait(0x28);
    API_MapActor_Jump(9, 4, 30);
    API_MessageID((int)CS896_Message1076 - 2);
    OvlFunc_896_200c248(9, 20);
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_Func_80933f8(0x2c80000, -1, 0x980000, 0);
    __Func_800fe9c();
    API_WaitFrames(1);
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_SetFlag(0x83d);
    API_CutsceneEnd();
}
