/* rom_784360 (overlay file 884): consolidated TU — vale_plaza map overlay. */

#include "nonmatching.h"
#include "api.h"
#include "message.h"
#include "actor.h"
extern void OvlFunc_884_200a2e0(unsigned int, unsigned int, unsigned int);

INCLUDE_ASM("asm/maps/vale_plaza/exports.s");

int OvlFunc_884_2008030(struct Actor *actor) {
    extern int __atan2(int, int);
    struct Actor *target;
    unsigned short angle;
    int diff;

    target = actor->linkedActor;
    if (target != 0) {
        actor->__unk5A &= 0xfe;
        angle = __atan2(target->pos.z - actor->pos.z, target->pos.x - actor->pos.x);
        diff = (short)(angle - actor->facing);
        if (diff != 0) {
            if (diff > 0x80 << 5) {
                diff = 0x80 << 5;
            }
            if (diff < -0x1000) {
                diff = -0x1000;
            }
            actor->facing += diff;
        }
    }
    return 1;
}

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

#include "state/global_state.h"
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

extern unsigned char iwram_3001e70[];
extern unsigned char iwram_3001ebc[];
extern int __ShowActorMessage_NoWait();
extern int __Func_8091c7c(int, int);
extern void __Func_8093054(int, int);
extern void __Func_809259c(int, int);
extern void *__MapActor_GetActor(int);
extern void __Func_8092950();
extern void __StartTask(void *, int);
extern void __StopTask(void *);
extern void OvlFunc_884_200a2f8(unsigned int);
extern void OvlFunc_884_200a564(void);
extern void OvlFunc_884_200a574(void);
extern void OvlFunc_884_200a590(void);
extern int _umodsi3_RAM(int, int);
extern void __PlaySound(int);

extern unsigned char Lconst_1197[] __asm__(".Lconst_1197");
__asm__(".equ .Lconst_1197, 0x1197");

void OvlFunc_884_2008248(void) {
    API_CutsceneStart();
    if (API_GetFlag(0x815) != 0) {
        int msg = (int)Lconst_1197;
        unsigned char *base;

        API_MessageID(msg);
        if (API_GetFlag(2) != 0) {
            base = *(unsigned char **)iwram_3001ebc;
            *(unsigned short *)(base + 0x1d8) += 1;
        }
        if (API_GetFlag(3) != 0) {
            base = *(unsigned char **)iwram_3001ebc;
            *(unsigned short *)(base + 0x1d8) += 1;
        }
        __ShowActorMessage_NoWait(0x11, 0);
        if (__Func_8091c7c(0, 0) == 0) {
            API_MessageID(msg + 3);
        } else {
            API_MessageID(msg + 4);
        }
        API_ActorMessage(0x11, 0);
    } else {
        int *p;
        int toggle;
        int i;

        p = *(int **)*(void **)iwram_3001e70;
        API_MessageID(0xf48);
        API_MapActor_TurnToFaceActor(0x11, 0, 0);
        __Func_8093054(0x11, 0);
        API_CutsceneWait(0x14);
        API_Func_809259c(0x11, 2);
        API_CutsceneWait(0xf);
        OvlFunc_884_200a564();

        toggle = 0;
        for (i = 0; (unsigned int)i <= 0x27; i++) {
            OvlFunc_884_200a2f8((unsigned int)__MapActor_GetActor(0x11));
            API_WaitFrames(1);
        }

        API_StartTask(OvlFunc_884_200a590, 0xc8 << 4);
        API_PlaySound(0x6b);

        for (i = 0; i != 0xb4; i++) {
            if (_umodsi3_RAM(i, 10) == 0) {
                if ((toggle & 1) != 0) {
                    *p += 0xffff0000;
                } else {
                    *p += 0x80 << 9;
                }
                toggle++;
            }
            API_CutsceneWait(1);
        }

        API_PlaySound(0x121);
        API_StopTask(OvlFunc_884_200a590);
        API_WaitFrames(1);
        OvlFunc_884_200a574();
        __Func_8092950(0x11, 0);
        API_CutsceneWait(0x28);
        API_MessageID(0xf4b);
        API_ActorMessage(0x11, 0);
    }
    API_CutsceneEnd();
}

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

