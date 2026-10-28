// fakematch
/* rom_78b2ac (overlay file 890): consolidated TU — sol_sanctum_1 map overlay. */

#include "nonmatching.h"
#include "actor.h"
#include "api.h"

INCLUDE_ASM("asm/maps/sol_sanctum_1/exports.s");

extern unsigned char gOvl_0200aafc[];

unsigned int SolSanctum1_GetEntrances(void) {
    return (unsigned int)gOvl_0200aafc;
}

unsigned int SolSanctum1_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200abec[];

void *SolSanctum1_GetExits(void) {
    return (void *)gOvl_0200abec;
}
extern unsigned char gScript_884__0200ac14[];

void *SolSanctum1_GetActors(void) {
    return (void *)gScript_884__0200ac14;
}
extern unsigned char gOvl_0200ad34[];

void *SolSanctum1_GetEvents(void) {
    return (void *)gOvl_0200ad34;
}

void OvlFunc_890_2008054(void)
{
    if (OvlFunc_890_200a5b0()) {
        if (!API_GetFlag(0x201)) {
            __CutsceneStart();
            __Func_8091200(0x2051cc, 1);
            __Func_8091254(0x14);
            API_SetFlag(0x201);
            API_ClearFlag(0x200);
            API_ClearFlag(0x202);
            if (!API_GetFlag(0x80a)) {
                OvlFunc_890_20089f4();
            }
            if (OvlFunc_890_200a5b0() && !API_GetFlag(0x811)) {
                OvlFunc_890_2009be8();
            }
            __CutsceneEnd();
        }
    } else {
        if (!API_GetFlag(0x200)) {
            __CutsceneStart();
            __Func_8091200(0x10000, 1);
            __Func_8091254(0x14);
            API_SetFlag(0x200);
            API_ClearFlag(0x201);
            API_ClearFlag(0x202);
            __CutsceneEnd();
        }
    }
}

void OvlFunc_890_2008108(void) {
	if (API_GetFlag(0x80 << 2) != 0) {
        return;
    }
	API_CutsceneStart();
	__Func_8091200(0x80 << 9, 1);
	__Func_8091254(0x14);
	API_SetFlag(0x80 << 2);
	API_ClearFlag(0x201);
	API_ClearFlag(0x202);
	API_CutsceneEnd();
}

void OvlFunc_890_2008150(void)
{
    if (OvlFunc_890_200a5b0()) {
        if (!API_GetFlag(0x200)) {
            __CutsceneStart();
            __Func_8091200(0x10000, 1);
            __Func_8091254(0x14);
            API_SetFlag(0x200);
            API_ClearFlag(0x201);
            API_ClearFlag(0x202);
            __CutsceneEnd();
        }
    } else {
        if (!API_GetFlag(0x201)) {
            __CutsceneStart();
            __Func_8091200(0x2051cc, 1);
            __Func_8091254(0x14);
            API_SetFlag(0x201);
            API_ClearFlag(0x200);
            API_ClearFlag(0x202);
            if (!API_GetFlag(0x80a)) {
                OvlFunc_890_20089f4();
            }
            __CutsceneEnd();
        }
    }
}

void OvlFunc_890_20081ec(void) {
	if (API_GetFlag(0x202) != 0) {
        return;
    }
	API_Func_8091200(0x202db1, 1);
	__Func_8091254(0x14);
	API_SetFlag(0x202);
	API_ClearFlag(0x80 << 2);
	API_ClearFlag(0x201);
}

/* OvlFunc_890_200822c: clears the first palette RAM entry. */

void OvlFunc_890_200822c(void) {
    unsigned short v = 0;
    volatile unsigned short *p = (volatile unsigned short *)0x05000000;
    *p = v;
}

void OvlFunc_890_2008238(void)
{
    if (API_GetFlag(0x80b)) {
        API_CopyMapTiles(0x2d, 0x1c, 0x22, 0xa, 2, 1);
    }
    if (API_GetFlag(0x80c)) {
        API_CopyMapTiles(0x2f, 0x1c, 0x24, 0xa, 2, 1);
    }
    if (API_GetFlag(0x80d)) {
        API_CopyMapTiles(0x2d, 0x1d, 0x22, 0xb, 2, 1);
    }
    if (API_GetFlag(0x80e)) {
        API_CopyMapTiles(0x2f, 0x1d, 0x24, 0xb, 2, 1);
    }
}

void OvlFunc_890_20082cc(void)
{
    if (API_GetFlag(0x826)) {
        API_CopyMapTiles(0x2d, 0x1c, 0x22, 0xa, 2, 1);
    }
    if (API_GetFlag(0x827)) {
        API_CopyMapTiles(0x2f, 0x1c, 0x24, 0xa, 2, 1);
    }
    if (API_GetFlag(0x828)) {
        API_CopyMapTiles(0x2d, 0x1d, 0x22, 0xb, 2, 1);
    }
    if (API_GetFlag(0x829)) {
        API_CopyMapTiles(0x2f, 0x1d, 0x24, 0xb, 2, 1);
    }
}

void OvlFunc_890_2008360(void)
{
    if (API_GetFlag(0x80b)) {
        API_CopyMapTiles(0x2d, 0x1e, 0x22, 0xa, 2, 1);
    }
    if (API_GetFlag(0x80c)) {
        API_CopyMapTiles(0x2f, 0x1e, 0x24, 0xa, 2, 1);
    }
    if (API_GetFlag(0x80d)) {
        API_CopyMapTiles(0x2d, 0x1f, 0x22, 0xb, 2, 1);
    }
    if (API_GetFlag(0x80e)) {
        API_CopyMapTiles(0x2f, 0x1f, 0x24, 0xb, 2, 1);
    }
}

void OvlFunc_890_20083f4(void)
{
    if (API_GetFlag(0x826)) {
        API_CopyMapTiles(0x2d, 0x1e, 0x22, 0xa, 2, 1);
    }
    if (API_GetFlag(0x827)) {
        API_CopyMapTiles(0x2f, 0x1e, 0x24, 0xa, 2, 1);
    }
    if (API_GetFlag(0x828)) {
        API_CopyMapTiles(0x2d, 0x1f, 0x22, 0xb, 2, 1);
    }
    if (API_GetFlag(0x829)) {
        API_CopyMapTiles(0x2f, 0x1f, 0x24, 0xb, 2, 1);
    }
}


