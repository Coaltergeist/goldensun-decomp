/* rom_784360 (overlay file 884): consolidated TU — vale_plaza map overlay. */

#include "nonmatching.h"
#include "api.h"
#include "message.h"
#include "actor.h"

INCLUDE_ASM("asm/maps/vale_plaza/exports.s");

INCLUDE_ASM("asm/maps/vale_plaza/OvlFunc_884_2008030.s");

extern unsigned char gOvl_0200afa0[];

unsigned int ValePlaza_GetEntrances(void) {
    return (unsigned int)gOvl_0200afa0;
}

int ValePlaza_GetSpecialExits(void) {
    return 0;
}

extern unsigned char L3144[] __asm__(".Lm884_3144");
extern unsigned char L3108[] __asm__(".Lm884_3108");

unsigned int *ValePlaza_GetExits(void)
{
    if (__GetFlag(0x834))
        return (unsigned int *)L3144;
    return (unsigned int *)L3108;
}

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char L3380[] __asm__(".Lm884_3380");
extern unsigned char L3560[] __asm__(".Lm884_3560");
extern unsigned char L37d0[] __asm__(".Lm884_37d0");
extern unsigned char L3170[] __asm__(".Lm884_3170");

unsigned int ValePlaza_GetActors(void) {
    unsigned int r3;
    unsigned int r2;
    short *p;

    if (__GetFlag(0x834) != 0) {
        return (unsigned int)L3380;
    }
    r3 = (unsigned int)&gState;
    r2 = 0xe1;
    r2 <<= 1;
    r3 += r2;
    p = (short *)r3;
    if (*p == 0xc) {
        return (unsigned int)L3560;
    }
    if (__GetFlag(0x87a) != 0) {
        return (unsigned int)L37d0;
    }
    return (unsigned int)L3170;
}

void OvlFunc_884_200810c(void) {
    __CutsceneStart();
    __Func_801776c(0x111f, 1);
    __PlaySound(0x7e);
    __Func_808c2dc(0x3e7, 0);
    __CutsceneWait(0xa);
    __Func_801776c(0x974, 1);
    __Func_8019a54();
    __ClearFlag(0xa1 << 1);
    __CutsceneEnd();
}

extern unsigned char L3cec[] __asm__(".Lm884_3cec");
extern unsigned char L3b3c[] __asm__(".Lm884_3b3c");
extern unsigned char L3b30[] __asm__(".Lm884_3b30");
extern unsigned char L3a64[] __asm__(".Lm884_3a64");
extern unsigned char gOvl_0200b938[];

unsigned int ValePlaza_GetEvents(void) {
    short *p;
    unsigned int r2;

    if (__GetFlag(0x87a) != 0) {
        return (unsigned int)L3cec;
    } else if (__GetFlag(0x815) != 0) {
        return (unsigned int)L3b3c;
    } else {
        r2 = 0xe1;
        r2 <<= 1;
        p = (short *)((char *)&gState + r2);
        if (*p == 0xc) {
            return (unsigned int)L3b30;
        } else if (__GetFlag(0x834) != 0) {
            return (unsigned int)L3a64;
        } else {
            return (unsigned int)gOvl_0200b938;
        }
    }
}

void OvlFunc_884_20081c4(void)
{
  unsigned long new_var2;
  unsigned long long new_var;
  __CutsceneStart();
  new_var = 2;
  __MessageID(0xf3c);
  do { new_var = (unsigned long) new_var; } while (0);
  new_var2 = new_var;
  __MapActor_TurnToFaceActor(0x17, 0, new_var2);
  __Func_8093054(0x17, 0);
  __CutsceneEnd();
}

void OvlFunc_884_20081f0(void)
{
  unsigned long new_var2;
  unsigned long long new_var;
  __CutsceneStart();
  new_var = 2;
  __MessageID(0xf3f);
  do { new_var = (unsigned long) new_var; } while (0);
  new_var2 = new_var;
  __MapActor_TurnToFaceActor(0x18, 0, new_var2);
  __Func_8093054(0x18, 0);
  __CutsceneEnd();
}