extern void OvlFunc_884_200a5b0(void);
extern void OvlFunc_884_20097c8(void);
extern void OvlFunc_884_20095b4(void);
extern void OvlFunc_884_2009084(void);
extern unsigned char gScript_884__0200ac00[];
extern void CS884_StartRain(void) __asm__("__StartRain");
extern void CS884_StartThunder(void) __asm__("__StartThunder");
extern void CS884_Refresh(void) __asm__("__Func_800fe9c");
extern void CS884_FinalizeRain(void) __asm__("__Func_8095268");
extern struct Actor *CS884_Actor(int) __asm__("__MapActor_GetActor");
extern void CS884_SpriteFlags(void *, int) __asm__("__Actor_SetSpriteFlags");
struct CS884_StateView {
    unsigned char pad[0x1c2];
    short room;
    unsigned char pad2[0x22b - 0x1c4];
    unsigned char battleMode;
};
extern struct CS884_StateView CS884_State __asm__("gState");
int ValePlaza_MapInit(void)
{
    struct Actor *actor;
    if (API_GetFlag(0x90b)) API_MapActor_SetPos(8, 0, 0);
    if (API_GetFlag(0x90c)) API_MapActor_SetPos(9, 0, 0);
    if (API_GetFlag(0x90d)) API_MapActor_SetPos(10, 0, 0);

    switch (CS884_State.room) {
    case 0x61: goto entryScene;
    case 0x62:
        API_SetFlag(0x20);
        API_Func_8091e9c(0x32);
        goto done;
    case 0x63:
        OvlFunc_884_200a5b0();
        goto done;
    }
    actor = CS884_Actor(8);
    actor->scale.y = 0x18000;
    actor = CS884_Actor(9);
    actor->scale.y = 0x18000;
    actor = CS884_Actor(10);
    actor->scale.y = 0x18000;
    if (API_GetFlag(0x87a)) {
        API_CopyMapTiles(0x61, 2, 0x50, 5, 2, 2);
        API_CopyMapTiles(0x2a, 0x35, 0x2a, 0x36, 3, 1);
        CS884_Refresh();
        API_WaitFrames(1);
        goto done;
    }
    if (API_GetFlag(0x834)) {
        CS884_StartRain();
        CS884_StartThunder();
        API_Func_8010704(0x15, 0x26, 1, 1, 0x12, 0x29);
        if (API_GetFlag(0x840)) {
            API_MapActor_SetPos(0x11, 0, 0);
            API_MapActor_SetPos(0x12, 0, 0);
            API_Func_8092a1c(0x13, 0x10000, gScript_884__0200ac00);
        }
    } else if (API_GetFlag(0x815)) {
        API_MapActor_SetPos(0x10, 0xb40000, 0x2380000);
        API_CopyMapTiles(0x5c, 2, 0x50, 5, 2, 2);
        API_CopyMapTiles(0x2a, 0x35, 0x2a, 0x36, 3, 1);
        CS884_Refresh();
        API_WaitFrames(1);
    }
    if (CS884_State.room == 12) {
        OvlFunc_884_20097c8();
        goto done;
    }
    if (API_GetFlag(0x834)) {
        actor = CS884_Actor(20);
        actor->scale.x = 0x4ccc;
        actor->scale.y = 0x4ccc;
        actor = CS884_Actor(20);
        CS884_SpriteFlags(actor, 0);
        actor = CS884_Actor(21);
        actor->scale.x = 0x9999;
        actor->scale.y = 0x9999;
        API_MapActor_SetAnim(13, 5);
    } else if (API_GetFlag(0x815)) {
        API_MapActor_SetPos(21, 0x14b0000, 0xf90000);
        actor = CS884_Actor(21);
        CS884_SpriteFlags(actor, 0);
    }
    if (API_GetFlag(0x840)) {
        API_MapActor_SetPos(26, 0, 0);
        API_MapActor_SetPos(22, 0, 0);
    }
    if (CS884_State.room == 0x13) {
entryScene:
        OvlFunc_884_20095b4();
        goto done;
    }
    if (API_GetFlag(0x834) && API_GetFlag(0x842)) {
        OvlFunc_884_2009084();
        goto done;
    }
    if (API_GetFlag(0x834)) {
        API_MapTransitionIn();
        API_WaitMapTransition();
        CS884_FinalizeRain();
    }
done:
    return 0;
}