void OvlFunc_890_2008488(void)
{
    extern unsigned char _MSG_ff0[];
    extern int __Func_8091c7c(int, int);
    extern void * __MapActor_GetActor(int);
    extern void OvlFunc_890_2008054(void);
    extern void OvlFunc_890_200a5fc(unsigned int, unsigned int);
    extern int __ShowActorMessage_NoWait(int, int);
    int flagValue1;
    int flagValue2;
    int choice3;
    unsigned char *actor;

    flagValue1 = API_GetFlag(0x814);
    if (flagValue1 != 0) {
        OvlFunc_890_2008054();
    }
    flagValue2 = API_GetFlag(0x809);
    if (flagValue2 == 0) {
        API_CutsceneStart();
        API_MessageID(0xfe3);
        API_PlaySound(17);
        API_MapActor_SetSpeed(0, 0x10000, 0x8000);
        API_MapActor_TravelToAnimWait(0, 0x120, 0xe8);
        API_MapActor_SetAnim(0, 0);
        API_CutsceneWait(20);
        API_PlaySound(21);
        API_Func_8092adc(0, 0xc000, 0);
        actor = __MapActor_GetActor(0);
        if (actor != 0) {
            API_MapActor_SetPos(16, *(int *)(actor + 0x8), *(int *)(actor + 0x10));
        }
        API_MapActor_SetSpeed(16, 0x16666, 0xb333);
        API_MapActor_TravelToAnimWait(16, 0x120, 0xce);
        API_CutsceneWait(0x28);
        API_MapActor_Emote(16, 0x100, 0);
        API_MapActor_Jump(16, 4, 0x3c);
        OvlFunc_890_200a5fc(16, 20);
        actor = __MapActor_GetActor(0);
        if (actor != 0) {
            API_MapActor_SetPos(1, *(int *)(actor + 0x8), *(int *)(actor + 0x10));
        }
        actor = __MapActor_GetActor(0);
        if (actor != 0) {
            API_MapActor_SetPos(5, *(int *)(actor + 0x8), *(int *)(actor + 0x10));
        }
        API_MapActor_SetSpeed(1, 0x8000, 0x4000);
        API_MapActor_SetSpeed(5, 0x8000, 0x4000);
        API_MapActor_TravelToAnim(1, 0x118, 0xf8);
        API_MapActor_TravelToAnimWait(5, 0x128, 0xf8);
        API_MapActor_SetAnim(1, 1);
        API_Func_8092adc(1, 0xd000, 0);
        API_Func_8092adc(5, 0xb000, 30);
        API_Func_80933d4(0x9999, 0x1333);
        API_Func_80933f8(0x1200000, -1, 0xd50000, 1);
        API_MapActor_SetSpeed(16, 0x6666, 0x3333);
        API_MapActor_TravelToAnimWait(16, 0x120, 0xb0);
        API_CutsceneWait(0x28);
        API_Func_80925cc(16, 2);
        OvlFunc_890_200a5fc(16, 6);
        API_Func_8092adc(16, 0x4000, 0x3c);
        OvlFunc_890_200a5fc(16, 20);
        API_Func_8092adc(16, 0, 0x28);
        API_MapActor_DoAnim(16, 3);
        API_CutsceneWait(10);
        API_Func_8092adc(16, 0x8000, 0x28);
        API_MapActor_DoAnim(16, 3);
        API_CutsceneWait(20);
        API_Func_80925cc(5, 2);
        API_Func_8092adc(5, 0x9000, 10);
        OvlFunc_890_200a5fc(5, 10);
        API_Func_80925cc(1, 2);
        API_Func_8092adc(1, 0xf000, 10);
        OvlFunc_890_200a5fc(1, 6);
        API_MapActor_Surprise(5, 0x102);
        API_CutsceneWait(0x28);
        API_Func_8092adc(5, 0xa000, 10);
        OvlFunc_890_200a5fc(0x2005, 10);
        API_Func_80925cc(16, 2);
        API_CutsceneWait(10);
        API_Func_8092adc(16, 0xa000, 20);
        API_MapActor_Surprise(16, 0x102);
        API_CutsceneWait(20);
        API_Func_8092adc(0, 0x5000, 0x28);
        API_Func_8092adc(0, 0xc000, 0);
        API_Func_8092adc(1, 0xe000, 0);
        API_Func_8092adc(5, 0xa000, 0x28);
        API_MapActor_Emote(1, 0x101, 20);
        API_ActorMessage(1, 0);
        API_CutsceneWait(0x3c);
        API_MapActor_DoAnim(16, 4);
        API_CutsceneWait(0x28);
        OvlFunc_890_200a5fc(16, 20);
        API_MapActor_Emote(5, 0x101, 0x28);
        OvlFunc_890_200a5fc(5, 0x3c);
        API_MapActor_DoAnim(16, 3);
        OvlFunc_890_200a5fc(16, 10);
        API_MapActor_Emote(0, 0x105, 0);
        API_MapActor_Emote(1, 0x105, 0);
        API_MapActor_Emote(5, 0x105, 0x3c);
        API_Func_80925cc(1, 2);
        API_CutsceneWait(20);
        OvlFunc_890_200a5fc(1, 10);
        API_MapActor_DoAnim(16, 3);
        API_CutsceneWait(20);
        API_MapActor_Emote(0, 0x102, 0);
        API_MapActor_Emote(1, 0x102, 0);
        API_MapActor_Emote(5, 0x102, 0x50);
        API_MapActor_Emote(16, 0x105, 0x50);
        OvlFunc_890_200a5fc(16, 6);
        API_Func_8092adc(0, 0x4000, 0);
        API_Func_8092adc(1, 0xf000, 0);
        API_Func_8092adc(5, 0x9000, 0x3c);
        API_Func_8092adc(16, 0x4000, 10);
        API_Func_80925cc(16, 3);
        API_CutsceneWait(6);
        __ShowActorMessage_NoWait(16, 0);
        choice3 = __Func_8091c7c(0, 0);
        if (choice3 == 0) {
            API_MessageID((int)_MSG_ff0);
        } else {
            API_MessageID(0xff1);
            API_MapActor_Emote(16, 0x107, 20);
        }
        API_MapActor_Jump(16, 4, 20);
        API_Func_8092adc(0, 0xc000, 0);
        API_Func_8092adc(1, 0xe000, 0);
        API_Func_8092adc(5, 0xa000, 0);
        OvlFunc_890_200a5fc(16, 6);
        API_MessageID(0xff2);
        API_CutsceneWait(30);
        API_MapActor_DoAnim(5, 4);
        OvlFunc_890_200a5fc(0x2005, 6);
        API_MapActor_DoAnim(1, 3);
        OvlFunc_890_200a5fc(1, 20);
        API_MapActor_Jump(16, 6, 20);
        API_MapActor_Emote(16, 0x104, 20);
        OvlFunc_890_200a5fc(16, 30);
        API_MapActor_SetAnim(0, 3);
        API_MapActor_SetAnim(1, 3);
        API_MapActor_DoAnim(5, 3);
        API_CutsceneWait(20);
        API_MapActor_DoAnim(16, 3);
        OvlFunc_890_200a5fc(16, 6);
        API_MapActor_SetSpeed(1, 0x10000, 0x8000);
        API_MapActor_SetSpeed(5, 0x10000, 0x8000);
        API_MapActor_SetSpeed(16, 0x20000, 0x10000);
        API_MapActor_SetAnim(16, 2);
        actor = __MapActor_GetActor(0);
        if (actor != 0) {
            API_MapActor_TravelTo(16, *(short *)(actor + 0xa), *(short *)(actor + 0x12));
        }
        API_MapActor_WaitMovement(16);
        API_MapActor_SetPos(16, 0, 0);
        API_MapActor_SetAnim(1, 2);
        actor = __MapActor_GetActor(0);
        if (actor != 0) {
            API_MapActor_TravelTo(1, *(short *)(actor + 0xa), *(short *)(actor + 0x12));
        }
        API_MapActor_WaitMovement(1);
        API_MapActor_SetPos(1, 0, 0);
        API_MapActor_SetAnim(5, 2);
        actor = __MapActor_GetActor(0);
        if (actor != 0) {
            API_MapActor_TravelTo(5, *(short *)(actor + 0xa), *(short *)(actor + 0x12));
        }
        API_MapActor_WaitMovement(5);
        API_MapActor_SetPos(5, 0, 0);
        API_SetFlag(0x144);
        API_SetFlag(0x809);
        API_CutsceneEnd();
    }
}
INCLUDE_ASM("asm/maps/sol_sanctum_1/OvlFunc_890_20089f4.s");
extern void *__MapActor_GetActor(int);
extern unsigned char _MSG_1000[];

