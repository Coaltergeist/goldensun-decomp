extern unsigned char TunnelFirstMap[];
__asm__(".equ TunnelFirstMap, 0xac");
extern unsigned char TunnelSecondMap[];
__asm__(".equ TunnelSecondMap, 0xad");
extern unsigned char TunnelExitMap[];
__asm__(".equ TunnelExitMap, 0xb0");
extern unsigned char TunnelStoppedMovement[];
__asm__(".equ TunnelStoppedMovement, 0x0");
#include "api.h"

struct TunnelInitStateView { unsigned char prefix[0x1c0]; short map, room; unsigned char beforeDestination[0x7c]; unsigned short destinationMap, destinationRoom; };
struct TunnelInitFieldView { unsigned char prefix[0x1c0]; int transition; };
static inline void TunnelInitByte(unsigned char *p, int v) { *p = v; }
static inline void TunnelInitHalf(unsigned char *p, int v) { *(unsigned short *)p = v; }

int TunnelRuins_MapInit(void)
{
    extern void OvlFunc_964_2008e20(void);
    extern int OvlFunc_964_2008ec8(struct Actor *);
    extern unsigned int OvlFunc_964_2009a98(unsigned int);
    extern struct TunnelInitStateView TunnelInitState __asm__("gState");
    extern struct TunnelInitFieldView *TunnelInitField __asm__("iwram_3001ebc");
    extern void __Actor_SetSpriteFlags(void *, int);
    extern void __Func_8091494(struct Actor *);
    extern void __Func_8092950(int, int);
    extern unsigned char * __MapActor_GetActor(unsigned int);
    extern void OvlFunc_964_2009abc(int);
    extern void OvlFunc_964_2009fdc(void);
    extern void OvlFunc_964_200a3a0(void);
    extern void OvlFunc_964_200a410(void);
    extern void OvlFunc_964_200a480(void);
    extern void OvlFunc_964_200a52c(void);
    int savedX;
    int stoppedMovement;
    int currentRoom;
    int flagValue1;
    int flagValue2;
    int flagValue3;
    int flagValue4;
    int flagValue5;
    int flagValue6;
    int flagValue7;
    int flagValue8;
    int flagValue9;
    int flagValue10;
    int flagValue11;
    int flagValue12;
    int flagValue13;
    int flagValue14;
    int flagValue15;
    int flagValue16;
    unsigned char *actor;

    TunnelInitField->transition = 0x204;
    if (TunnelInitState.map == (int)TunnelFirstMap || TunnelInitState.map == (int)TunnelSecondMap) {
        __Func_8091494(0);
        TunnelInitState.destinationRoom = 1;
        TunnelInitState.destinationMap = (int)TunnelFirstMap;
    }
    if (TunnelInitState.map == (int)TunnelFirstMap) {
    switch (TunnelInitState.room) {
    case 1:
    case 2:
        flagValue1 = API_GetFlag(0x982);
        if (flagValue1 == 0) goto L964_2694;
        API_CopyMapTiles(0x79, 4, 0x4a, 9, 5, 8);
        API_CopyMapTiles(18, 0x53, 9, 0x49, 3, 2);
        API_CopyMapTiles(18, 0x51, 9, 0x4b, 3, 2);
        API_CopyMapTiles(18, 0x53, 9, 0x4d, 3, 2);
        API_CopyMapTiles(18, 0x53, 9, 0x4f, 3, 2);
        API_CopyMapTiles(18, 0x53, 11, 0x4e, 3, 2);
        API_CopyMapTiles(18, 0x53, 13, 0x4f, 3, 2);
        goto L964_2fda;
    L964_2694:;
        flagValue2 = API_GetFlag(0x983);
        if (flagValue2 != 0) goto L964_26a2;
        goto L964_2fda;
    L964_26a2:;
        API_CopyMapTiles(0x79, 13, 0x4a, 9, 5, 8);
        API_CopyMapTiles(18, 0x55, 11, 0x4a, 3, 2);
        API_CopyMapTiles(18, 0x53, 13, 0x4b, 3, 2);
        API_CopyMapTiles(18, 0x55, 11, 0x4c, 3, 2);
        API_CopyMapTiles(18, 0x53, 11, 0x4e, 3, 2);
        API_CopyMapTiles(18, 0x53, 13, 0x4f, 3, 2);
        goto L964_2fda;
    case 3:
    case 4:
        OvlFunc_964_200a3a0();
        actor = __MapActor_GetActor(8);
        actor += 0x55;
        TunnelInitByte(actor, 0);
        actor = __MapActor_GetActor(9);
        actor += 0x55;
        TunnelInitByte(actor, 0);
        actor = __MapActor_GetActor(8);
        __Actor_SetSpriteFlags(actor, 0);
        actor = __MapActor_GetActor(9);
        __Actor_SetSpriteFlags(actor, 0);
        actor = __MapActor_GetActor(8);
        *(int *)(actor + 0x6c) = (int)OvlFunc_964_2008ec8;
        actor = __MapActor_GetActor(9);
        *(int *)(actor + 0x6c) = (int)OvlFunc_964_2008ec8;
        API_StartTask(OvlFunc_964_2008e20, 0xc80);
        goto L964_2fda;
    case 5:
    case 6:
    case 7:
        flagValue3 = API_GetFlag(0x982);
        if (flagValue3 == 0) goto L964_276c;
        API_Func_80105d4(23, 17, 1, 2, 30, 8);
    L964_276c:;
        flagValue4 = API_GetFlag(0x983);
        if (flagValue4 != 0) goto L964_277a;
        goto L964_2fda;
    L964_277a:;
        API_Func_80105d4(23, 17, 1, 2, 0x20, 10);
        goto L964_2fda;
    case 8:
    case 9:
        OvlFunc_964_200a410();
        actor = __MapActor_GetActor(10);
        actor += 0x55;
        TunnelInitByte(actor, 0);
        actor = __MapActor_GetActor(11);
        actor += 0x55;
        TunnelInitByte(actor, 0);
        actor = __MapActor_GetActor(10);
        __Actor_SetSpriteFlags(actor, 0);
        actor = __MapActor_GetActor(11);
        __Actor_SetSpriteFlags(actor, 0);
        actor = __MapActor_GetActor(10);
        *(int *)(actor + 0x6c) = (int)OvlFunc_964_2008ec8;
        actor = __MapActor_GetActor(11);
        *(int *)(actor + 0x6c) = (int)OvlFunc_964_2008ec8;
        API_StartTask(OvlFunc_964_2008e20, 0xc80);
        goto L964_2fda;
    case 10:
    case 11:
        actor = __MapActor_GetActor(18);
        __Actor_SetSpriteFlags(actor, 0);
        actor = __MapActor_GetActor(19);
        __Actor_SetSpriteFlags(actor, 0);
        API_MapActor_SetAnim(18, 2);
        actor = __MapActor_GetActor(20);
        __Actor_SetSpriteFlags(actor, 0);
        actor = __MapActor_GetActor(21);
        __Actor_SetSpriteFlags(actor, 0);
        __Func_8092950(20, 15);
        __Func_8092950(21, 15);
        flagValue5 = API_GetFlag(0x971);
        if (flagValue5 == 0) goto L964_289c;
        API_CopyMapTiles(0x3b, 8, 0x31, 8, 1, 3);
        API_Func_8010704(0x33, 8, 1, 1, 0x31, 8);
        actor = __MapActor_GetActor(18);
        actor += 0x23;
        TunnelInitByte(actor, (2 | *actor));
        API_MapActor_SetAnim(18, 3);
        API_Func_8010704(0x2d, 4, 1, 1, 0x2e, 8);
        API_MapActor_SetPos(18, 0x2e80000, 0x880000);
        actor = __MapActor_GetActor(18);
        *(int *)(actor + 0xc) = 0xfff00000;
        API_MapActor_SetPos(20, 0x2e80000, 0x880000);
    L964_289c:;
        flagValue6 = API_GetFlag(0x200);
        if (flagValue6 == 0) goto L964_28b8;
        __Func_8092950(20, 0);
        API_MapActor_SetAnim(20, 5);
    L964_28b8:;
        flagValue7 = API_GetFlag(0x202);
        if (flagValue7 == 0) goto L964_28ca;
        API_MapActor_SetAnim(19, 2);
    L964_28ca:;
        flagValue8 = API_GetFlag(0x972);
        if (flagValue8 == 0) goto L964_2952;
        API_CopyMapTiles(0x3b, 8, 0x2d, 14, 1, 3);
        API_Func_8010704(0x33, 8, 1, 1, 0x2d, 14);
        actor = __MapActor_GetActor(19);
        actor += 0x23;
        TunnelInitByte(actor, (2 | *actor));
        API_MapActor_SetAnim(19, 3);
        API_Func_8010704(0x2d, 4, 1, 1, 0x30, 14);
        API_MapActor_SetPos(19, 0x3080000, 0xe80000);
        actor = __MapActor_GetActor(19);
        *(int *)(actor + 0xc) = 0xfff00000;
        API_MapActor_SetPos(21, 0x3080000, 0xe80000);
        API_SetFlag(0x202);
    L964_2952:;
        flagValue9 = API_GetFlag(0x201);
        if (flagValue9 != 0) goto L964_295e;
        goto L964_2fda;
    L964_295e:;
        __Func_8092950(21, 0);
        API_MapActor_SetAnim(21, 5);
        goto L964_2fda;
    case 12:
    case 13:
        OvlFunc_964_200a480();
        actor = __MapActor_GetActor(12);
        actor += 0x55;
        TunnelInitByte(actor, 0);
        actor = __MapActor_GetActor(13);
        actor += 0x55;
        TunnelInitByte(actor, 0);
        actor = __MapActor_GetActor(15);
        __Actor_SetSpriteFlags(actor, 0);
        actor = __MapActor_GetActor(16);
        __Actor_SetSpriteFlags(actor, 0);
        actor = __MapActor_GetActor(17);
        __Actor_SetSpriteFlags(actor, 0);
        actor = __MapActor_GetActor(12);
        __Actor_SetSpriteFlags(actor, 0);
        actor = __MapActor_GetActor(13);
        __Actor_SetSpriteFlags(actor, 0);
        actor = __MapActor_GetActor(14);
        __Actor_SetSpriteFlags(actor, 0);
        actor = __MapActor_GetActor(12);
        *(int *)(actor + 0x6c) = (int)OvlFunc_964_2008ec8;
        actor = __MapActor_GetActor(13);
        *(int *)(actor + 0x6c) = (int)OvlFunc_964_2008ec8;
        actor = __MapActor_GetActor(14);
        *(int *)(actor + 0x6c) = (int)OvlFunc_964_2008ec8;
        API_StartTask(OvlFunc_964_2008e20, 0xc80);
        goto L964_2fda;
    default: break;
    }
    } else {
    switch (TunnelInitState.room) {
    case 1:
    case 2:
    case 3:
        TunnelInitState.destinationRoom = 1;
        TunnelInitState.destinationMap = (int)TunnelExitMap;
        API_ClearFlag(0x12f);
        __Func_8092950(17, 6);
        __Func_8092950(18, 6);
        flagValue10 = API_GetFlag(0x974);
        if (flagValue10 == 0) goto L964_2ad0;
        API_MapActor_SetPos(17, 0x2d80000, 0x1380000);
    L964_2ad0:;
        flagValue11 = API_GetFlag(0x975);
        if (flagValue11 == 0) goto L964_2ae8;
        API_MapActor_SetPos(18, 0x2e80000, 0x1380000);
    L964_2ae8:;
        OvlFunc_964_200a52c();
        goto L964_2fda;
    case 6:
    case 7:
        API_Func_8092b08(8, 1);
        actor = __MapActor_GetActor(8);
        actor += 0x55;
        TunnelInitByte(actor, 0);
        actor = __MapActor_GetActor(8);
        __Actor_SetSpriteFlags(actor, 0);
        API_Func_8092b08(9, 1);
        __Func_8092950(9, 15);
        actor = __MapActor_GetActor(9);
        __Actor_SetSpriteFlags(actor, 0);
        actor = __MapActor_GetActor(9);
        actor += 0x55;
        TunnelInitByte(actor, 0);
        flagValue12 = API_GetFlag(0x204);
        if (flagValue12 != 0) goto L964_2b42;
        goto L964_2fda;
    L964_2b42:;
        __Func_8092950(9, 0);
        API_MapActor_SetAnim(9, 5);
        actor = __MapActor_GetActor(9);
        savedX = (int)(*(int *)(actor + 0x8));
        actor = __MapActor_GetActor(9);
        savedX >>= 20;
        API_Func_8010704(26, 8, 1, 1, savedX, (*(int *)(actor + 0x10) >> 20));
        actor = __MapActor_GetActor(9);
        *(int *)(actor + 0x6c) = (int)OvlFunc_964_2008ec8;
        actor = __MapActor_GetActor(8);
        *(int *)(actor + 0x6c) = (int)OvlFunc_964_2008ec8;
        goto L964_2fda;
    case 4:
    case 5:
        flagValue13 = API_GetFlag(0x109);
        if (flagValue13 == 0) {
        actor = __MapActor_GetActor(10);
        actor += 0x55;
        TunnelInitByte(actor, flagValue13);
        actor = __MapActor_GetActor(11);
        actor += 0x55;
        TunnelInitByte(actor, flagValue13);
        actor = __MapActor_GetActor(10);
        *(int *)(actor + 0xc) = 0xffd00000;
        actor = __MapActor_GetActor(11);
        *(int *)(actor + 0xc) = 0xffd00000;
        actor = __MapActor_GetActor(10);
        actor += 0x23;
        TunnelInitByte(actor, (*actor | 2));
        actor = __MapActor_GetActor(11);
        actor += 0x23;
        TunnelInitByte(actor, (*actor | 2));
        actor = __MapActor_GetActor(10);
        actor += 0x59;
        TunnelInitByte(actor, (0xfe & *actor));
        actor = __MapActor_GetActor(11);
        actor += 0x59;
        TunnelInitByte(actor, (0xfe & *actor));
        actor = __MapActor_GetActor(10);
        actor += 0x64;
        TunnelInitHalf(actor, 3);
        actor = __MapActor_GetActor(11);
        actor += 0x64;
        TunnelInitHalf(actor, 3);
        API_Func_8092b08(10, 1);
        API_Func_8092b08(11, 1);
        actor = __MapActor_GetActor(12);
        stoppedMovement = (int)TunnelStoppedMovement;
        actor += 0x55;
        TunnelInitByte(actor, stoppedMovement);
        actor = __MapActor_GetActor(13);
        actor += 0x55;
        TunnelInitByte(actor, stoppedMovement);
        actor = __MapActor_GetActor(14);
        actor += 0x55;
        TunnelInitByte(actor, stoppedMovement);
        actor = __MapActor_GetActor(12);
        __Actor_SetSpriteFlags(actor, 0);
        actor = __MapActor_GetActor(13);
        __Actor_SetSpriteFlags(actor, 0);
        actor = __MapActor_GetActor(14);

        __Actor_SetSpriteFlags(actor, 0);
        actor = __MapActor_GetActor(12);
        actor += 0x64;
        TunnelInitHalf(actor, flagValue13);
        actor = __MapActor_GetActor(13);
        actor += 0x64;
        TunnelInitHalf(actor, flagValue13);
        actor = __MapActor_GetActor(14);
        currentRoom = TunnelInitState.room;
        actor += 0x64;
        TunnelInitHalf(actor, flagValue13);
        if (currentRoom != 5) goto L964_2fda;
        actor = __MapActor_GetActor(10);
        *(int *)(actor + 0xc) = 0xffe00000;
        actor = __MapActor_GetActor(11);
        *(int *)(actor + 0xc) = 0xffc00000;
        actor = __MapActor_GetActor(10);
        actor += 0x64;
        TunnelInitHalf(actor, 2);
        actor = __MapActor_GetActor(11);
        actor += 0x64;
        TunnelInitHalf(actor, 4);
        API_MapActor_SetPos(12, 0xc80000, 0x980000);
        actor = __MapActor_GetActor(12);
        actor += 0x64;
        TunnelInitHalf(actor, 11);
        actor = __MapActor_GetActor(12);
        *(int *)(actor + 0x6c) = (int)OvlFunc_964_2009a98;
        actor = __MapActor_GetActor(12);
        actor += 0x23;
        TunnelInitByte(actor, (*actor | 2));
        API_MapActor_SetPos(13, 0xc80000, 0x980000);
        actor = __MapActor_GetActor(13);
        actor += 0x64;
        TunnelInitHalf(actor, 12);
        actor = __MapActor_GetActor(13);
        *(int *)(actor + 0x6c) = (int)OvlFunc_964_2009a98;
        actor = __MapActor_GetActor(13);
        actor += 0x23;
        TunnelInitByte(actor, (*actor | 2));
        API_MapActor_SetPos(14, 0x880000, 0x980000);
        actor = __MapActor_GetActor(14);
        actor += 0x64;
        TunnelInitHalf(actor, 10);
        actor = __MapActor_GetActor(14);
        *(int *)(actor + 0x6c) = (int)OvlFunc_964_2009a98;
        actor = __MapActor_GetActor(14);
        actor += 0x23;
        TunnelInitByte(actor, (*actor | 2));
        API_CutsceneWait(2);
        API_SetFlag(0x200);
        API_SetFlag(0x201);
        API_SetFlag(0x202);
        }
        OvlFunc_964_2009abc(0);
        goto L964_2fda;
    case 8:
    case 9:
    case 10:
    case 11:
        flagValue14 = API_GetFlag(0x982);
        if (flagValue14 == 0) goto L964_2dd0;
        API_Func_80105d4(10, 30, 1, 2, 16, 30);
    L964_2dd0:;
        flagValue15 = API_GetFlag(0x983);
        if (flagValue15 == 0) goto L964_2dee;
        API_Func_80105d4(10, 30, 1, 2, 22, 30);
    L964_2dee:;
        API_SetFlag(0x973);
        goto L964_2fda;
    case 12:
        API_Func_8010704(8, 0x31, 1, 1, 8, 0x71);
        OvlFunc_964_2009fdc();
        API_StartTask(OvlFunc_964_2008e20, 0xc80);
        goto L964_2fda;
    case 13:
    case 14:
        API_CutsceneWait(1);
        flagValue16 = API_GetFlag(0x984);
        if (flagValue16 == 0) goto L964_2e84;
        API_Func_80105d4(24, 0x3b, 1, 2, 0x20, 0x2e);
        API_MapActor_SetPos(19, 0x1980000, 0x3180000);
        API_MapActor_SetPos(20, 0x1780000, 0x3180000);
        API_MapActor_SetPos(21, 0x1980000, 0x2f80000);
        API_MapActor_SetPos(22, 0x1780000, 0x2f80000);
        API_MapActor_SetPos(23, 0x1880000, 0x3080000);
    L964_2e84:;
        actor = __MapActor_GetActor(19);
        actor += 0x55;
        TunnelInitByte(actor, (0xfe & *actor));
        actor = __MapActor_GetActor(20);
        actor += 0x55;
        TunnelInitByte(actor, (0xfe & *actor));
        actor = __MapActor_GetActor(21);
        actor += 0x55;
        TunnelInitByte(actor, (0xfe & *actor));
        actor = __MapActor_GetActor(22);
        actor += 0x55;
        TunnelInitByte(actor, (0xfe & *actor));
        actor = __MapActor_GetActor(23);
        actor += 0x55;
        TunnelInitByte(actor, (0xfe & *actor));
        __Func_8092950(19, 4);
        __Func_8092950(20, 1);
        __Func_8092950(21, 4);
        __Func_8092950(22, 10);
        __Func_8092950(23, 0);
        API_MapActor_SetAnim(19, 2);
        API_MapActor_SetAnim(23, 2);
        actor = __MapActor_GetActor(19);
        savedX = (int)(*(int *)(actor + 0x8));
        actor = __MapActor_GetActor(19);
        savedX >>= 20;
        API_Func_8010704(20, 0x38, 1, 1, savedX, (*(int *)(actor + 0x10) >> 20));
        actor = __MapActor_GetActor(20);
        savedX = (int)(*(int *)(actor + 0x8));
        actor = __MapActor_GetActor(20);
        savedX >>= 20;
        API_Func_8010704(20, 0x38, 1, 1, savedX, (*(int *)(actor + 0x10) >> 20));
        actor = __MapActor_GetActor(21);
        savedX = (int)(*(int *)(actor + 0x8));
        actor = __MapActor_GetActor(21);
        savedX >>= 20;
        API_Func_8010704(20, 0x38, 1, 1, savedX, (*(int *)(actor + 0x10) >> 20));
        actor = __MapActor_GetActor(22);
        savedX = (int)(*(int *)(actor + 0x8));
        actor = __MapActor_GetActor(22);
        savedX >>= 20;
        API_Func_8010704(20, 0x38, 1, 1, savedX, (*(int *)(actor + 0x10) >> 20));
        actor = __MapActor_GetActor(23);
        savedX = (int)(*(int *)(actor + 0x8));
        actor = __MapActor_GetActor(23);
        savedX >>= 20;
        API_Func_8010704(20, 0x38, 1, 1, savedX, (*(int *)(actor + 0x10) >> 20));
        goto L964_2fda;
    case 17:
        API_Func_8010704(0x31, 0x2b, 1, 1, 0x31, 0x6b);
        OvlFunc_964_2009fdc();
    case 0:
    case 15:
    case 16:
    default: break;
    }
    }
L964_2fda:;
    return 0;
}