void OvlFunc_884_2008bbc(void)
{
    extern unsigned char gScript_884__0200a874[];
    extern unsigned char gScript_884__0200ac00[];
    extern unsigned char gScript_884__0200aef0[];
    extern unsigned char gScript_884__0200af50[];
    extern unsigned char gScript_884__0200af78[];
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern int __Func_8091c7c(int, int);
    extern void __MapActor_RunScript(int, void *);
    extern void OvlFunc_884_200a2c8(unsigned int, unsigned int);
    extern int __ShowActorMessage_NoWait(int, int);
    int accepted;
    int flagValue1;
    int flagValue2;
    int choice3;
    struct Actor *actor;

    accepted = 0;
    flagValue1 = API_GetFlag(0x834);
    if (flagValue1 == 0) return;
    flagValue2 = API_GetFlag(0x840);
    if (flagValue2 != 0) return;
    API_CutsceneStart();
    API_Func_80933d4(0x19999, 0x3333);
    API_Func_80933f8(0xc50000, -1, 0x3000000, 1);
    API_Func_8093530();
    API_MessageID(0xeb6);
    API_Func_80925cc(19, 2);
    API_ActorMessage_Wait(0x4013, 0, 10);
    API_MapActor_SetSpeed(0, 0x10000, 0x8000);
    API_MapActor_SetSpeed(25, 0x10000, 0x8000);
    API_MapActor_TravelToAnimWait(0, 0xb3, 0x315);
    actor = (struct Actor *)__MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_SetPos(25, actor->pos.x, actor->pos.z);
    }
    API_MapActor_TravelToAnimWait(25, 0xb3, 0x324);
    API_MapActor_TurnToFaceActor(0, 25, 0x28);
    API_Func_8092adc(0, 0, 0);
    API_Func_8092adc(25, 0, 0);
    API_MapActor_SetAnim(17, 3);
    API_MapActor_DoAnim(18, 3);
    API_MapActor_TurnToFaceActor(17, 18, 0);
    API_CutsceneWait(20);
    API_Func_809259c(17, 1);
    API_ActorMessage_Wait(0x4011, 0, 10);
    API_MapActor_SetAnim(18, 3);
    API_ActorMessage_Wait(18, 0, 10);
    API_Func_8092adc(17, 0, 0);
    API_Func_8092adc(18, 0xf000, 10);
    API_MapActor_DoAnim(19, 3);
    API_ActorMessage_Wait(0x4013, 0, 10);
    API_MapActor_SetSpeed(17, 0x19999, 0xcccc);
    API_MapActor_SetSpeed(18, 0x19999, 0xcccc);
    API_MapActor_SetBehavior(17, (int)gScript_884__0200aef0);
    API_CutsceneWait(20);
    API_MapActor_SetBehavior(18, (int)gScript_884__0200aef0);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(25, 0xc000, 0x3c);
    API_MapActor_SetBehavior(0, (int)gScript_884__0200af50);
    __MapActor_RunScript(25, gScript_884__0200af78);
    API_CutsceneWait(20);
    API_Func_8092adc(0, 0, 0);
    API_Func_8092adc(25, 0, 10);
    API_ActorMessage(25, 0);
    API_Func_8092adc(19, 0x8000, 0);
    OvlFunc_884_200a2e0(26, 0x6000, 20);
    API_Func_80925cc(26, 2);
    OvlFunc_884_200a2c8(26, 10);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_DoAnim(25, 3);
    API_CutsceneWait(20);
    API_Func_80925cc(19, 2);
    __ShowActorMessage_NoWait(0x4013, 0);
    choice3 = __Func_8091c7c(0, 0);
    if (choice3 == 1) {
        accepted = 1;
        API_MapActor_SetAnim(19, 4);
    } else {
        API_MapActor_SetAnim(19, 3);
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
    }
    API_ActorMessage(0x4013, 0);
    if (accepted != 0) {
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
    }
    OvlFunc_884_200a2e0(22, 0x4000, 30);
    API_ActorMessage(22, 0);
    API_MapActor_Emote(19, 0x100, 0);
    API_MapActor_Emote(26, 0x100, 0);
    API_MapActor_Emote(0, 0x100, 0);
    API_MapActor_Emote(25, 0x100, 0x28);
    API_Func_8092adc(19, 0xa000, 0);
    API_Func_8092adc(26, 0xa000, 0);
    API_Func_8092adc(0, 0xe000, 0);
    OvlFunc_884_200a2e0(25, 0xe000, 10);
    API_Func_80933d4(0x13333, 0x2666);
    API_Func_80933f8(0xd70000, -1, 0x2f60000, 1);
    API_Func_8093530();
    API_Func_80933d4(0xcccc, 0x1999);
    API_Func_80933f8(0xcd0000, -1, 0x30a0000, 1);
    API_MapActor_SetBehavior(22, (int)gScript_884__0200a874);
    API_MapActor_WaitScript(22);
    OvlFunc_884_200a2e0(22, 0x2000, 0x3c);
    API_Func_80925cc(19, 2);
    OvlFunc_884_200a2c8(19, 10);
    API_MapActor_DoAnim(22, 3);
    OvlFunc_884_200a2c8(22, 20);
    API_MapActor_DoAnim(19, 3);
    API_CutsceneWait(10);
    OvlFunc_884_200a2e0(19, 0x4000, 30);
    OvlFunc_884_200a2c8(0x4013, 10);
    OvlFunc_884_200a2e0(26, 0xe000, 30);
    API_MapActor_DoAnim(26, 3);
    OvlFunc_884_200a2e0(19, 0x8000, 30);
    API_Func_80925cc(19, 2);
    OvlFunc_884_200a2c8(0x4013, 10);
    API_MapActor_TurnToFaceActor(0, 25, 0x28);
    API_Func_8092adc(0, 0, 0);
    OvlFunc_884_200a2e0(25, 0, 20);
    OvlFunc_884_200a2e0(26, 0x8000, 30);
    API_MapActor_DoAnim(26, 3);
    OvlFunc_884_200a2c8(26, 30);
    OvlFunc_884_200a2e0(26, 0xc000, 30);
    API_MapActor_DoAnim(26, 3);
    API_MapActor_DoAnim(22, 3);
    API_MapActor_SetAnim(25, 2);
    actor = (struct Actor *)__MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_TravelTo(25, *(short *)((char *)actor + 0xa), *(short *)((char *)actor + 0x12));
    }
    API_MapActor_WaitMovement(25);
    API_MapActor_SetPos(25, 0, 0);
    API_MapActor_SetAnim(26, 2);
    actor = (struct Actor *)__MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_TravelTo(26, *(short *)((char *)actor + 0xa), *(short *)((char *)actor + 0x12));
    }
    API_MapActor_WaitMovement(26);
    API_MapActor_SetPos(26, 0, 0);
    API_MapActor_SetAnim(22, 2);
    actor = (struct Actor *)__MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_TravelTo(22, *(short *)((char *)actor + 0xa), *(short *)((char *)actor + 0x12));
    }
    API_MapActor_WaitMovement(22);
    API_MapActor_SetPos(22, 0, 0);
    API_Func_8092a1c(19, 0x10000, gScript_884__0200ac00);
    API_SetFlag(0x840);
    API_CutsceneEnd();
}
extern unsigned char *__Func_8093554(void);
extern void __Func_800fe9c(void);
extern void __Func_8095268(void);
extern void __Func_8093530(void);
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