void OvlFunc_890_2008c00(void)
{
    unsigned char *mover;
    unsigned char *leader;

    mover = (unsigned char *)__MapActor_GetActor(0x10);

    if (!API_GetFlag(0x809)) {
        return;
    }
    if (API_GetFlag(0x814)) {
        OvlFunc_890_2008108();
        return;
    }
    if (API_GetFlag(0x819)) {
        return;
    }

    API_CutsceneStart();
    API_MapActor_SetAnim(0, 0);
    API_MessageID((int)_MSG_1000);

    if (API_GetFlag(0x810) || !API_GetFlag(0x80a)) {
        leader = (unsigned char *)__MapActor_GetActor(0);
        if (leader != 0) {
            API_MapActor_SetPos(0x10, *(int *)(leader + 0x8), *(int *)(leader + 0x10));
        }
        API_CutsceneWait(4);
        API_MapActor_SetSpeed(0x10, 0x80 << 9, 0x80 << 8);
    } else if (API_GetFlag(0x810) || *(int *)(mover + 0x8) > (0xaa << 17)) {
        API_MapActor_SetPos(0x10, 0xc4 << 17, 0xa8 << 16);
        API_CutsceneWait(4);
        API_MapActor_SetSpeed(0x10, 0x80 << 10, 0x80 << 9);
    }

    if (API_GetFlag(0x810) || *(int *)(mover + 0x8) > (0xaa << 17)) {
        API_MapActor_TravelToAnimWait(0x10, 0x90 << 1, 0xe8);
    } else {
        API_GetFlag(0x80a);
    }

    API_MapActor_TravelToAnimWait(0x10, 0x90 << 1, 0xe8);
    API_Func_8092adc(0, 0xc0 << 8, 0);
    API_Func_8092adc(0x10, 0x80 << 7, 0xa);
    API_ActorMessage_Wait(0x10, 0, 0xa);
    API_MapActor_DoAnim(0, 3);

    if (API_GetFlag(0x810) || !API_GetFlag(0x80a)) {
        API_MapActor_SetAnim(0x10, 2);
        leader = (unsigned char *)__MapActor_GetActor(0);
        if (leader != 0) {
            API_MapActor_TravelTo(0x10, *(short *)(leader + 0xa), *(short *)(leader + 0x12));
        }
        API_MapActor_WaitMovement(0x10);
        API_MapActor_SetPos(0x10, 0, 0);
        API_MapActor_TravelToAnimWait(0, 0x90 << 1, 0xe8);
    } else {
        API_MapActor_TravelToAnimWait(0, 0x90 << 1, 0xf8);
    }

    API_CutsceneEnd();
}
extern unsigned char Lm890_2de8[] __asm__(".Lm890_2de8");
int  __Random(void);
void __PlaySound(int sound);
void __CopyMapTiles(int a, int b, int c, int d, int e, int f);
void __Func_8012330(int a, int b, int c);

extern unsigned char Lm890_2de4[] __asm__(".Lm890_2de4");

static inline int *ApplySanctumEffectPhase(int *phase)
{
    if (*phase == 2) {
        API_Func_8012330(0x10000, 0x10000, 0x10000);
    } else if (*phase == 1) {
        API_Func_8012330(-1, -1, 0xe666);
    }
    return phase;
}

void OvlFunc_890_2008d9c(void)
{
    unsigned int r;
    unsigned short *p;
    int v;
    unsigned short five;

    r = __Random();
    if ((r & 3) == 0) {
        goto eaa;
    }

    p = (unsigned short *)Lm890_2de4;
    v = *p;
    switch (v) {
    case 0:
        __PlaySound(0xbb);
        {
            unsigned short t1 = 1;
            unsigned short t2 = 5;
            __CopyMapTiles(0x2e, 0x3b, 0x1e, 0x21, t1, t2);
        }
        goto end;
    case 1:
        __CopyMapTiles(0x2e, 0x3b, 0x1e, 0x21, v, v);
        five = 5;
        __CopyMapTiles(0x2e, 0x3b, 0x1e, 0x22, v, five);
        goto end;
    case 2:
        v = 1;
        __CopyMapTiles(0x2e, 0x3b, 0x1e, 0x22, v, v);
        five = 5;
        __CopyMapTiles(0x2e, 0x3b, 0x1e, 0x23, v, five);
        goto end;
    case 3:
        v = 1;
        __CopyMapTiles(0x2e, 0x3b, 0x1e, 0x23, v, v);
        five = 5;
        __CopyMapTiles(0x2e, 0x3b, 0x1e, 0x24, v, five);
        goto end;
    case 4:
        *(int *)Lm890_2de8 = 2;
        v = 1;
        __CopyMapTiles(0x2e, 0x3b, 0x1e, 0x24, v, v);
        five = 5;
        __CopyMapTiles(0x2e, 0x3b, 0x1e, 0x25, v, five);
        goto end;
    case 0x50:
        {
            unsigned short t1 = 1;
            unsigned short t2 = 10;
            __CopyMapTiles(0x2e, 0x31, 0x1e, 0x21, t1, t2);
        }
        goto end;
    default:
        goto end;
    }

end:
    *p = *p + 1;
    v = *p;
    r = __Random();
    if ((unsigned int)v > (r * 40 >> 16) + 90) {
        *p = 0;
    }

eaa:
    {
        int *ctr = (int *)Lm890_2de8;
        if (*ctr != 0) {
            ctr = ApplySanctumEffectPhase(ctr);
            *ctr = *ctr - 1;
        }
    }
}
int  __Random(void);
void __PlaySound(int sound);
void __CopyMapTiles(int a, int b, int c, int d, int e, int f);