void OvlFunc_884_200821c(void)
{
  unsigned long new_var2;
  unsigned long long new_var;
  __CutsceneStart();
  new_var = 2;
  __MessageID(0xf44);
  do { new_var = (unsigned long) new_var; } while (0);
  new_var2 = new_var;
  __MapActor_TurnToFaceActor(0xf, 0, new_var2);
  __Func_8093054(0xf, 0);
  __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/vale_plaza/OvlFunc_884_2008248.s");
extern unsigned char iwram_3001ebc[];
extern int __ShowActorMessage_NoWait();
extern int __Func_8091c7c(int, int);
extern void __Func_8093054(int, int);

void OvlFunc_884_20083b4(void) {
	unsigned char *base;

	API_CutsceneStart();
	if (API_GetFlag(0x87a) != 0) {
		API_MessageID(0x1be8);
		__ShowActorMessage_NoWait(0xf, 0);
		if (__Func_8091c7c(0, 0) == 1) {
			API_ActorMessage(0xf, 0);
		} else {
			base = *(unsigned char **)iwram_3001ebc;
			*(unsigned short *)(base + 0x1d8) += 1;
			__Func_8093054(0xf, 0);
		}
	} else if (API_GetFlag(0x815) != 0) {
		API_MessageID(0x1191);
		__Func_8093054(0xb, 0);
	} else {
		API_MessageID(0xea8);
		__Func_8093054(0xb, 0);
	}
	API_CutsceneEnd();
}

extern void __MapActor_SetBehavior(int, void *);
extern void OvlFunc_884_200a2c8(unsigned int arg0, unsigned int arg1);
void OvlFunc_884_2008444(void) {
	API_CutsceneStart();
	API_MapActor_SetAnim(0x1a, 1);
	API_MapActor_Face(0x1a, 0, 0x14);
	API_MapActor_Face(0x1a, 0x15, 0x28);
	API_MessageID(0x11c7);
	OvlFunc_884_200a2c8(0x1a, 0x14);
	API_Func_80933d4(0x19999, 0x3333);
	API_Func_80933f8(0x1510000, -1, 0x88 << 17, 1);
	API_CutsceneWait(0x14);
	API_Func_80925cc(0x1a, 2);
	API_CutsceneWait(0x14);
	API_MapActor_Face(0x1a, 0, 0xa);
	OvlFunc_884_200a2c8(0x1a, 0x28);
	__MapActor_SetBehavior(0x1a, 2);
	API_CutsceneEnd();
}

extern void *__MapActor_GetActor(int);
extern void __Func_8092950();
extern void __StartTask(void *, int);
extern void __StopTask(void *);
extern void OvlFunc_884_200a2f8(unsigned int arg0);
extern void OvlFunc_884_200a564(void);
extern void OvlFunc_884_200a574(void);
extern void OvlFunc_884_200a580(void);
extern void OvlFunc_884_200a5a0(void);

void OvlFunc_884_20084d4(void) {
	struct Actor *actor;
	unsigned char saved;
	int i;
	int sh;
	int p1;
	int p2;

	API_CutsceneStart();
	p2 = 0xf;
	API_MapActor_TravelToAnimWait(0, 0x52, 0xbe << 2);
	API_MapActor_TurnToFaceActor(p2, 0, 0x1e);
	API_MessageID(0xeae);
	OvlFunc_884_200a2c8(0xf, 0x14);
	OvlFunc_884_200a2e0(0xf, 0xa0 << 8, 0x14);
	API_MapActor_Surprise(p2, 0x81 << 1);
	sh = 4;
	API_CutsceneWait(0x14);
	OvlFunc_884_200a564();
	p1 = 0xc8 << sh;
	for (i = 0; (unsigned int)i <= 0x27; i++) {
		OvlFunc_884_200a2f8((unsigned int)__MapActor_GetActor(0xf));
		API_WaitFrames(1);
	}
	p2 = p1;
	__StartTask(OvlFunc_884_200a580, p2);
	p2 = 0xc8 << sh;
	__StartTask(OvlFunc_884_200a5a0, p2);
	API_Func_8092adc(0, 0xa0 << 8, 0xa);
	actor = (struct Actor *)__MapActor_GetActor(0x14);
	saved = actor->__unk55;
	actor->__unk55 = 0;
	for (i = 0; (unsigned int)i <= 0x27; i++) {
		actor->pos.y += 0xc0 << 5;
		API_WaitFrames(1);
	}
	actor->__unk55 = saved;
	__StopTask(OvlFunc_884_200a580);
	__StopTask(OvlFunc_884_200a5a0);
	API_WaitFrames(1);
	API_PlaySound(0xa1);
	__Func_8092950(0xf, 0);
	__Func_8092950(0x14, 0);
	API_CutsceneWait(0x28);
	OvlFunc_884_200a574();
	API_MapActor_TurnToFaceActor(0, 0xf, 0x1e);
	API_ActorMessage(0xf, 0);
	API_CutsceneEnd();
}


void OvlFunc_884_20085e8(void) {
    API_CutsceneStart();
    API_MapActor_TurnToFaceActor(0x10, 0, 0xa);
    if (API_GetFlag(0x84 << 4) != 0) {
        API_MessageID(0xeb1);
        API_ActorMessage(0x10, 0);
    } else {
        API_MessageID(MSG_eb0);
        API_ActorMessage(0x10, 0);
    }
	API_CutsceneEnd();
}

void OvlFunc_884_2008634(void) {
    API_CutsceneStart();
    if (API_GetFlag(0x302) != 0) {
        API_MessageID(0x1be4);
    } else {
        API_MessageID(0x1be3);
        API_SetFlag(0x302);
    }
    API_ActorMessage(0xb, 0);
    API_CutsceneEnd();
}

extern void __MapActor_SetIdle(int);
extern int gScript_884__0200ae34[];

void OvlFunc_884_2008674(void) {
    struct Actor *actor;
    actor = (struct Actor *)__MapActor_GetActor(0x15);
    API_CutsceneStart();
    actor->prevPos.x = 0x80 << 24;
    actor->prevPos.y = 0x80 << 24;
    actor->prevPos.z = 0x80 << 24;
    API_MapActor_SetAnim(0x15, 1);
    __MapActor_SetIdle(0x15);
    API_MapActor_Emote(0x15, 0x80 << 1, 0x28);
    actor->facing = 0xb0 << 8;
    API_CutsceneWait(0x14);
    API_Func_809259c(0x15, 2);
    API_MessageID(0x1c94);
    API_ActorMessage_Wait(0x15, 0, 0x28);
    API_MapActor_Face(0x15, 0, 0x14);
    API_Func_809259c(0x15, 2);
    API_ActorMessage(0x15, 0);
    API_SetFlag(0x306);
    __MapActor_SetIdle(0x15);
    API_WaitFrames(1);
    __MapActor_SetBehavior(0x15, gScript_884__0200ae34);
    API_CutsceneEnd();
}

extern unsigned char iwram_3001ebc[];

void OvlFunc_884_2008714(unsigned int arg0)
{
    unsigned char *base;

    if (__GetFlag(0x834)) {
        __Func_8095214();
    }
    base = *(unsigned char **)iwram_3001ebc;
    *(unsigned int *)(base + 0x1c0) = 0x100;
    *(unsigned int *)(base + 0x1c8) = 0x10;
    __Func_8091e9c(arg0);
}

extern unsigned char L3eb4[] __asm__(".Lm884_3eb4");
extern void __PlaySound(int);
extern void __Func_8010560(void *, int, int);
extern void __MapActor_TravelToAnim(int, int, int);

void OvlFunc_884_2008750(void)
{
    __PlaySound(0x9e);
    __Func_8010560(L3eb4, 0x2c, 7);
    API_MapActor_TravelToAnim(0, 0xf8, 0x117);
    OvlFunc_884_2008714(1);
}

extern void __CopyMapTiles(int, int, int, int, int, int);
extern void __Func_8092b08(int, int);
void OvlFunc_884_2008780(void) {
	API_PlaySound(0xbc);
	__CopyMapTiles(0, 0x3f, 0x33, 8, 2, 2);
	API_WaitFrames(0xa);
	__CopyMapTiles(2, 0x3f, 0x33, 8, 2, 2);
	API_WaitFrames(0xa);
	API_MapActor_TravelToAnimWait(0, 0xb0 << 1, 0x99 << 1);
	__Func_8092b08(0, 3);
	API_MapActor_TravelToAnimWait(0, 0xb0 << 1, 0x94 << 1);
	OvlFunc_884_2008714(2);
}


extern void __PlaySound(int);
extern void __Func_8010560(void *, int, int);
extern void __MapActor_TravelToAnim(int, int, int);

void OvlFunc_884_20087ec(void)
{
    __PlaySound(0x9e);
    __Func_8010560(L3eb4, 0x2b, 0xf);
    API_MapActor_TravelToAnim(0, 0xe6, 0x197);
    OvlFunc_884_2008714(3);
}

void OvlFunc_884_200881c(void) {
	API_PlaySound(0x9e);
	__Func_8010560(L3eb4, 0x34, 0x12);
	API_MapActor_TravelToAnim(0, 0xbb << 1, 0x1a3);
	OvlFunc_884_2008714(4);
}

extern void __PlaySound(int);
extern void __Func_8010560(void *, int, int);
extern void __MapActor_TravelToAnim(int, int, int);

void OvlFunc_884_200884c(void)
{
    __PlaySound(0x9e);
    __Func_8010560(L3eb4, 0x29, 0x20);
    API_MapActor_TravelToAnim(0, 0xc8, 0x222);
    OvlFunc_884_2008714(5);
}


extern void __PlaySound(int);
extern void __Func_8010560(void *, int, int);
extern void __MapActor_TravelToAnim(int, int, int);

void OvlFunc_884_200887c(void)
{
    __PlaySound(0x9e);
    __Func_8010560(L3eb4, 0x23, 0x24);
    API_MapActor_TravelToAnim(0, 0x66, 0x263);
    OvlFunc_884_2008714(6);
}

void OvlFunc_884_20088ac(void) {
	API_PlaySound(0x9e);
	__Func_8010560(L3eb4, 0x33, 0x27);
	API_MapActor_TravelToAnim(0, 0xb3 << 1, 0x29e);
	OvlFunc_884_2008714(7);
}

extern void __PlaySound(int a);

void OvlFunc_884_20088dc(void) {
    __PlaySound(0x7b);
    OvlFunc_884_2008714(8);
}


void OvlFunc_884_20088f0(void)
{
    if (__GetFlag(0x815)) {
        __PlaySound(0x7b);
        OvlFunc_884_2008714(0xa);
    }
}

extern void __SetFlag(int);

void OvlFunc_884_2008910(void) {
    __SetFlag(0x90b);
}


void OvlFunc_884_2008920(void) {
    __SetFlag(0x90c);
}


void OvlFunc_884_2008930(void) {
    __SetFlag(0x90d);
}

INCLUDE_ASM("asm/maps/vale_plaza/ValePlaza_MapInit.s");
INCLUDE_ASM("asm/maps/vale_plaza/OvlFunc_884_2008bbc.s");
extern unsigned char *__Func_8093554(void);
extern void __Func_800fe9c(void);
extern void __Func_8095268(void);
extern void __Func_8093530(void);
extern void OvlFunc_884_200a2e0(unsigned int arg0, unsigned int arg1, unsigned int arg2);
extern void OvlFunc_884_2009274(void);

void OvlFunc_884_2009084(void) {
	unsigned char *r5 = __Func_8093554();
	API_CutsceneStart();
	API_Func_80933f8(-1, -1, -1, 0);
	API_WaitFrames(1);
	API_Func_80933f8(0x80 << 15, 0x90 << 16, 0xaf << 17, 0);
	__Func_800fe9c();
	API_WaitFrames(1);
	API_Func_80917d0(1, 0);
	API_MapTransitionIn();
	API_PlaySound(0x11);
	__Func_8095268();
	API_MapActor_SetPos(0x17, 0xd2 << 15, 0x10b0000);
	API_WaitFrames(1);
	API_MapActor_SetSpeed(0, 0x13333, 0x9999);
	API_MapActor_TravelToAnimWait(0, 0x5d, 0x157);
	API_MessageID(0xed6);
	API_ActorMessage(0x17, 0);
	API_PlaySound(0x3d);
	r5[0x55] = 0;
	API_Func_80933d4(0xc0 << 10, 0xc0 << 7);
	API_Func_80933f8(0xda << 15, 0xb0 << 16, 0x1190000, 1);
	__Func_8093530();
	API_CutsceneWait(0x28);
	API_MapActor_SetPos(0x18, 0x87 << 16, 0xb1 << 16);
	API_MapActor_SetSpeed(0x18, 0xcccc, 0x6666);
	API_MapActor_TravelToAnim(0x18, 0x7e, 0x81 << 1);
	API_CutsceneWait(0x28);
	API_Func_8092adc(0x17, 0xd0 << 8, 0);
	API_MapActor_WaitMovement(0x18);
	API_MapActor_SetAnim(0x18, 1);
	OvlFunc_884_200a2e0(0x18, 0xe0 << 7, 0xa);
	API_MapActor_DoAnim(0x17, 3);
	API_MapActor_DoAnim(0x18, 4);
	API_ActorMessage(0x2018, 0);
	API_Func_80925cc(0x17, 2);
	OvlFunc_884_200a2c8(0x8017, 0x1e);
	OvlFunc_884_200a2e0(0x18, 0xb0 << 8, 0x14);
	OvlFunc_884_200a2c8(0x2018, 0xa);
	OvlFunc_884_200a2e0(0x17, 0xb0 << 8, 0x28);
	API_ActorMessage(0x8017, 0);
	API_MapActor_DoAnim(0x18, 4);
	API_ActorMessage(0x2018, 0);
	OvlFunc_884_200a2e0(0x17, 0xf0 << 8, 0xa);
	API_Func_80925cc(0x17, 2);
	API_ActorMessage(0x8017, 0);
	OvlFunc_884_200a2e0(0x18, 0xc0 << 7, 0x14);
	API_MapActor_DoAnim(0x18, 3);
	API_CutsceneWait(0x14);
	OvlFunc_884_200a2c8(0x2018, 0x14);
	OvlFunc_884_2009274();
	API_CutsceneEnd();
}

INCLUDE_ASM("asm/maps/vale_plaza/OvlFunc_884_2009274.s");
INCLUDE_ASM("asm/maps/vale_plaza/OvlFunc_884_20095b4.s");
INCLUDE_ASM("asm/maps/vale_plaza/OvlFunc_884_20097c8.s");

extern void __ActorMessage(unsigned int arg0, unsigned int arg1);
extern void __CutsceneWait(unsigned int arg0);

void OvlFunc_884_200a2c8(unsigned int arg0, unsigned int arg1)
{
	__ActorMessage(arg0, 0);
	__CutsceneWait(arg1);
}

extern void __Func_8092adc(unsigned int arg0, unsigned int arg1, unsigned int arg2);

void OvlFunc_884_200a2e0(unsigned int arg0, unsigned int arg1, unsigned int arg2)
{
	__Func_8092adc(arg0, arg1, 0);
	__CutsceneWait(arg2);
}

extern unsigned int iwram_3001e40;
extern void __Actor_SetColorswap(unsigned int a, unsigned int b);
extern void OvlFunc_884_200a440(unsigned int a);

void OvlFunc_884_200a2f8(unsigned int arg0)
{
    if (iwram_3001e40 & 2) {
        __Actor_SetColorswap(arg0, 7);
    } else {
        __Actor_SetColorswap(arg0, 0);
    }
    if ((iwram_3001e40 & 0xf) == 0) {
        OvlFunc_884_200a440(arg0);
    }
}

extern volatile unsigned int iwram_3001e40__a1 __asm__("iwram_3001e40");
extern int _umodsi3_RAM(int, int);

void OvlFunc_884_200a334(arg0) int arg0;
{
    if (iwram_3001e40__a1 & 1) {
        __Actor_SetColorswap(arg0, _umodsi3_RAM(iwram_3001e40__a1 >> 1, 6));
    }
    if ((iwram_3001e40__a1 & 0xf) == 0) {
        OvlFunc_884_200a440(arg0);
    }
}

extern volatile unsigned int iwram_3001e40__a2 __asm__("iwram_3001e40");

void OvlFunc_884_200a370(arg0) int arg0;
{
    if (iwram_3001e40__a2 & 1) {
        __Actor_SetColorswap(arg0, _umodsi3_RAM(iwram_3001e40__a2 >> 1, 6));
    }
}

INCLUDE_ASM("asm/maps/vale_plaza/OvlFunc_884_200a39c.s");
INCLUDE_ASM("asm/maps/vale_plaza/OvlFunc_884_200a3ec.s");
INCLUDE_ASM("asm/maps/vale_plaza/OvlFunc_884_200a440.s");

extern void __Func_8096fb0(int a, int b);

void OvlFunc_884_200a564(void) {
    __Func_8096fb0(0x8c, 0);
}

extern void __Func_8097194(void);

void OvlFunc_884_200a574(void) {
    __Func_8097194();
}

void OvlFunc_884_200a580(void) {
    __MapActor_GetActor(0xf);
    OvlFunc_884_200a334();
}


void OvlFunc_884_200a590(void) {
    __MapActor_GetActor(0x11);
    OvlFunc_884_200a334();
}


void OvlFunc_884_200a5a0(void) {
    __MapActor_GetActor(0x14);
    OvlFunc_884_200a370();
}

void OvlFunc_884_200a5b0(void) {
    __SetFlag(0xb0 << 1);
    __SetFlag(0x16d);
    __SetFlag(0x844);
    __SetFlag(0x845);
    __Func_8091e9c(0x28);
}

INCLUDE_ASM("asm/maps/vale_plaza/vale_plaza_data.s");

INCLUDE_ASM("asm/maps/vale_plaza/imports.s");