void OvlFunc_884_20095b4(void)
{
    extern unsigned char gScript_884__0200aa48[];
    extern unsigned char gScript_884__0200ab2c[];
    extern unsigned char *CS884_Field __asm__("iwram_3001ebc");
    extern void __Actor_SetSpriteFlags(void *, int);
    extern void __Func_800fe9c(void);
    extern void __Func_8095214(void);
    extern void __Func_8095240(void);
    extern void __Func_8095268(void);
    extern struct Actor *CS884_Actor(int) __asm__("__MapActor_GetActor");
    extern void __MapActor_RunScript(int, void *);
    struct Actor *actor;

    API_PlaySound(17);
    API_CutsceneStart();
    API_Func_80933f8(-1, -1, -1, 0);
    API_WaitFrames(1);
    API_Func_80933f8(0x400000, 0x900000, 0x15e0000, 0);
    __Func_800fe9c();
    API_WaitFrames(1);
    API_MapActor_SetPos(0, 0x300000, 0x15a0000);
    API_MapActor_SetPos(25, 0x4e0000, 0x1660000);
    API_MapActor_SetPos(23, 0x670000, 0x1560000);
    API_MapActor_SetPos(24, 0x700000, 0x1680000);
    API_Func_8092adc(23, 0x8000, 0);
    API_Func_8092adc(24, 0x8000, 0);
    API_MapActor_SetAnim(0, 16);
    actor = CS884_Actor(0);
    actor->scale.x = -0x10000;
    actor = CS884_Actor(0);
    __Actor_SetSpriteFlags(actor, 0);
    API_MapActor_SetAnim(25, 7);
    actor = CS884_Actor(25);
    actor->sprite->rotation = 0x1555;
    actor = CS884_Actor(25);
    __Actor_SetSpriteFlags(actor, 0);
    *(int *)(CS884_Field + 0x1c0) = 0x100;
    API_MapTransitionIn();
    __Func_8095268();
    API_WaitMapTransition();
    API_CutsceneWait(0x50);
    API_Func_8092adc(23, 0x3000, 0);
    API_Func_8092adc(24, 0xc000, 0x28);
    API_MapActor_DoAnim(23, 3);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(24, 3);
    API_Func_8092adc(23, 0x8000, 10);
    API_Func_8092adc(24, 0x8000, 10);
    API_Func_8092b08(0, 3);
    API_Func_8092b08(25, 3);
    API_MapActor_SetSpeed(23, 0x26666, 0x13333);
    actor = CS884_Actor(23);
    actor->bounce = 0x28f;
    actor->gravity = 0x8000;
    API_MapActor_SetBehavior(23, (int)gScript_884__0200aa48);
    API_CutsceneWait(24);
    API_MapActor_SetSpeed(24, 0x26666, 0x13333);
    actor = CS884_Actor(24);
    actor->bounce = 0x28f;
    actor->gravity = 0x8000;
    __MapActor_RunScript(24, gScript_884__0200ab2c);
    API_CutsceneWait(0x28);
    __Func_8095214();
    __Func_8095240();
    API_WaitFrames(20);
    __Func_8095240();
    API_WaitFrames(0x3c);
    __Func_8095240();
    API_WaitFrames(20);
    __Func_8095214();
    API_CutsceneWait(0x28);
    *(int *)(CS884_Field + 0x1c8) = 0x78;
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_ClearFlag(0x834);
    API_Func_8091e9c(9);
    API_CutsceneEnd();
}