extern unsigned char Lm890_2ddc[] __asm__(".Lm890_2ddc");

void OvlFunc_890_2008ef8(void)
{
    unsigned int r;
    unsigned short *p;
    int v;
    unsigned short five;

    r = __Random();
    if ((r & 3) == 0) {
        return;
    }

    p = (unsigned short *)Lm890_2ddc;
    v = *p;
    switch (v) {
    case 0:
        __PlaySound(0xbb);
        {
            unsigned short t1 = 1;
            unsigned short t2 = 5;
            __CopyMapTiles(0x2f, 0x3b, 0x2a, 0x21, t1, t2);
        }
        goto end;
    case 1:
        __CopyMapTiles(0x2f, 0x3b, 0x2a, 0x21, v, v);
        five = 5;
        __CopyMapTiles(0x2f, 0x3b, 0x2a, 0x22, v, five);
        goto end;
    case 2:
        v = 1;
        __CopyMapTiles(0x2f, 0x3b, 0x2a, 0x22, v, v);
        five = 5;
        __CopyMapTiles(0x2f, 0x3b, 0x2a, 0x23, v, five);
        goto end;
    case 3:
        v = 1;
        __CopyMapTiles(0x2f, 0x3b, 0x2a, 0x23, v, v);
        five = 5;
        __CopyMapTiles(0x2f, 0x3b, 0x2a, 0x24, v, five);
        goto end;
    case 4:
        *(int *)Lm890_2de8 = 2;
        v = 1;
        __CopyMapTiles(0x2f, 0x3b, 0x2a, 0x24, v, v);
        five = 5;
        __CopyMapTiles(0x2f, 0x3b, 0x2a, 0x25, v, five);
        goto end;
    case 0x5a:
        {
            unsigned short t1 = 1;
            unsigned short t2 = 10;
            __CopyMapTiles(0x2f, 0x31, 0x2a, 0x21, t1, t2);
        }
        goto end;
    default:
        goto end;
    }

end:
    *p = *p + 1;
    v = *p;
    r = __Random();
    if ((unsigned int)v > (r * 40 >> 16) + 100) {
        *p = 0;
    }
}
/* As OvlFunc_890_2008ef8, with its own constants and .Lm890_2de0. */
int  __Random(void);
void __PlaySound(int sound);
void __CopyMapTiles(int a, int b, int c, int d, int e, int f);

extern unsigned char Lm890_2de0[] __asm__(".Lm890_2de0");
void OvlFunc_890_200901c(void)
{
    unsigned int r;
    unsigned short *p;
    int v;
    unsigned short five;

    r = __Random();
    if ((r & 3) == 0) {
        return;
    }

    p = (unsigned short *)Lm890_2de0;
    v = *p;
    switch (v) {
    case 0:
        __PlaySound(0xbb);
        {
            unsigned short t1 = 1;
            unsigned short t2 = 5;
            __CopyMapTiles(0x30, 0x3b, 0x1f, 0x24, t1, t2);
        }
        goto end;
    case 1:
        __CopyMapTiles(0x30, 0x3b, 0x1f, 0x24, v, v);
        five = 5;
        __CopyMapTiles(0x30, 0x3b, 0x1f, 0x25, v, five);
        goto end;
    case 2:
        v = 1;
        __CopyMapTiles(0x30, 0x3b, 0x1f, 0x25, v, v);
        five = 5;
        __CopyMapTiles(0x30, 0x3b, 0x1f, 0x26, v, five);
        goto end;
    case 3:
        v = 1;
        __CopyMapTiles(0x30, 0x3b, 0x1f, 0x26, v, v);
        five = 5;
        __CopyMapTiles(0x30, 0x3b, 0x1f, 0x27, v, five);
        goto end;
    case 4:
        *(int *)Lm890_2de8 = 2;
        v = 1;
        __CopyMapTiles(0x30, 0x3b, 0x1f, 0x27, v, v);
        five = 5;
        __CopyMapTiles(0x30, 0x3b, 0x1f, 0x28, v, five);
        goto end;
    case 0x5f:
        {
            unsigned short t1 = 1;
            unsigned short t2 = 10;
            __CopyMapTiles(0x30, 0x31, 0x1f, 0x24, t1, t2);
        }
        goto end;
    default:
        goto end;
    }

end:
    *p = *p + 1;
    v = *p;
    r = __Random();
    if ((unsigned int)v > (r * 40 >> 16) + 105) {
        *p = 0;
    }
}
/* As OvlFunc_890_2008ef8, with its own constants and .Lm890_2dec. */
int  __Random(void);
void __PlaySound(int sound);
void __CopyMapTiles(int a, int b, int c, int d, int e, int f);

