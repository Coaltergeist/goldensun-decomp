#include "api.h"

struct MercurySprayData { int unk0, unk4, unk8, unkc, unk10, unk14; short unk18, reserved1a; int unk1c, unused20, unused24; };
static inline void MercurySprayHalf(short *p, int value) { *p = value; }

void OvlFunc_924_200af68(void)
{
    extern void OvlFunc_924_200adcc(void);
    extern void OvlFunc_924_200ae6c(int);
    struct MercurySprayData data;
    unsigned int i, j;
    unsigned int x1, z1, x2, z2, x3;
    int vx, vz2, vz3;
    extern unsigned int __Random(void);
    extern void OvlFunc_common0_10c(int,int,int,int,int,int,int,void *);
    extern void OvlFunc_924_200ae08(void);
    extern unsigned char MercurySprayScript[] __asm__(".Lm924_5e70");
    int flagValue1;
    unsigned char *actor;

    API_CutsceneStart();
    API_CutsceneWait(20);
    OvlFunc_924_200ae08();
    API_StopTask(OvlFunc_924_200adcc);
    API_CopyMapTiles(0x2d, 0x4d, 0x2d, 0x49, 9, 4);
    API_CutsceneWait(30);
    data.unk0 = 1;
    data.unk4 = 5;
    data.unk18 = 0x11e;
    data.unk1c = (int)MercurySprayScript;
    for (i = 0; i <= 15; i++) {
        if (i & 1) API_PlaySound(0xf6);
        x1 = __Random() * 48;
        x1 = (x1 >> 16) << 16;
        x1 += 0x3000000;
        z1 = __Random() * 56;
        z1 = (z1 >> 16) << 16;
        z1 += 0x880000;
        OvlFunc_common0_10c(x1, 0, z1, 0, 0, 0, 0x330001, &data);
        API_CutsceneWait(2);
    }
    API_CutsceneWait(40);
    for (i = 0; i <= 15; i++) {
        if (i & 1) API_PlaySound(0xf6);
        x2 = __Random() * 48;
        x2 = (x2 >> 16) << 16;
        x2 += 0x3000000;
        z2 = __Random() * 56;
        z2 = (z2 >> 16) << 16;
        z2 += 0x980000;
        vz2 = -(((__Random() * 10) >> 16) * 0x3333) - 0x3333;
        OvlFunc_common0_10c(x2, 0, z2, 0, 0, vz2, 0x330001, &data);
        API_CutsceneWait(2);
    }
    API_CutsceneWait(60);
    API_PlaySound(0x8d);
    API_Func_8012330(0x50000, 0x50000, 0x10000);
    API_CutsceneWait(60);
    data.unk4 = 7;
    data.unk8 = 0xb333;
    data.unkc = 0xb333;
    data.unk10 = 0x13333;
    data.unk14 = 0x13333;
    for (i = 0; i <= 3; i++) {
        API_CopyMapTiles(0x3b, 12 - i, 0x30, 12 - i, 3, 1);
        for (j = 0; j <= 31; j++) {
            x3 = __Random() * 48;
        x3 = (x3 >> 16) << 16;
        x3 += 0x3000000;
            vx = ((__Random() * 8) >> 16) * 0x1999 - 0x6664;
            vz3 = ((__Random() * 8) >> 16) * 0x1999;
            OvlFunc_common0_10c(x3, 0, ((-(j >> 1) - (i << 4)) << 16) + 0xc00000, vx, 0, vz3, 0xd0001, &data);
            API_CutsceneWait(2);
        }
    }
    API_PlaySound(0x121);
    API_Func_8012330(-1, -1, 0xe666);
    API_Func_8012350();
    API_MapActor_PlayPendingSound();
    API_CutsceneWait(30);
    flagValue1 = API_GetFlag(0x881);
    if (flagValue1 != 0) {
        API_MapActor_SetSpeed(0, 0xcccc, 0x6666);
        API_MapActor_TravelToAnimWait(0, 0x338, 0xe8);
        API_MapActor_TravelToAnimWait(0, 0x318, 0xe8);
        API_MapActor_TravelToAnimWait(0, 0x318, 0xd0);
        API_MapActor_SetSpeed(0, 0x20000, 0x10000);
        API_MapActor_Jump(0, 4, 0);
        API_MapActor_TravelToAnim(0, 0x318, 0xc8);
        API_CutsceneWait(10);
        API_MapActor_SetAnim(0, 18);
        OvlFunc_924_200ae6c(0);
        API_CutsceneWait(0x3c);
        API_StopTask(OvlFunc_924_200adcc);
        API_Func_8091220(0x10000, 0);
        API_Func_8091200(0x10005, 0);
        API_Func_8091254(0x78);
        API_CutsceneWait(0x78);
        API_Func_8091200(0x7fff, 0);
        API_Func_8091254(0x3c);
        API_CutsceneWait(0x3c);
        API_Func_8091e9c(9);
        API_CutsceneEnd();
    } else {
        API_MapActor_SetSpeed(0, 0xcccc, 0x6666);
        API_MapActor_SetSpeed(1, 0xcccc, 0x6666);
        API_MapActor_SetSpeed(2, 0xcccc, 0x6666);
        API_MapActor_SetSpeed(3, 0xcccc, 0x6666);
        API_MapActor_TravelToAnimWait(0, 0x338, 0xf0);
        API_Func_8092adc(0, 0xa000, 20);
        API_MapActor_SetPos(3, 0x3380000, 0xf00000);
        API_MapActor_TravelToAnimWait(3, 0x318, 0xe8);
        API_Func_8092adc(3, 0xc000, 0);
        API_CutsceneWait(0x3c);
        API_Func_8092adc(3, 0x2000, 20);
        API_MapActor_DoAnim(3, 3);
        API_CutsceneWait(0x28);
        API_Func_8092adc(3, 0xc000, 20);
        API_MapActor_TravelToAnimWait(3, 0x318, 0xc8);
        OvlFunc_924_200ae6c(3);
        API_CutsceneWait(20);
        API_Func_80925cc(0, 2);
        API_CutsceneWait(30);
        API_MapActor_TravelToAnimWait(0, 0x318, 0xe8);
        API_Func_8092adc(0, 0xc000, 0);
        API_MapActor_SetPos(1, 0x3180000, 0xe80000);
        API_MapActor_SetPos(2, 0x3180000, 0xe80000);
        API_MapActor_TravelToAnim(1, 0x330, 0xe0);
        API_MapActor_TravelToAnimWait(2, 0x300, 0xe0);
        API_MapActor_WaitMovement(1);
        API_Func_8092adc(1, 0xa000, 0);
        API_Func_8092adc(2, 0xe000, 20);
        API_MapActor_Emote(0, 0x102, 0);
        API_MapActor_Emote(1, 0x102, 0);
        API_MapActor_Emote(2, 0x102, 0x50);
        API_Func_8092adc(1, 0x6000, 0);
        API_Func_8092adc(2, 0x2000, 20);
        API_Func_80925cc(0, 1);
        API_CutsceneWait(0x3c);
        API_MapActor_SetSpeed(0, 0x8000, 0x4000);
        API_MapActor_TravelToAnimWait(0, 0x318, 0xe0);
        API_Func_8092adc(1, 0x8000, 0);
        API_Func_8092adc(2, 0, 0);
        API_MapActor_TravelToAnimWait(0, 0x318, 0xd0);
        API_Func_8092adc(1, 0xa000, 0);
        API_Func_8092adc(2, 0xe000, 20);
        API_MapActor_DoAnim(0, 3);
        API_CutsceneWait(20);
        API_MapActor_SetSpeed(0, 0x20000, 0x10000);
        API_MapActor_Jump(0, 4, 0);
        API_MapActor_TravelToAnim(0, 0x318, 0xc8);
        API_CutsceneWait(10);
        API_MapActor_SetAnim(0, 18);
        API_MapActor_Emote(1, 0x100, 0);
        API_MapActor_Emote(2, 0x100, 0);
        API_Func_809259c(1, 2);
        API_Func_809259c(2, 2);
        OvlFunc_924_200ae6c(0);
        API_CutsceneWait(0x3c);
        API_MapActor_Emote(1, 0x102, 0);
        API_MapActor_Emote(2, 0x102, 0x50);
        API_MapActor_TurnToFaceActor(1, 2, 20);
        API_MapActor_SetAnim(1, 3);
        API_MapActor_DoAnim(2, 3);
        API_CutsceneWait(0x28);
        API_MapActor_TravelToAnimWait(1, 0x318, 0xd8);
        API_Func_8092adc(2, 0xe000, 0);
        API_MapActor_TravelToAnimWait(1, 0x318, 0xc8);
        API_CutsceneWait(30);
        OvlFunc_924_200ae6c(1);
        API_MapActor_TravelToAnimWait(2, 0x318, 0xd8);
        API_MapActor_TravelToAnimWait(2, 0x318, 0xc8);
        API_CutsceneWait(30);
        OvlFunc_924_200ae6c(2);
        API_Func_8091220(0x10000, 0);
        API_StopTask(OvlFunc_924_200adcc);
        API_Func_8091200(0x10005, 0);
        API_Func_8091254(0x78);
        API_CutsceneWait(0x78);
        API_Func_8091200(0x7fff, 0);
        API_Func_8091254(0x3c);
        API_CutsceneWait(0x3c);
        API_CutsceneEnd();
        API_Func_8091e9c(8);
    }
}