void OvlFunc_884_20097c8(void)
{
    extern unsigned char gScript_884__0200ac00[];
    extern unsigned char gScript_884__0200ac14[];
    extern unsigned char gScript_884__0200ac90[];
    extern unsigned char gScript_884__0200acf8[];
    extern unsigned char gScript_884__0200ad74[];
    extern unsigned char gScript_884__0200adf0[];
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern void __Actor_SetSpriteFlags(void *, int);
    extern void __Func_800fe9c(void);
    extern void __Func_807808c(int);
    extern int __Func_8091a58(int, int);
    extern struct Actor *CS884_CameraActor(void) __asm__("__Func_8093554");
    extern struct Actor *CS884_Actor(int) __asm__("__MapActor_GetActor");
    extern void __MapActor_RunScript(int, void *);
    extern void __MapActor_SetExtra(int, int);
    extern void OvlFunc_884_200a2c8(unsigned int, unsigned int);
    extern void OvlFunc_884_200a2e0(unsigned int, unsigned int, unsigned int);
    struct Actor *actor;
    unsigned char *transitionState;

    __Func_807808c(1);
    API_CutsceneStart();
    API_CopyMapTiles(0x2a, 0x35, 0x2a, 0x36, 3, 1);
    API_Func_80933f8(0xb40000, 0x100000, 0x26a0000, 0);
    __Func_800fe9c();
    API_WaitFrames(1);
    __Actor_SetSpriteFlags(CS884_Actor(22), 0);
    __Actor_SetSpriteFlags(CS884_Actor(23), 0);
    __Actor_SetSpriteFlags(CS884_Actor(24), 0);
    __Actor_SetSpriteFlags(CS884_Actor(25), 0);
    __Actor_SetSpriteFlags(CS884_Actor(26), 0);
    __Actor_SetSpriteFlags(CS884_Actor(29), 0);
    API_Func_8092b08(0, 1);
    API_Func_8092b08(1, 1);
    API_Func_8092b08(17, 1);
    API_Func_8092b08(16, 1);
    API_Func_8092b08(15, 1);
    API_MapActor_SetPos(0, 0xd00000, 0x32e0000);
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_CutsceneWait(0x50);
    API_MapActor_Emote(12, 0x101, 0x28);
    OvlFunc_884_200a2e0(12, 0x7000, 20);
    API_MessageID(0x11fa);
    OvlFunc_884_200a2c8(12, 10);
    API_MapActor_Emote(11, 0x102, 20);
    OvlFunc_884_200a2e0(11, 0x1000, 10);
    OvlFunc_884_200a2c8(11, 10);
    API_MapActor_DoAnim(12, 3);
    API_CutsceneWait(10);
    API_Func_80925cc(11, 2);
    OvlFunc_884_200a2c8(11, 10);
    API_MapActor_Emote(12, 0x100, 0x28);
    API_MapActor_SetSpeed(12, 0xcccc, 0x6666);
    API_MapActor_TravelToAnimWait(12, 0xb8, 0x26a);
    OvlFunc_884_200a2e0(12, 0x3000, 0x3c);
    OvlFunc_884_200a2c8(12, 20);
    API_MapActor_SetSpeed(11, 0x10000, 0x8000);
    API_MapActor_TravelToAnimWait(11, 0xa8, 0x26a);
    OvlFunc_884_200a2e0(11, 0xf000, 10);
    API_MapActor_SetAnim(11, 4);
    OvlFunc_884_200a2c8(11, 20);
    OvlFunc_884_200a2e0(12, 0x7000, 10);
    API_Func_80925cc(12, 1);
    API_ActorMessage(12, 0);
    API_CutsceneWait(10);
    API_MapActor_SetSpeed(30, 0x26666, 0x13333);
    API_MapActor_SetPos(30, 0x6e0000, 0x2e80000);
    API_WaitFrames(2);
    API_MapActor_SetAnim(30, 3);
    API_MapActor_SetBehavior(30, (int)gScript_884__0200ac14);
    API_CutsceneWait(0x28);
    API_Func_8092a1c(11, 0x1001e, gScript_884__0200ac00);
    API_Func_8092a1c(12, 0x1001e, gScript_884__0200ac00);
    API_MapActor_WaitScript(30);
    API_MapActor_SetIdle(11);
    API_MapActor_SetIdle(12);
    API_CutsceneWait(0x3c);
    API_MapActor_Emote(11, 0x105, 0);
    API_MapActor_Emote(12, 0x105, 0x78);
    API_Func_8092adc(11, 0x1000, 0);
    OvlFunc_884_200a2e0(12, 0x7000, 0x50);
    OvlFunc_884_200a2e0(11, 0x5000, 0x28);
    OvlFunc_884_200a2e0(11, 0x1000, 20);
    API_MapActor_DoAnim(11, 3);
    API_CutsceneWait(20);
    OvlFunc_884_200a2e0(12, 0x5000, 0x3c);
    OvlFunc_884_200a2e0(12, 0x3000, 0x28);
    OvlFunc_884_200a2e0(12, 0x5000, 0x3c);
    API_MapActor_Emote(12, 0x101, 0x50);
    API_Func_8092adc(11, 0x3000, 0);
    API_MapActor_TravelToAnimWait(12, 0xb8, 0x276);
    API_CutsceneWait(20);
    OvlFunc_884_200a2e0(12, 0x3000, 20);
    OvlFunc_884_200a2e0(12, 0x5000, 20);
    OvlFunc_884_200a2e0(12, 0x3000, 20);
    API_MapActor_Emote(12, 0x101, 0x28);
    API_MapActor_Emote(11, 0x101, 0x28);
    API_MapActor_TravelToAnimWait(11, 0xa8, 0x276);
    API_CutsceneWait(20);
    OvlFunc_884_200a2e0(11, 0x3000, 0x28);
    OvlFunc_884_200a2e0(11, 0x5000, 0x28);
    OvlFunc_884_200a2e0(11, 0x3000, 0x28);
    API_MapActor_Emote(11, 0x101, 0x28);
    OvlFunc_884_200a2e0(11, 0x1000, 10);
    OvlFunc_884_200a2c8(11, 20);
    API_MapActor_DoAnim(12, 3);
    OvlFunc_884_200a2c8(12, 10);
    API_MapActor_Emote(11, 0x100, 20);
    OvlFunc_884_200a2e0(11, 0x5000, 20);
    OvlFunc_884_200a2e0(11, 0x3000, 20);
    OvlFunc_884_200a2e0(11, 0x5000, 20);
    OvlFunc_884_200a2e0(11, 0x5000, 0x3c);
    API_MapActor_DoAnim(11, 3);
    OvlFunc_884_200a2c8(11, 10);
    actor = CS884_Actor(30);
    if (actor != NULL) {
        API_MapActor_SetPos(31, actor->pos.x, actor->pos.z);
    }
    API_WaitFrames(2);
    CS884_Actor(30)->flags &= ~1;
    CS884_Actor(31)->flags &= ~1;
    API_Func_8092b08(30, 2);
    API_Func_8092b08(31, 2);
    API_MapActor_SetSpeed(31, 0x39999, 0x1cccc);
    API_MapActor_SetAnim(31, 2);
    API_MapActor_SetBehavior(31, (int)gScript_884__0200ac90);
    API_CutsceneWait(20);
    API_MapActor_SetAnim(30, 3);
    API_MapActor_SetSpeed(30, 0x4cccc, 0x26666);
    __MapActor_RunScript(30, gScript_884__0200ac90);
    API_CutsceneWait(0x3c);
    API_Func_80925cc(12, 2);
    OvlFunc_884_200a2e0(12, 0x7000, 10);
    OvlFunc_884_200a2c8(12, 10);
    API_Func_80925cc(11, 1);
    API_CutsceneWait(20);
    OvlFunc_884_200a2e0(11, 0x1000, 10);
    API_MapActor_DoAnim(11, 3);
    OvlFunc_884_200a2c8(11, 20);
    API_MapActor_SetAnim(12, 3);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(11, 3);
    API_CutsceneWait(20);
    API_MapActor_SetSpeed(11, 0x26666, 0x13333);
    API_MapActor_SetSpeed(12, 0x26666, 0x13333);
    API_MapActor_SetBehavior(11, (int)gScript_884__0200acf8);
    API_CutsceneWait(10);
    API_Func_80933d4(0x26666, 0x4ccc);
    CS884_CameraActor()->__unk55 = 0;
    API_Func_80933f8(0xd70000, 0x100000, 0x3210000, 1);
    API_CutsceneWait(10);
    API_MapActor_SetBehavior(12, (int)gScript_884__0200ad74);
    API_MapActor_WaitScript(12);
    OvlFunc_884_200a2e0(12, 0x3000, 0x78);
    API_Func_80925cc(13, 2);
    API_CutsceneWait(20);
    OvlFunc_884_200a2c8(13, 20);
    API_Func_8092adc(0, 0, 0);
    OvlFunc_884_200a2e0(1, 0x9000, 20);
    OvlFunc_884_200a2e0(0, 0xc000, 10);
    OvlFunc_884_200a2e0(1, 0xb000, 10);
    API_MapActor_SetAnim(0, 3);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(1, 3);
    API_CutsceneWait(0x28);
    API_Func_80925cc(16, 2);
    API_CutsceneWait(20);
    OvlFunc_884_200a2c8(16, 10);
    API_MapActor_SetSpeed(16, 0x10000, 0x8000);
    API_MapActor_TravelToAnimWait(16, 0xd8, 0x320);
    API_Func_8092adc(16, 0x4000, 0);
    __Func_8091a58(0xb4, 0);
    API_MapActor_TravelToAnimWait(16, 0x108, 0x320);
    API_Func_8092adc(16, 0x6000, 0);
    API_MapActor_Emote(1, 0x102, 0x28);
    OvlFunc_884_200a2e0(1, 0xf000, 10);
    OvlFunc_884_200a2c8(1, 10);
    API_MapActor_DoAnim(17, 4);
    OvlFunc_884_200a2c8(17, 10);
    API_Func_8092adc(1, 0x1000, 0);
    API_MapActor_Emote(1, 0x103, 20);
    API_MapActor_Jump(1, 4, 0x3c);
    API_Func_80925cc(14, 2);
    API_CutsceneWait(20);
    OvlFunc_884_200a2e0(14, 0xd000, 10);
    OvlFunc_884_200a2c8(14, 0x3c);
    API_MapActor_Emote(1, 0x102, 0);
    API_MapActor_Emote(16, 0x102, 0);
    API_MapActor_Emote(17, 0x102, 0);
    API_MapActor_Emote(18, 0x102, 0);
    API_MapActor_Emote(19, 0x102, 0x50);
    API_MapActor_Emote(17, 0x100, 0);
    OvlFunc_884_200a2c8(17, 0x3c);
    __MapActor_SetExtra(0, 17);
    __MapActor_SetExtra(1, 17);
    API_MapActor_TravelToAnimWait(17, 0xd8, 0x320);
    API_Func_8092adc(17, 0x4000, 0);
    OvlFunc_884_200a2c8(17, 0x3c);
    __Func_8091a58(0xcf, 0);
    API_MapActor_SetIdle(0);
    API_MapActor_SetIdle(1);
    API_MapActor_TravelToAnimWait(17, 0x110, 0x330);
    API_Func_8092adc(17, 0x8000, 0);
    API_Func_80925cc(1, 2);
    OvlFunc_884_200a2e0(1, 0x9000, 10);
    OvlFunc_884_200a2c8(1, 10);
    API_Func_8092adc(14, 0x3000, 0);
    OvlFunc_884_200a2e0(0, 0, 10);
    API_MapActor_Emote(0, 0x101, 0x3c);
    API_Func_80925cc(16, 1);
    OvlFunc_884_200a2c8(16, 10);
    OvlFunc_884_200a2e0(1, 0xf000, 10);
    API_MapActor_Emote(1, 0x101, 20);
    API_MapActor_DoAnim(16, 4);
    OvlFunc_884_200a2c8(16, 10);
    API_MapActor_DoAnim(18, 3);
    API_ActorMessage(18, 0);
    API_Func_8092adc(1, 0xd000, 0);
    API_MapActor_SetAnim(18, 4);
    API_ActorMessage(18, 0);
    API_Func_809259c(18, 3);
    API_ActorMessage(18, 0);
    API_MapActor_DoAnim(16, 3);
    API_MapActor_SetAnim(19, 3);
    API_MapActor_SetAnim(17, 3);
    API_CutsceneWait(10);
    API_MapActor_SetAnim(24, 3);
    API_MapActor_SetAnim(18, 3);
    API_MapActor_SetAnim(27, 3);
    API_CutsceneWait(10);
    API_MapActor_SetAnim(28, 3);
    API_CutsceneWait(10);
    API_MapActor_SetAnim(25, 3);
    API_MapActor_SetAnim(20, 3);
    API_MapActor_DoAnim(21, 3);
    API_MapActor_Jump(15, 2, 10);
    API_MapActor_Jump(15, 4, 0x28);
    OvlFunc_884_200a2c8(15, 10);
    API_Func_8092adc(1, 0xb000, 0);
    OvlFunc_884_200a2e0(0, 0xc000, 20);
    OvlFunc_884_200a2e0(15, 0xd000, 10);
    OvlFunc_884_200a2c8(15, 10);
    OvlFunc_884_200a2e0(15, 0x9000, 20);
    OvlFunc_884_200a2e0(15, 0x5000, 10);
    API_MapActor_SetAnim(11, 3);
    API_MapActor_SetAnim(14, 3);
    API_MapActor_SetAnim(17, 3);
    API_MapActor_SetAnim(20, 3);
    API_MapActor_SetAnim(23, 3);
    API_MapActor_SetAnim(26, 3);
    API_MapActor_SetAnim(29, 3);
    API_CutsceneWait(10);
    API_MapActor_SetAnim(12, 3);
    API_MapActor_SetAnim(15, 3);
    API_MapActor_SetAnim(18, 3);
    API_MapActor_SetAnim(21, 3);
    API_MapActor_SetAnim(24, 3);
    API_MapActor_SetAnim(27, 3);
    API_CutsceneWait(10);
    API_MapActor_SetAnim(13, 3);
    API_MapActor_SetAnim(16, 3);
    API_MapActor_SetAnim(19, 3);
    API_MapActor_SetAnim(22, 3);
    API_MapActor_SetAnim(25, 3);
    API_MapActor_DoAnim(28, 3);
    API_CutsceneWait(0x50);
    API_MapActor_Jump(11, 4, 0);
    API_MapActor_Jump(14, 4, 0);
    API_MapActor_Jump(17, 4, 0);
    API_MapActor_Jump(20, 4, 0);
    API_MapActor_Jump(23, 4, 0);
    API_MapActor_Jump(26, 4, 0);
    API_MapActor_Jump(29, 4, 0);
    API_MapActor_Jump(12, 4, 0);
    API_MapActor_Jump(15, 4, 0);
    API_MapActor_Jump(18, 4, 0);
    API_MapActor_Jump(21, 4, 0);
    API_MapActor_Jump(24, 4, 0);
    API_MapActor_Jump(27, 4, 0);
    API_MapActor_Jump(13, 4, 0);
    API_MapActor_Jump(16, 4, 0);
    API_MapActor_Jump(19, 4, 0);
    API_MapActor_Jump(22, 4, 0);
    API_MapActor_Jump(25, 4, 0);
    API_MapActor_Jump(28, 4, 0);
    API_Func_801776c(0x1214, 1);
    API_CutsceneWait(0x50);
    CS884_Actor(0)->flags |= 1;
    CS884_Actor(1)->flags |= 1;
    API_MapActor_Emote(0, 0x102, 0);
    API_MapActor_Emote(1, 0x102, 0x50);
    OvlFunc_884_200a2e0(0, 0x4000, 10);
    OvlFunc_884_200a2e0(1, 0x5000, 20);
    API_MapActor_SetSpeed(0, 0xcccc, 0x6666);
    API_MapActor_SetBehavior(0, (int)gScript_884__0200adf0);
    API_CutsceneWait(20);
    API_Func_80933d4(0x6666, 0xccc);
    API_Func_80933f8(0xd80000, 0x100000, 0x3890000, 1);
    API_CutsceneWait(20);
    API_MapActor_SetSpeed(1, 0xcccc, 0x6666);
    API_MapActor_SetBehavior(1, (int)gScript_884__0200adf0);
    API_CutsceneWait(0x3c);
    transitionState = *(unsigned char **)CS_iwram_3001ebc;
    *(int *)(transitionState + 0x1c0) = 0x100;
    *(int *)(transitionState + 0x1c8) = 0x3c;
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_MapActor_SetIdle(0);
    API_MapActor_SetIdle(1);
    API_Func_8091e9c(10);
    API_CutsceneEnd();
}

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