extern unsigned char Lm890_2dec[] __asm__(".Lm890_2dec");
void OvlFunc_890_2009140(void)
{
    unsigned int r;
    unsigned short *p;
    int v;
    unsigned short five;

    r = __Random();
    if ((r & 3) == 0) {
        return;
    }

    p = (unsigned short *)Lm890_2dec;
    v = *p;
    switch (v) {
    case 0:
        __PlaySound(0xbb);
        {
            unsigned short t1 = 1;
            unsigned short t2 = 5;
            __CopyMapTiles(0x2e, 0x3b, 0x29, 0x24, t1, t2);
        }
        goto end;
    case 1:
        __CopyMapTiles(0x2e, 0x3b, 0x29, 0x24, v, v);
        five = 5;
        __CopyMapTiles(0x2e, 0x3b, 0x29, 0x25, v, five);
        goto end;
    case 2:
        v = 1;
        __CopyMapTiles(0x2e, 0x3b, 0x29, 0x25, v, v);
        five = 5;
        __CopyMapTiles(0x2e, 0x3b, 0x29, 0x26, v, five);
        goto end;
    case 3:
        v = 1;
        __CopyMapTiles(0x2e, 0x3b, 0x29, 0x26, v, v);
        five = 5;
        __CopyMapTiles(0x2e, 0x3b, 0x29, 0x27, v, five);
        goto end;
    case 4:
        *(int *)Lm890_2de8 = 2;
        v = 1;
        __CopyMapTiles(0x2e, 0x3b, 0x29, 0x27, v, v);
        five = 5;
        __CopyMapTiles(0x2e, 0x3b, 0x29, 0x28, v, five);
        goto end;
    case 0x55:
        {
            unsigned short t1 = 1;
            unsigned short t2 = 10;
            __CopyMapTiles(0x2e, 0x31, 0x29, 0x24, t1, t2);
        }
        goto end;
    default:
        goto end;
    }

end:
    *p = *p + 1;
    v = *p;
    r = __Random();
    if ((unsigned int)v > (r * 40 >> 16) + 95) {
        *p = 0;
    }
}
extern void __CutsceneWait(unsigned int arg0);
typedef struct {
    unsigned char _pad0[0x1c0];
    int transition;
    unsigned char _pad1[4];
    int transitionSpeed;
} MapState;

extern MapState *iwram_3001ebc;

void __Func_80933f8(int, int, int, int);
void __Func_800fe9c(void);
void __MapActor_SetPos(int, int, int);
void __WaitFrames(int);
void __Func_8091200(int, int);
void __Func_8091254(int);
void __SetFlag(int);
void __ClearFlag(int);
void __MapTransitionIn(void);
void __WaitMapTransition(void);
void OvlFunc_890_2009264(void)
{
    MapState *map;

    API_Func_80933f8(-1, -1, -1, 0);
    __CopyMapTiles(0x1e, 0x2b, 0x20, 0x28, 8, 3);
    __CopyMapTiles(0x1e, 0x2b, 0x21, 0x27, 8, 1);
    __CopyMapTiles(0x1e, 0x2b, 0x24, 0x26, 3, 3);
    __CopyMapTiles(0xe, 0x29, 0x20, 0x29, 8, 4);
    API_Func_80933f8(0x23e0000, -1, 0x9e << 16, 0);
    __Func_800fe9c();
    API_MapActor_SetPos(0x10, 0x23e0000, 0xf0 << 15);
    API_MapActor_SetPos(0, 0, 0);
    __WaitFrames(1);
    API_Func_8091200(0x2051cc, 1);
    __Func_8091254(0x14);
    __SetFlag(0x201);
    __ClearFlag(0x200);
    __ClearFlag(0x202);
    map = iwram_3001ebc;
    map->transition = 0x100;
    map->transitionSpeed = 0x20;
    __MapTransitionIn();
    __WaitMapTransition();
    __CutsceneWait(0x28);
    __PlaySound(0xab);
    API_Func_8091200(0x10005, 1);
    __Func_8091254(8);
    __CutsceneWait(0x20);
    API_Func_8091200(0x2051cc, 1);
    __Func_8091254(0x18);
}


extern void OvlFunc_890_2008238(void);
extern void OvlFunc_890_2008360(void);
extern void OvlFunc_890_200a5fc(unsigned int arg0, unsigned int arg1);

void OvlFunc_890_2009380(void) {
    int i;
    MapState *map;

    API_CutsceneStart();
    OvlFunc_890_2009264();
    API_MessageID(0x1018);
    API_Func_8092adc(0x10, 0x80 << 7, 0x14);
    API_MapActor_Emote(0x10, 0x80 << 1, 0);
    API_MapActor_Jump(0x10, 6, 0x1e);
    API_Func_80933f8(0x23e0000, -1, 0xae << 16, 1);
    API_Func_8093530();
    API_CutsceneWait(0x1e);
    OvlFunc_890_200a5fc(0x8010, 0x14);

    i = 0;
    do {
        API_PlaySound(0xf6);
        OvlFunc_890_2008238();
        API_CutsceneWait(12);
        API_PlaySound(0xf6);
        i++;
        OvlFunc_890_2008360();
        API_CutsceneWait(12);
    } while (i != 4);

    i = 0;
    do {
        API_PlaySound(0xf6);
        OvlFunc_890_2008238();
        API_CutsceneWait(8);
        API_PlaySound(0xf6);
        i++;
        OvlFunc_890_2008360();
        API_CutsceneWait(8);
    } while (i != 6);

    i = 0;
    do {
        API_PlaySound(0xf6);
        OvlFunc_890_2008238();
        API_CutsceneWait(6);
        API_PlaySound(0xf6);
        i++;
        OvlFunc_890_2008360();
        API_CutsceneWait(6);
    } while (i != 8);

    i = 0;
    do {
        API_PlaySound(0xf6);
        OvlFunc_890_2008238();
        API_CutsceneWait(4);
        API_PlaySound(0xf6);
        i++;
        OvlFunc_890_2008360();
        API_CutsceneWait(4);
    } while (i != 10);

    i = 0;
    do {
        API_PlaySound(0xf6);
        OvlFunc_890_2008238();
        API_CutsceneWait(2);
        API_PlaySound(0xf6);
        i++;
        OvlFunc_890_2008360();
        API_CutsceneWait(2);
    } while (i != 12);

    OvlFunc_890_2008238();
    API_CutsceneWait(6);
    OvlFunc_890_200a5fc(0x8010, 6);
    API_MapActor_SetSpeed(0x10, 0x80 << 10, 0x80 << 9);
    API_MapActor_TravelToAnimWait(0x10, 0x90 << 2, 0x8c << 1);
    map = iwram_3001ebc;
    map->transition = 0x100;
    map->transitionSpeed = 0x20;
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_SetFlag(0x813);
    API_Func_8091e9c(3);
}


static inline void CS890_RandomizeTimer(unsigned short *timer)
{
    *timer = ((((unsigned int)__Random()) * 60) >> 16) + 20;
}