void OvlFunc_884_200a39c(struct Actor *actor) {
    struct Actor *target;
    s32 sinVal;

    target = actor->linkedActor;

    if (++actor->waveCounter > 0x1f) {
        API_DeleteActor((int)actor);
    } else {
        sinVal = __sin(actor->waveCounter << 10);
        actor->scale.x = sinVal;
        actor->scale.y = sinVal;
        actor->pos.x = target->pos.x;
        actor->pos.y += 0x10000;
        actor->pos.z = target->pos.z + (0x10000 - sinVal) * 5 + 0x80000;
    }
}

void OvlFunc_884_200a3ec(struct Actor *actor) {
    struct Actor *target;
    s32 sinVal;

    target = actor->linkedActor;

    if (++actor->waveCounter > 0x1f) {
        API_DeleteActor((int)actor);
    } else {
        sinVal = __sin(actor->waveCounter << 10);
        actor->scale.x = sinVal;
        actor->scale.y = -sinVal;
        actor->pos.x = target->pos.x;
        actor->pos.y += 0x10000;
        actor->pos.z = target->pos.z - (0x10000 - sinVal) * 5 + 0x100000;
    }
}

#include "sprite/slot.h"

extern void OvlFunc_884_200a3ec(struct Actor *);
extern void OvlFunc_884_200a39c(struct Actor *);