void OvlFunc_890_2009510(void)
{
    int i;
    MapState *map;
    API_CutsceneStart();
    OvlFunc_890_2009264();
    *(unsigned short *)Lm890_2de4 = 0;
    *(unsigned short *)Lm890_2ddc = 0;
    *(unsigned short *)Lm890_2de0 = 0;
    *(unsigned short *)Lm890_2dec = 0;
    API_MessageID(0x1001);
    API_Func_8092adc(16, 0x4000, 20);
    API_MapActor_Emote(16, 0x100, 0);
    API_MapActor_Jump(16, 6, 30);
    API_Func_80933f8(0x23e0000, -1, 0xae0000, 1);
    API_Func_8093530();
    API_CutsceneWait(30);
    OvlFunc_890_200a5fc(0x8010, 20);
    i = 0;
    do {
        API_PlaySound(0xf6);
        OvlFunc_890_2008238();
        API_CutsceneWait(12);
        API_PlaySound(0xf6);
        i++;
        OvlFunc_890_2008360();
        API_CutsceneWait(12);
    } while (i != 4);
    OvlFunc_890_200a5fc(0x8010, 6);
    CS890_RandomizeTimer((unsigned short *)Lm890_2de4);
    CS890_RandomizeTimer((unsigned short *)Lm890_2ddc);
    CS890_RandomizeTimer((unsigned short *)Lm890_2de0);
    CS890_RandomizeTimer((unsigned short *)Lm890_2dec);
    *(int *)Lm890_2de8 = 0;
    API_StartTask(OvlFunc_890_2008d9c, 0xc80);
    API_StartTask(OvlFunc_890_2008ef8, 0xc80);
    API_StartTask(OvlFunc_890_200901c, 0xc80);
    API_StartTask(OvlFunc_890_2009140, 0xc80);
    i = 0;
    do {
        API_PlaySound(0xf6);
        OvlFunc_890_2008238();
        API_CutsceneWait(5);
        API_PlaySound(0xf6);
        i++;
        OvlFunc_890_2008360();
        API_CutsceneWait(5);
    } while (i != 6);
    i = 0;
    do {
        API_PlaySound(0xf6);
        OvlFunc_890_2008238();
        API_CutsceneWait(4);
        API_PlaySound(0xf6);
        i++;
        OvlFunc_890_2008360();
        API_CutsceneWait(4);
    } while (i != 8);
    i = 0;
    do {
        API_PlaySound(0xf6);
        OvlFunc_890_2008238();
        API_CutsceneWait(3);
        API_PlaySound(0xf6);
        i++;
        OvlFunc_890_2008360();
        API_CutsceneWait(3);
    } while (i != 10);
    i = 0;
    do {
        API_PlaySound(0xf6);
        OvlFunc_890_2008238();
        API_CutsceneWait(2);
        API_PlaySound(0xf6);
        i++;
        OvlFunc_890_2008360();
        API_CutsceneWait(2);
    } while (i != 12);
    API_CopyMapTiles(45, 30, 34, 10, 4, 2);
    API_MapActor_Jump(16, 6, 40);
    OvlFunc_890_200a5fc(0x8010, 6);
    API_MapActor_SetSpeed(16, 0x20000, 0x10000);
    API_MapActor_TravelToAnimWait(16, 0x240, 0x118);
    API_StopTask(OvlFunc_890_2008d9c);
    API_StopTask(OvlFunc_890_2008ef8);
    API_StopTask(OvlFunc_890_200901c);
    API_StopTask(OvlFunc_890_2009140);
    map = iwram_3001ebc;
    map->transition = 0x100;
    map->transitionSpeed = 32;
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_Func_8091e9c(4);
}
extern int __GetFlag(int);
extern void __CutsceneStart(void);
extern void __MessageID(int a);
extern void __Func_8092adc(int a, int b, int c);
extern void OvlFunc_890_200a5fc(unsigned int arg0, unsigned int arg1);
extern unsigned char iwram_3001ebc_arr[] __asm__("iwram_3001ebc");

void __MapActor_Jump(int, int, int);
void __Func_8093530(void);
void OvlFunc_890_20082cc(void);
void OvlFunc_890_20083f4(void);
void __MapActor_DoAnim(int, int);
void __MapTransitionOut(void);
void __Func_8091e9c(int);

void OvlFunc_890_2009790(void)
{
    int i;
    int r3;
    int r2;
    int msg;
    unsigned char *base;

    __CutsceneStart();

    if (API_GetFlag(0x80b) && API_GetFlag(0x826)) {
        API_ClearFlag(0x826);
        r3 = 2;
        r2 = 1;
        __CopyMapTiles(0x2d, 0x1c, 0x22, 0xa, r3, r2);
    } else if (API_GetFlag(0x80b) && !API_GetFlag(0x826)) {
        API_SetFlag(0x826);
    }

    if (API_GetFlag(0x80c) && API_GetFlag(0x827)) {
        API_ClearFlag(0x827);
        r3 = 2;
        r2 = 1;
        __CopyMapTiles(0x2f, 0x1c, 0x24, 0xa, r3, r2);
    } else if (API_GetFlag(0x80c) && !API_GetFlag(0x827)) {
        API_SetFlag(0x827);
    }

    if (API_GetFlag(0x80d) && API_GetFlag(0x828)) {
        API_ClearFlag(0x828);
        r3 = 2;
        r2 = 1;
        __CopyMapTiles(0x2d, 0x1d, 0x22, 0xb, r3, r2);
    } else if (API_GetFlag(0x80d) && !API_GetFlag(0x828)) {
        API_SetFlag(0x828);
    }

    if (API_GetFlag(0x80e) && API_GetFlag(0x829)) {
        API_ClearFlag(0x829);
        r3 = 2;
        r2 = 1;
        __CopyMapTiles(0x2f, 0x1d, 0x24, 0xb, r3, r2);
    } else if (API_GetFlag(0x80e) && !API_GetFlag(0x829)) {
        API_SetFlag(0x829);
    }

    OvlFunc_890_2009264();
    API_Func_8092adc(0x10, 0x4000, 0x14);
    __MapActor_Jump(0x10, 6, 0x1e);
    __Func_80933f8(0x23e0000, -1, 0xae0000, 1);
    __Func_8093530();
    __CutsceneWait(0x1e);

    i = 0;
    do {
        __PlaySound(0xf6);
        OvlFunc_890_20082cc();
        __CutsceneWait(12);
        __PlaySound(0xf6);
        i++;
        OvlFunc_890_20083f4();
        __CutsceneWait(12);
    } while (i != 4);

    i = 0;
    do {
        __PlaySound(0xf6);
        OvlFunc_890_20082cc();
        __CutsceneWait(8);
        __PlaySound(0xf6);
        i++;
        OvlFunc_890_20083f4();
        __CutsceneWait(8);
    } while (i != 6);

    i = 0;
    do {
        __PlaySound(0xf6);
        OvlFunc_890_20082cc();
        __CutsceneWait(6);
        __PlaySound(0xf6);
        i++;
        OvlFunc_890_20083f4();
        __CutsceneWait(6);
    } while (i != 8);

    i = 0;
    do {
        __PlaySound(0xf6);
        OvlFunc_890_20082cc();
        __CutsceneWait(4);
        __PlaySound(0xf6);
        i++;
        OvlFunc_890_20083f4();
        __CutsceneWait(4);
    } while (i != 10);

    i = 0;
    do {
        __PlaySound(0xf6);
        OvlFunc_890_20082cc();
        __CutsceneWait(2);
        __PlaySound(0xf6);
        i++;
        OvlFunc_890_20083f4();
        __CutsceneWait(2);
    } while (i != 12);

    __PlaySound(0xf6);
    OvlFunc_890_20082cc();
    __CutsceneWait(6);

    if (API_GetFlag(0x822) == 0) {
        msg = 0x8010;
        __MessageID(0x1025);
        OvlFunc_890_200a5fc(msg, 6);
        __MapActor_DoAnim(0x10, 3);
        OvlFunc_890_200a5fc(msg, 6);
    }

    base = *(unsigned char **)iwram_3001ebc_arr;
    *(int *)(base + 0x1c0) = 0x100;
    *(int *)(base + 0x1c8) = 0x20;

    __MapTransitionOut();
    __WaitMapTransition();
    __Func_8091e9c(5);
}
extern void *__MapActor_GetActor(int);
extern unsigned int OvlFunc_890_200a5b0(void);

void OvlFunc_890_2009a58(void)
{
    unsigned char *actor;

    if (!API_GetFlag(0x81 << 4) && OvlFunc_890_200a5b0()) {
        API_CutsceneStart();
        API_MapActor_SetPos(0x10, 0x2410000, 0x93 << 16);
        API_Func_8092adc(0x10, 0x80 << 7, 1);
        API_Func_80933f8(0x23e0000, -1, 0xb8 << 16, 1);
        API_MessageID(0x1027);
        API_MapActor_TravelToAnimWait(0, 0x90 << 2, 0xe8);
        API_MapActor_SetAnim(0, 0);
        API_Func_8093530();
        API_CutsceneWait(10);
        API_MapActor_SetSpeed(0x10, 0x80 << 9, 0x80 << 8);
        API_MapActor_TravelToAnimWait(0x10, 0x90 << 2, 0x98);
        API_CutsceneWait(6);
        API_MapActor_Jump(0x10, 6, 0x1e);
        OvlFunc_890_200a5fc(0x10, 6);
        API_MapActor_DoAnim(0, 3);
        API_CutsceneWait(2);
        API_MapActor_DoAnim(0x10, 4);
        OvlFunc_890_200a5fc(0x10, 6);
        API_MapActor_Surprise(0, 0x81 << 1);
        API_CutsceneWait(0x28);
        API_Func_80925cc(0x10, 2);
        API_CutsceneWait(0x1e);
        OvlFunc_890_200a5fc(0x10, 6);
        API_MapActor_DoAnim(0, 3);
        API_MapActor_TravelToAnimWait(0x10, 0x90 << 2, 0xb8);
        API_CutsceneWait(6);
        API_Func_80925cc(0x10, 2);
        API_CutsceneWait(0x28);
        OvlFunc_890_200a5fc(0x4010, 6);
        API_MapActor_TravelToAnimWait(0x10, 0x90 << 2, 0xd0);
        API_CutsceneWait(0x28);
        API_MapActor_DoAnim(0, 3);
        API_CutsceneWait(6);
        API_MapActor_SetSpeed(0x10, 0x80 << 8, 0x80 << 7);
        API_MapActor_SetAnim(0x10, 2);

        actor = (unsigned char *)__MapActor_GetActor(0);
        if (actor != 0) {
            API_MapActor_TravelTo(0x10, *(short *)(actor + 0xa), *(short *)(actor + 0x12));
        }

        API_MapActor_WaitMovement(0x10);
        API_MapActor_SetPos(0x10, 0, 0);
        API_SetFlag(0x81 << 4);
        API_CutsceneEnd();
    }
}

void OvlFunc_890_2009be8(void) {
	API_PlaySound(0x15);
	API_MapActor_TravelToAnimWait(0, 0xbc << 1, 0xb8);
	API_MapActor_SetAnim(0, 0);
	API_MapActor_SetPos(0x10, 0xbc << 17, 0xb8 << 16);
	API_MapActor_SetSpeed(0x10, 0x80 << 9, 0x80 << 8);
	API_MapActor_TravelToAnimWait(0x10, 0xc4 << 1, 0xa8);
	API_Func_8092adc(0x10, 0x80 << 8, 0x1e);
	API_MapActor_SetAnim(0x10, 1);
	API_MessageID(0x102b);
	API_MapActor_Jump(0x10, 4, 0x1e);
	OvlFunc_890_200a5fc(0x10, 6);
	API_Func_80925cc(0, 2);
	API_CutsceneWait(6);
	API_MapActor_DoAnim(0x10, 3);
	OvlFunc_890_200a5fc(0x10, 6);
	API_MapActor_TravelToAnimWait(0x10, 0xbc << 1, 0xb8);
	API_MapActor_SetPos(0x10, 0xc9 << 19, 0xc9 << 19);
	API_CutsceneWait(4);
	API_SetFlag(0x811);
}


INCLUDE_ASM("asm/maps/sol_sanctum_1/OvlFunc_890_2009ca8.s");

struct SanctumInitStateView {
    unsigned char beforeRoom[0x1c2];
    short room;
};