struct CS884_SpriteOamBitView {
    void *dest;
    u16 posY : 8;
    u16 affineMode : 2;
    u16 objMode : 2;
    u16 mosaic : 1;
    u16 bpp : 1;
    u16 shape : 2;
    u16 posX : 9;
    u16 affineParam : 5;
    u16 size : 2;
    u16 tileNum : 10;
    u16 priority : 2;
    u16 palette : 4;
};

struct CS884_E30SlotView {
    unsigned char pad[0x46];
    u16 slot;
};

void OvlFunc_884_200a440(unsigned int arg0)
{
    extern struct CS884_E30SlotView *iwram_3001f30_view __asm__("iwram_3001f30");
    extern struct SpriteSlot gSpriteSlots[];
    extern void __Sprite_SetAnim(struct Sprite *, int);
    extern void __Func_8003f3c(int);

    struct CS884_E30SlotView *e30 = iwram_3001f30_view;
    struct Actor *parent = (struct Actor *)arg0;
    struct Actor *actors[2];
    int i;

    API_PlaySound(0x83);
    for (i = 0; i <= 1; i++) {
        struct Actor *actor = API_CreateActor(0x1a, parent->pos.x, parent->pos.y, parent->pos.z);
        actors[i] = actor;
        if (actor != 0) {
            struct Sprite *sprite;

            actor->floorPos = parent->floorPos;
            sprite = actor->sprite;
            actor->__unk55 = 0;
            actor->waveCounter = 0;
            actor->linkedActor = parent;
            if (sprite != 0) {
                struct CS884_SpriteOamBitView *oam = (struct CS884_SpriteOamBitView *)&sprite->oam;

                __Sprite_SetAnim(sprite, 0);
                sprite->flags = 0;
                __Func_8003f3c(sprite->slot);
                sprite->slot = e30->slot;
                sprite->flags1D.bit0 = 1;
                oam->tileNum = gSpriteSlots[sprite->slot].vramOffset >> 5;
                oam->bpp = 0;
                oam->shape = 1;
                oam->size = 2;
                sprite->layers[0]->frameID = 0;
            }
        }
    }

    actors[0]->update = OvlFunc_884_200a3ec;
    ((struct CS884_SpriteOamBitView *)&actors[0]->sprite->oam)->priority = 2;
    ((struct CS884_SpriteOamBitView *)&actors[1]->sprite->oam)->priority = 2;
    actors[1]->update = OvlFunc_884_200a39c;
    actors[1]->flags = 2;
}


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