unsigned int SolSanctum1_MapInit(void)
{
    extern struct SanctumInitStateView SanctumInitState __asm__("gState");
    extern unsigned char SanctumInitMap[] __asm__("iwram_3001ebc");
    extern void OvlFunc_890_2009380(void);
    extern void OvlFunc_890_2009510(void);
    extern void OvlFunc_890_2009790(void);
    extern unsigned int OvlFunc_890_200a5b0(void);
    extern void OvlFunc_890_200a614(void);
    extern void __Func_8091220(unsigned int, unsigned int);
    extern void __Func_80118a8(int);
    extern void __Func_8091ff0(unsigned int);
    extern void __StartEarthquake(void);
    int handled;
    int changed;
    int room;

    API_WaitFrames(1);
    *(int *)(*(unsigned char **)SanctumInitMap + 0x1c0) = 0x204;
    handled = 0;
    if (API_GetFlag(0x809) && !API_GetFlag(0x814) && !API_GetFlag(0x819)) {
        API_SetFlag(0x144);
    }
    __Func_8091220(0x10000, 0);
    if (API_GetFlag(0x109)) {
        if (API_GetFlag(0x201)) {
            API_Func_8091200(0x2051cc, 1);
            __Func_8091254(1);
            API_WaitFrames(1);
        } else if (API_GetFlag(0x202)) {
            API_Func_8091200(0x202db1, 1);
            __Func_8091254(1);
            API_WaitFrames(1);
        }
    } else {
        API_SetFlag(0x200);
        if (API_GetFlag(0x80a)) {
            API_MapActor_SetPos(16, 0x2400000, 0x780000);
        }
    }
    room = SanctumInitState.room;
    if (room == 4) {
        if (!API_GetFlag(0x813)) {
            OvlFunc_890_2009380();
            API_SetFlag(0x813);
            handled = 1;
        }
    } else if (room == 5) {
        if (!API_GetFlag(0x812)) {
            OvlFunc_890_2009510();
            API_SetFlag(0x812);
            API_ClearFlag(0x80b);
            API_ClearFlag(0x80c);
            API_ClearFlag(0x80d);
            API_ClearFlag(0x80e);
            handled = 1;
        }
    } else if (room == 6) {
        if (API_GetFlag(0x812)) {
            OvlFunc_890_2009790();
            API_SetFlag(0x822);
        }
        handled = 1;
    }
    if (API_GetFlag(0x80b)) API_SetFlag(0x826);
    if (API_GetFlag(0x80c)) API_SetFlag(0x827);
    if (API_GetFlag(0x80d)) API_SetFlag(0x828);
    if (API_GetFlag(0x80e)) API_SetFlag(0x829);
    API_WaitFrames(4);
    if (!handled) {
        if (OvlFunc_890_200a5b0()) {
            API_CopyMapTiles(30, 44, 30, 38, 12, 5);
            API_CopyMapTiles(30, 44, 34, 37, 4, 1);
            API_CopyMapTiles(14, 41, 32, 41, 8, 4);
            API_CopyMapTiles(45, 28, 34, 10, 4, 2);
            API_CopyMapTiles(45, 30, 16, 10, 4, 2);
            API_CopyMapTiles(14, 45, 14, 41, 8, 4);
            if (SanctumInitState.room != 8 && !API_GetFlag(0x814)) {
                if (API_GetFlag(0x819)) {
                    API_CopyMapTiles(0, 32, 17, 39, 2, 1);
                    API_CopyMapTiles(42, 62, 17, 36, 2, 3);
                    API_CopyMapTiles(0, 32, 17, 40, 2, 1);
                    API_CopyMapTiles(0, 32, 17, 41, 2, 1);
                    API_CopyMapTiles(0, 32, 17, 42, 2, 3);
                } else {
                    API_CopyMapTiles(44, 59, 17, 37, 2, 6);
                }
                __Func_80118a8(9);
                __Func_80118a8(10);
            }
            API_MapActor_SetPos(16, 0, 0);
        } else {
            changed = 0;
            if (API_GetFlag(0x80b)) {
                API_CopyMapTiles(45, 28, 34, 10, 2, 1);
                API_CopyMapTiles(45, 30, 16, 10, 2, 1);
                changed = 1;
            }
            if (API_GetFlag(0x80c)) {
                API_CopyMapTiles(47, 28, 36, 10, 2, 1);
                API_CopyMapTiles(47, 30, 18, 10, 2, 1);
                changed = 1;
            }
            if (API_GetFlag(0x80d)) {
                API_CopyMapTiles(45, 29, 34, 11, 2, 1);
                API_CopyMapTiles(45, 31, 16, 11, 2, 1);
                changed = 1;
            }
            if (API_GetFlag(0x80e)) {
                API_CopyMapTiles(47, 29, 36, 11, 2, 1);
                API_CopyMapTiles(47, 31, 18, 11, 2, 1);
                changed = 1;
            }
            if (API_GetFlag(0x812) || changed) {
                API_CopyMapTiles(30, 43, 32, 40, 8, 3);
                API_CopyMapTiles(30, 43, 33, 39, 8, 1);
                API_CopyMapTiles(30, 43, 36, 38, 3, 3);
                API_CopyMapTiles(36, 58, 32, 41, 8, 4);
            }
            API_Func_8010704(15, 6, 2, 1, 17, 6);
        }
    }
    if (!API_GetFlag(0x309) && SanctumInitState.room == 8) {
        OvlFunc_890_200a614();
        API_SetFlag(0x309);
        API_Func_8010704(15, 6, 2, 1, 17, 6);
    } else if (API_GetFlag(0x814)) {
        __Func_8091ff0(0x8d);
        API_Func_8012330(0x10000, 0x10000, 0x10000);
        __StartEarthquake();
        API_Func_8010704(15, 6, 2, 1, 17, 6);
    }
    return 0;
}


unsigned int OvlFunc_890_200a5b0(void) {
    unsigned int r5 = 1;
    if (!__GetFlag(0x80b))
        r5 = 0;
    if (!__GetFlag(0x80c))
        r5 = 0;
    if (!__GetFlag(0x80d))
        r5 = 0;
    if (!__GetFlag(0x80e))
        r5 = 0;
    return r5;
}

extern void __ActorMessage(unsigned int arg0, unsigned int arg1);

void OvlFunc_890_200a5fc(unsigned int arg0, unsigned int arg1)
{
	__ActorMessage(arg0, 0);
	__CutsceneWait(arg1);
}

INCLUDE_ASM("asm/maps/sol_sanctum_1/OvlFunc_890_200a614.s");

extern void __ActorMessage_Wait(volatile unsigned long a, int b, int c);
extern void __CutsceneEnd(void);

void OvlFunc_890_200a924(void)
{
  int new_var;
  __CutsceneStart();
  new_var = 0xc0 << 8;
  if (__GetFlag(0x896))
  {
    __MessageID(0xffd);
  }
  else
  {
    __MessageID(0xfff);
  }
  __ActorMessage_Wait(0x10, 0, 0xa);
  __Func_8092adc(0x10, new_var, 0xa);
  __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/sol_sanctum_1/sol_sanctum_1_data.s");

INCLUDE_ASM("asm/maps/sol_sanctum_1/imports.s");
