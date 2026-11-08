/* rom_794ac0 (overlay file 899): consolidated TU — vault_rooms_1 map overlay. */

#include "nonmatching.h"
#include "api.h"
#include "actor.h"
#include "sprite.h"

INCLUDE_ASM("asm/maps/vault_rooms_1/exports.s");

extern void OvlFunc_899_200c624();
extern void OvlFunc_899_20083bc();
extern void OvlFunc_899_2008354();
extern void OvlFunc_899_200c5f4();
extern void OvlFunc_899_200c63c();

extern unsigned char gOvl_0200d8f8[];

unsigned int VaultRooms1_GetEntrances(void) {
    return (unsigned int)gOvl_0200d8f8;
}
extern unsigned char gOvl_0200da60[];

unsigned int VaultRooms1_GetSpecialExits(void) {
    return (unsigned int)gOvl_0200da60;
}
extern unsigned char gOvl_0200da80[];

unsigned int VaultRooms1_GetExits(void) {
    return (unsigned int)gOvl_0200da80;
}

#include "state/global_state.h"
extern GlobalState gState;
extern unsigned char Lm899_5cc8[] __asm__(".Lm899_5cc8");
extern unsigned char Lm899_5ab8[] __asm__(".Lm899_5ab8");

unsigned char *VaultRooms1_GetActors(void)
{
    unsigned char *r5;
    GlobalState *p;
    int f1;

    p = &gState;
    f1 = *(short *)((char *)p + 0x1c2);
    switch (f1) {
    case 15:
    case 16:
    case 17:
        r5 = Lm899_5cc8;
        break;
    default:
        r5 = Lm899_5ab8;
        break;
    }
    __Func_808b868(r5);
    return r5;
}

void OvlFunc_899_2008080(void) {
    extern void __Func_8093c00(void);

    if (((struct Actor *)__MapActor_GetActor(0))->facing >= (0xa0 << 8) &&
        ((struct Actor *)__MapActor_GetActor(0))->facing <= (0xe0 << 8))
    {
        __Func_8093c00();
        API_Func_8010704(0x29, 0x55, 1, 1, 0x2a, 0x55);
    }
    else if (((struct Actor *)__MapActor_GetActor(0))->facing >= (0x80 << 6) &&
             ((struct Actor *)__MapActor_GetActor(0))->facing <= (0xc0 << 7))
    {
        __Func_8093c00();
        API_Func_8010704(0x2b, 0x55, 1, 1, 0x2a, 0x55);
    }
}

void OvlFunc_899_20080fc(void)
{
  int *p;
  int new_var;
  int new_var2;
  __CutsceneStart();
  p = (int *) __MapActor_GetActor(0x1a);
  if ((((*((int *) (((char *) p) + 8))) >> 1) >> 19) == 0x2a)
  {
    new_var2 = 0x29;
    new_var = 0x18;
    __Func_8010704(0x65, new_var, 3, 4, new_var2, new_var);
    __SetFlag(0x859);
  }
  __CutsceneEnd();
}

void OvlFunc_899_200813c(void)
{
    unsigned char *p;
    int v5;
    extern int _MSG_1280;

    p = __MapActor_GetActor(0);
    v5 = *(unsigned short *)(p + 6);
    __CutsceneStart();
    if ((v5 + 0xffff5fff) <= 0x3ffe) {
        __Func_80b0278(4, 0x13);
    } else {
        if (!__GetFlag(0x855)) {
            __MessageID((int)&_MSG_1280);
        } else {
            __MessageID(0x1370);
        }
        __ActorMessage(0x13, 0);
    }
    __CutsceneEnd();
}

void OvlFunc_899_200819c(void)
{
    unsigned char *p;
    int v5;

    p = __MapActor_GetActor(0);
    v5 = *(unsigned short *)(p + 6);
    __CutsceneStart();
    if ((v5 + 0xffff5fff) <= 0x3ffe) {
        __Func_80b0278(5, 0x14);
    } else {
        if (!__GetFlag(0x855)) {
            __MessageID(0x1282);
        } else {
            __MessageID(0x1372);
        }
        __ActorMessage(0x14, 0);
    }
    __CutsceneEnd();
}

void OvlFunc_899_20081fc(void)
{
    unsigned char *p;
    int v5;

    p = __MapActor_GetActor(0);
    v5 = *(unsigned short *)(p + 6);
    __CutsceneStart();
    if ((v5 + 0xffff5fff) <= 0x3ffe) {
        __Func_80b3284(1, 0x17);
    } else {
        if (!__GetFlag(0x855)) {
            __MessageID(0x128d);
        } else {
            __MessageID(0x137b);
        }
        __ActorMessage(0x17, 0);
    }
    __CutsceneEnd();
}

extern void __CutsceneStart(void);
extern int __Func_8078500(void);
extern void __MapActor_DoAnim(int a, int b);
extern void __CutsceneWait(int a);
extern void __MessageID(int a);
extern void __ActorMessage(int a, int b);
extern void __Func_808f1c0(int a, int b);
extern void __Func_8091a58(int a, int b);
extern void __CutsceneEnd(void);

void OvlFunc_899_200825c(void) {
    __CutsceneStart();
    if (__Func_8078500() == 0) {
        __MapActor_DoAnim(0x12, 4);
        __CutsceneWait(0x14);
        __MessageID(0x1384);
        __ActorMessage(0x12, 0);
    } else {
        __Func_808f1c0(0xe7, 3);
        __Func_8091a58(0xe7, 0);
    }
    __CutsceneEnd();
}

void OvlFunc_899_20082a4(void)
{
  int a;
  __ResetPlayerSpeed();
  __MessageID(0x12bb);
 do { a = 0; } while (0);
  __ActorMessage(1, a);
}

extern void __Func_801776c();

void OvlFunc_899_20082c0(void) {
    __CutsceneStart();
    __Func_801776c(0x92b, 1);
    __Func_801776c(0x94b, 1);
    __CutsceneEnd();
}


void OvlFunc_899_20082e8(void) {
    __CutsceneStart();
    __Func_801776c(0x929, 1);
    __Func_801776c(0x949, 1);
    __CutsceneEnd();
}

extern unsigned char Lm899_61fc[] __asm__(".Lm899_61fc");
extern unsigned char Lm899_6250[] __asm__(".Lm899_6250");
extern unsigned char Lm899_5e30[] __asm__(".Lm899_5e30");

int VaultRooms1_GetEvents(void)
{
    GlobalState *p = &gState;
    int f1 = *(short *)((char *)p + 0x1c2);
    switch (f1) {
    case 0xf: case 0x10: case 0x11:
        return (int)Lm899_61fc;
    default:
        if (__GetFlag(0x855)) return (int)Lm899_6250;
        return (int)Lm899_5e30;
    }
}


void OvlFunc_899_2008354(unsigned int arg0)
{
	unsigned int r5;

	r5 = arg0;
	__MapActor_SetAnim(r5, 1);
	OvlFunc_899_200c624(r5, 0, 2);
	__ActorMessage(r5, 0);
}

void OvlFunc_899_2008378(int n) {
    unsigned char *p;
    int flag;

    p = (unsigned char *)__MapActor_GetActor(n) + 0x5b;
    flag = 0;
    *p = 1;
    __CutsceneStart();
    API_MapActor_SetAnim(n, 1);
    __CutsceneWait(2);
    API_ActorMessage(n, 0);
    __CutsceneEnd();
    *p = flag;
}

extern unsigned char iwram_3001ebc[];

void OvlFunc_899_20083bc(unsigned int arg0) {
    unsigned char *r5 = (unsigned char *)arg0;

    OvlFunc_899_200c624((unsigned int)r5, 0, 2);
    __ShowActorMessage_NoWait(r5, 0);
    if (__Func_8091c7c(0, 0)) {
        unsigned short *p;
        p = (unsigned short *)(*(unsigned char **)iwram_3001ebc + (0xec << 1));
        *p = *p + 1;
    }
    __ActorMessage(r5, 0);
}


void OvlFunc_899_2008400(void) {
    __CutsceneStart();
    __MessageID(0x1247);
    __MapActor_SetAnim(0xb, 1);
    OvlFunc_899_20083bc(0xb);
    __CutsceneEnd();
}

void OvlFunc_899_2008428(void) {
    API_CutsceneStart();
    API_MessageID(0x1253);
    OvlFunc_899_20083bc(0xf);
    API_Func_8092adc(0xf, 0x80 << 8, 0);
    API_CutsceneEnd();
}

extern int *__MapActor_GetActor(int a);
extern void __Func_80b0278(int a, int b);
extern int __GetFlag(int flag);

void OvlFunc_899_2008454(void) {
    unsigned char *p;
    unsigned int v5;

    p = __MapActor_GetActor(0);
    v5 = *(unsigned short *)(p + 6);
    __CutsceneStart();
    if ((v5 + 0xffff5fff) <= 0x3ffe) {
        __Func_80b0278(6, 0x15);
    } else {
        if (!__GetFlag(0x855)) {
            __MessageID(0x1284);
            OvlFunc_899_20083bc(0x15);
        } else {
            __MessageID(0x1374);
            __ActorMessage(0x15, 0);
        }
    }
    __CutsceneEnd();
}


void OvlFunc_899_20084bc(void)
{
    __CutsceneStart();
    if (__GetFlag(0x855) == 0) {
        __MessageID(0x1243);
    } else {
        __MessageID(0x1353);
    }
    OvlFunc_899_2008354(9);
    __CutsceneEnd();
}


void OvlFunc_899_20084f4(void) {
    __CutsceneStart();
    if (__GetFlag(0x855)) {
        __MessageID(0x135c);
    } else {
        __MessageID(0x124c);
    }
    OvlFunc_899_2008354(0xc);
    __CutsceneEnd();
}

void OvlFunc_899_200852c(void) {
    API_CutsceneStart();
    if (API_GetFlag(0x856) != 0) {
        if (API_GetFlag(0x851) == 0) {
            API_MessageID(0x1276);
            OvlFunc_899_2008354(0x10);
            API_CutsceneWait(0xa);
            OvlFunc_899_200c63c(0x10, 3, 0x14);
            API_SetFlag(0x851);
        } else {
            API_MessageID(0x1278);
        }
    } else {
        API_MessageID(0x1250);
    }
    OvlFunc_899_2008354(0x10);
    API_CutsceneEnd();
}


void OvlFunc_899_200859c(void) {
    __CutsceneStart();
    __MessageID(0x128e);
    OvlFunc_899_2008354(0x12);
    __CutsceneEnd();
}

extern int Lm899_64a8[] __asm__(".Lm899_64a8");
extern int Lm899_64c0[] __asm__(".Lm899_64c0");
extern void __MapActor_SetBehavior(int, int);
extern void __MapActor_WaitScript(int);

void OvlFunc_899_20085bc(void)
{
    struct Actor *actor = (struct Actor *)__MapActor_GetActor(0x18);

    __CutsceneStart();
    __Func_80925cc(0x18, 2);
    __MessageID(0x12ac);
    __ActorMessage(0x18, 0);
    __MapActor_SetSpeed(0x18, 0x80 << 11, 0x80 << 10);

    if ((unsigned int)((actor->facing & (0xf0 << 8)) + 0xffffb000) <= (0xc0 << 7)) {
        if (actor->waveCounter <= 2) {
            __MapActor_SetBehavior(0x18, Lm899_64a8[actor->waveCounter]);
            actor->waveCounter++;
        } else {
            __MapActor_SetBehavior(0x18, Lm899_64c0[actor->waveCounter]);
            actor->waveCounter--;
        }
    } else {
        if (actor->waveCounter > 2) {
            __MapActor_SetBehavior(0x18, Lm899_64a8[actor->waveCounter]);
            actor->waveCounter++;
        } else {
            __MapActor_SetBehavior(0x18, Lm899_64c0[actor->waveCounter]);
            actor->waveCounter--;
        }
    }

    if (actor->waveCounter > 5) {
        actor->waveCounter = 0;
    }
    if (actor->waveCounter < 0) {
        actor->waveCounter = 5;
    }

    __MapActor_WaitScript(0x18);
    __CutsceneEnd();
}
INCLUDE_ASM("asm/maps/vault_rooms_1/OvlFunc_899_2008690.s");


void OvlFunc_899_20087cc(void) {
    __CutsceneStart();
    __MessageID(0x1356);
    OvlFunc_899_20083bc(0xa);
    __CutsceneEnd();
}


void OvlFunc_899_20087ec(void) {
    __CutsceneStart();
    __MessageID(0x1359);
    OvlFunc_899_2008354(0xb);
    __CutsceneEnd();
}


void OvlFunc_899_200880c(void) {
    __CutsceneStart();
    __MessageID(0x1368);
    OvlFunc_899_20083bc(0xe);
    __CutsceneEnd();
}

extern int bytes(int);

extern void __SetFlag(int);
extern void __Func_8092adc(int, int, int);
extern void __Func_80925cc(int, int);
extern void __ShowActorMessage_NoWait(int, int);
extern int __Func_8091c7c(int, int);
extern unsigned char *iwram_3001ebc__a1 __asm__("iwram_3001ebc");
extern int _MSG_1360;

static inline int GetFlag(int flag)
{
    extern int __GetFlag(int);
    return __GetFlag(flag);
}

void OvlFunc_899_200882c(void) {
    unsigned char *m;
    unsigned char *b;

    __CutsceneStart();
    if (!GetFlag(0x857)) {
        m = (unsigned char *)&_MSG_1360;
        __MessageID((int)m);
        OvlFunc_899_200c5f4(0x10, 0x14);
        OvlFunc_899_200c63c(0x10, 3, 0x14);
        OvlFunc_899_200c5f4(0x10, 0x1e);
        __Func_8092adc(0x10, 0, 0);
        __CutsceneWait(0x1e);
        __Func_80925cc(0x10, 2);
        __CutsceneWait(0x1e);
        OvlFunc_899_200c624(0, 0x10, 0x14);
        {
            unsigned int p2 = 0x14;
            OvlFunc_899_200c63c(0x10, 3, p2);
        }
        b = iwram_3001ebc__a1;
        b += 0xec << 1;
        *(unsigned short *)b = *(unsigned short *)b + 1;
        if (__Func_8078500() == 0) {
            __MessageID((int)(m + 3));
            OvlFunc_899_200c5f4(0x10, 0x14);
            __CutsceneEnd();
            return;
        }
        __SetFlag(0x857);
        __Func_8091a58(0xbd, 0);
    }
    __MessageID(0x1364);
    __ShowActorMessage_NoWait(0x10, 0);
    __CutsceneWait(0x14);
    if (__Func_8091c7c(0, 0) != 0) {
        b = iwram_3001ebc__a1;
        b += 0xec << 1;
        *(unsigned short *)b = *(unsigned short *)b + 1;
    }
    __ActorMessage(0x10, 0);
    __CutsceneEnd();
}

void OvlFunc_899_200891c(void)
{
    __CutsceneStart();
    OvlFunc_899_200c624(0x12, 0, 2);
    if (__GetFlag(0x85b) == 0) {
        __MessageID(0x137c);
        __ShowActorMessage_NoWait(0x12, 0);
    } else {
        __MessageID(0x1385);
        __ShowActorMessage_NoWait(0x12, 0);
    }
    if (__Func_8091c7c(0, 0) == 0) {
        __CutsceneWait(0x14);
        __ActorMessage(0x12, 0);
        __CutsceneWait(0x14);
        __Func_80925cc(0x12, 2);
        __CutsceneWait(0x14);
        if (__Func_8078500() == 0) {
            __MapActor_DoAnim(0x12, 4);
            __CutsceneWait(0x14);
            __MessageID(0x1384);
            __ActorMessage(0x12, 0);
        } else {
            __Func_808f1c0(0xe7, 3);
            __Func_8091a58(0xe7, 0);
            __SetFlag(0x85b);
        }
    } else {
        unsigned short *p;
        p = (unsigned short *)(*(unsigned char **)iwram_3001ebc + (0xec << 1));
        *p = *p + 1;
        __CutsceneWait(0x14);
        __MapActor_DoAnim(0x12, 3);
        __CutsceneWait(0x14);
        __ActorMessage(0x12, 0);
    }
    MapActor_Func_8092adc(0x100, 0x12, 0);
    __CutsceneEnd();
}

extern void OvlFunc_899_2008378(int n);

void OvlFunc_899_2008a14(void) {
    __CutsceneStart();
    if (__GetFlag(0x855) == 0) {
        __MessageID(0x1245);
    } else {
        __MessageID(0x1355);
    }
    OvlFunc_899_2008378(9);
    __CutsceneEnd();
}

void OvlFunc_899_2008a4c(void) {
    __CutsceneStart();
    if (__GetFlag(0x855) == 0) {
        __MessageID(0x124b);
    } else {
        __MessageID(0x135b);
    }
    OvlFunc_899_2008378(0xb);
    __CutsceneEnd();
}

void OvlFunc_899_2008a84(void) {
    __CutsceneStart();
    if (__GetFlag(0x855) == 0) {
        __MessageID(0x124e);
    } else {
        __MessageID(0x135e);
    }
    OvlFunc_899_2008378(0xc);
    __CutsceneEnd();
}

void OvlFunc_899_2008abc(void) {
    __CutsceneStart();
    if (__GetFlag(0x855) == 0) {
        __MessageID(0x127c);
    } else {
        __MessageID(0x136c);
    }
    OvlFunc_899_2008378(0x10);
    __CutsceneEnd();
}


void OvlFunc_899_2008af4(void)
{
    __CutsceneStart();
    if (__GetFlag(0x855) == 0) {
        __MessageID(0x1294);
    } else if (__GetFlag(0x85b) == 0) {
        __MessageID(0x1382);
    } else {
        __MessageID(0x1cf4);
    }
    OvlFunc_899_2008378(0x12);
    __CutsceneEnd();
}


void OvlFunc_899_2008b48(void)
{
    extern int __Func_8091c7c(int, int);
    extern void OvlFunc_899_2008de4(void);
    extern void OvlFunc_899_200c5f4(unsigned int, unsigned int);
    extern void OvlFunc_899_200c624(unsigned int, unsigned int, unsigned int);
    extern void OvlFunc_899_200c63c(unsigned int, unsigned int, unsigned int);
    extern void OvlFunc_899_200c658(unsigned int, unsigned int);
    extern void OvlFunc_899_200c684(void);
    extern void __PlayMapMusic(void);
    int flagValue1;
    int choice2;
    struct Actor *actor;

    API_CutsceneStart();
    API_MapActor_SetSpeed(0, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(1, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(2, 0xcccc, 0x6666);
    API_PlaySound(19);
    API_MapActor_TravelToAnimWait(0, 0x180, 0x198);
    API_Func_8092adc(0, 0xc000, 0);
    API_MapActor_SetPos(1, 0x1800000, 0x1980000);
    API_MapActor_TravelToAnimWait(1, 0x170, 0x198);
    API_Func_8092adc(1, 0xd000, 20);
    flagValue1 = API_GetFlag(0x850);
    if (flagValue1 == 0) {
        API_SetFlag(0x850);
        OvlFunc_899_200c658(2, 0);
        API_CutsceneWait(0x28);
        OvlFunc_899_200c684();
        API_MessageID(0x1256);
        API_PlaySound(0x3c);
        API_CutsceneWait(30);
        OvlFunc_899_200c63c(2, 3, 30);
        OvlFunc_899_200c5f4(2, 30);
        API_Func_809259c(0, 1);
        API_Func_80925cc(1, 1);
        API_CutsceneWait(20);
        OvlFunc_899_200c658(2, 0);
        API_CutsceneWait(0x28);
        OvlFunc_899_200c684();
        OvlFunc_899_200c5f4(2, 30);
        OvlFunc_899_200c624(0, 1, 0x32);
        API_Func_8092adc(0, 0xc000, 0);
        API_Func_8092adc(1, 0xd000, 0);
        API_CutsceneWait(20);
        OvlFunc_899_200c658(2, 0);
        API_CutsceneWait(0x28);
        OvlFunc_899_200c684();
        API_Func_80925cc(2, 1);
        OvlFunc_899_200c5f4(2, 0x32);
        API_MapActor_SetAnim(0, 3);
        OvlFunc_899_200c63c(1, 3, 20);
        OvlFunc_899_200c63c(2, 3, 20);
        OvlFunc_899_200c5f4(2, 0x28);
        API_Func_80925cc(2, 1);
        API_CutsceneWait(30);
        API_Func_8092adc(2, 0xc000, 0);
        API_CutsceneWait(30);
        API_MapActor_TravelToAnimWait(2, 0x178, 0x178);
        API_CutsceneWait(0x28);
        OvlFunc_899_200c624(0, 1, 0x32);
        API_Func_8092adc(0, 0xc000, 0);
        API_Func_8092adc(1, 0xd000, 0);
        API_Func_80925cc(2, 1);
        API_CutsceneWait(0x32);
        OvlFunc_899_200c63c(2, 3, 30);
        API_Func_8092adc(2, 0x4000, 0);
        API_CutsceneWait(10);
        API_ActorMessage(2, 0);
        __ShowActorMessage_NoWait(2, 0);
    } else {
        API_PlaySound(0x3c);
        API_MessageID(0x125d);
        __ShowActorMessage_NoWait(2, 0);
    }
    choice2 = __Func_8091c7c(0, 0);
    if (choice2 == 0) {
        OvlFunc_899_2008de4();
        API_SetFlag(0x856);
        API_MapActor_SetAnim(2, 2);
        actor = (struct Actor *)__MapActor_GetActor(0);
        if (actor != 0) {
            API_MapActor_TravelTo(2, *(short *)((char *)actor + 0xa), *(short *)((char *)actor + 0x12));
        }
        API_MapActor_WaitMovement(2);
        API_MapActor_SetPos(2, 0, 0);
    } else {
        API_ActorMessage(2, 0);
    }
    API_MapActor_SetAnim(1, 2);
    actor = (struct Actor *)__MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_TravelTo(1, *(short *)((char *)actor + 0xa), *(short *)((char *)actor + 0x12));
    }
    API_MapActor_WaitMovement(1);
    API_MapActor_SetPos(1, 0, 0);
    __PlayMapMusic();
    API_CutsceneEnd();
}
/* pooled literal (ldr rN, =0x125f in the original) */
__asm__(".equ .Lconst_125f, 0x125f");
static inline void VaultTalkByte(unsigned char *p,int value) { *p = value; }

void OvlFunc_899_2008de4(void)
{
    extern int __Func_8091c7c(int, int);
    extern void __Func_8097adc(void);
    extern int VaultTalkActor(int) __asm__("__MapActor_GetActor");
    extern void OvlFunc_899_200c5f4(unsigned int, unsigned int);
    extern void OvlFunc_899_200c60c(unsigned int, unsigned int, unsigned int);
    extern void OvlFunc_899_200c624(unsigned int, unsigned int, unsigned int);
    extern void OvlFunc_899_200c63c(unsigned int, unsigned int, unsigned int);
    extern void OvlFunc_899_200c658(unsigned int, unsigned int);
    extern void OvlFunc_899_200c684(void);
    extern int VaultTalkShowMessage(int,int) __asm__("__ShowActorMessage_NoWait");
    extern unsigned char VaultTalkMessage[] __asm__(".Lconst_125f");
    int messageBase;
    unsigned char *actor;

    API_CutsceneWait(20);
    actor = (unsigned char *)VaultTalkActor(2);
    actor += 0x5b;
    VaultTalkByte(actor, 0);
    API_MapActor_Jump(2, 4, 0);
    API_CutsceneWait(0x28);
    messageBase = (int)VaultTalkMessage;
    API_MessageID(messageBase);
    API_CutsceneWait(20);
    OvlFunc_899_200c5f4(2, 20);
    API_MapActor_Emote(2, 0x101, 0);
    API_CutsceneWait(0x32);
    OvlFunc_899_200c5f4(2, 30);
    API_MapActor_TravelToAnimWait(2, 0x178, 0x188);
    OvlFunc_899_200c658(2, 0);
    API_CutsceneWait(0x28);
    OvlFunc_899_200c684();
    API_Func_80925cc(0, 1);
    actor = (unsigned char *)VaultTalkActor(0);
    actor += 0x5a;
    VaultTalkByte(actor, 0xfe & *actor);
    API_MapActor_TravelToAnimWait(0, 0x180, 0x1a8);
    API_CutsceneWait(1);
    actor = (unsigned char *)VaultTalkActor(0);
    actor += 0x5a;
    VaultTalkByte(actor, *actor | 1);
    API_CutsceneWait(30);
    API_ActorMessage(2, 0);
    API_MapActor_Surprise(0, 0x102);
    API_MapActor_Surprise(1, 0x102);
    API_CutsceneWait(0x3c);
    API_MapActor_SetAnim(0, 3);
    OvlFunc_899_200c63c(1, 3, 30);
    API_MapActor_Emote(2, 0x101, 0);
    API_CutsceneWait(0x3c);
    API_Func_80925cc(2, 1);
    API_CutsceneWait(10);
    OvlFunc_899_200c63c(2, 3, 20);
    API_ActorMessage(2, 0);
    API_Func_80925cc(1, 2);
    API_CutsceneWait(10);
    OvlFunc_899_200c60c(1, 0, 30);
    API_Func_80925cc(0, 2);
    API_CutsceneWait(10);
    OvlFunc_899_200c60c(0, 1, 0x28);
    API_MapActor_Emote(0, 0x102, 0);
    API_MapActor_Emote(1, 0x102, 0);
    API_CutsceneWait(0x3c);
    API_MapActor_Emote(2, 0x102, 0);
    API_CutsceneWait(0x3c);
    VaultTalkShowMessage(2, 0);
    API_MapActor_Face(0, 2, 0);
    API_MapActor_Face(1, 2, 0);
    __Func_8091c7c(0, 0);
    API_CutsceneWait(30);
    OvlFunc_899_200c63c(2, 3, 10);
    API_MapActor_TravelToAnimWait(2, 0x180, 0x198);
    API_CutsceneWait(10);
    API_Func_801776c((messageBase + 5), 1);
    API_MessageID((messageBase + 6));
    API_MapActor_TurnToFaceActor(2, 1, 0);
    OvlFunc_899_200c60c(0, 1, 20);
    API_MapActor_Emote(1, 0x102, 0);
    API_CutsceneWait(0x3c);
    API_Func_80925cc(1, 1);
    actor = (unsigned char *)VaultTalkActor(1);
    actor += 0x5a;
    VaultTalkByte(actor, 0xfe & *actor);
    API_MapActor_TravelToAnimWait(1, 0x160, 0x198);
    API_CutsceneWait(1);
    actor = (unsigned char *)VaultTalkActor(1);
    actor += 0x5a;
    VaultTalkByte(actor, 1 | *actor);
    API_CutsceneWait(10);
    API_MapActor_TravelToAnim(2, 0x170, 0x198);
    API_CutsceneWait(20);
    API_MapActor_TravelToAnimWait(0, 0x170, 0x1a8);
    API_MapActor_Face(0, 1, 0);
    API_MapActor_WaitMovement(2);
    OvlFunc_899_200c658(2, 1);
    OvlFunc_899_200c63c(1, 4, 10);
    API_ActorMessage(1, 0);
    OvlFunc_899_200c684();
    OvlFunc_899_200c624(2, 0, 30);
    API_ActorMessage(2, 0);
    API_Func_80925cc(0, 1);
    API_CutsceneWait(30);
    OvlFunc_899_200c63c(0, 3, 30);
    OvlFunc_899_200c63c(2, 3, 10);
    API_ActorMessage(2, 0);
    API_Func_80925cc(1, 2);
    API_MapActor_Face(1, 0, 0);
    API_ActorMessage(1, 0);
    API_MapActor_Face(0, 1, 0);
    OvlFunc_899_200c63c(0, 3, 0x28);
    API_MapActor_Face(0, 2, 0);
    OvlFunc_899_200c60c(1, 2, 30);
    API_MapActor_Emote(0, 0x101, 0);
    API_MapActor_Emote(1, 0x101, 0);
    API_CutsceneWait(0x3c);
    OvlFunc_899_200c63c(2, 3, 20);
    API_ActorMessage(2, 0);
    API_MapActor_Emote(1, 0x103, 0);
    API_CutsceneWait(0x3c);
    OvlFunc_899_200c60c(1, 0, 10);
    API_ActorMessage(1, 0);
    API_MapActor_Emote(2, 0x100, 0);
    API_CutsceneWait(0x3c);
    API_ActorMessage(2, 0);
    API_MapActor_Emote(1, 0x102, 0);
    API_CutsceneWait(0x3c);
    API_Func_801776c((messageBase + 13), 1);
    API_MessageID((messageBase + 14));
    API_MapActor_TurnToFaceActor(2, 0, 0);
    API_MapActor_Face(1, 0, 0);
    API_MapActor_Emote(0, 0x102, 0);
    API_CutsceneWait(0x3c);
    OvlFunc_899_200c658(2, 0);
    __Func_8097adc();
    OvlFunc_899_200c5f4(1, 30);
    OvlFunc_899_200c684();
    API_MapActor_TurnToFaceActor(2, 1, 0);
    OvlFunc_899_200c63c(2, 3, 10);
    OvlFunc_899_200c5f4(2, 20);
    API_MapActor_TurnToFaceActor(2, 0, 0);
    OvlFunc_899_200c63c(0, 3, 20);
    API_Func_80925cc(1, 1);
    API_CutsceneWait(20);
    OvlFunc_899_200c63c(1, 4, 10);
    OvlFunc_899_200c5f4(1, 30);
    API_MapActor_Face(2, 1, 0);
    API_MapActor_Emote(2, 0x101, 0);
    API_CutsceneWait(30);
    OvlFunc_899_200c624(0, 1, 10);
    API_MapActor_SetAnim(0, 3);
    OvlFunc_899_200c63c(1, 3, 30);
    API_MapActor_Face(0, 2, 0);
    API_MapActor_Face(1, 2, 0);
    API_MapActor_Face(2, 0, 0);
    API_MapActor_Emote(2, 0x106, 0);
    API_CutsceneWait(0x3c);
    OvlFunc_899_200c5f4(2, 10);
    API_MapActor_SetAnim(0, 3);
    OvlFunc_899_200c63c(1, 3, 20);
    OvlFunc_899_200c63c(2, 4, 20);
    OvlFunc_899_200c5f4(2, 20);
    API_MapActor_Emote(0, 0x101, 0);
    API_MapActor_Emote(1, 0x101, 0);
    API_CutsceneWait(0x3c);
    OvlFunc_899_200c63c(2, 3, 10);
    OvlFunc_899_200c5f4(2, 30);
    API_MapActor_Emote(0, 0x105, 0);
    API_CutsceneWait(0x3c);
    OvlFunc_899_200c63c(2, 4, 10);
    OvlFunc_899_200c5f4(2, 30);
    OvlFunc_899_200c63c(2, 3, 10);
    API_MapActor_SetAnim(0, 3);
    OvlFunc_899_200c63c(1, 3, 20);
    API_Func_80917d0(2, 1);
    API_MessageID((messageBase + 22));
    API_Func_80925cc(2, 1);
    API_ActorMessage(2, 0);
}
INCLUDE_ASM("asm/maps/vault_rooms_1/OvlFunc_899_2009348.s");

extern void __PlaySound(int);
extern void __Func_8091e9c(int);

void OvlFunc_899_2009990(void) {
    __PlaySound(0x7b);
    __Func_8091e9c(0xb);
}

extern unsigned char iwram_3001ebc[];

void OvlFunc_899_20099a4(void) {
    unsigned char *base;

    API_MapActor_SetSpeed(0, 0x80 << 8, 0x80 << 7);
    API_MapActor_TravelToAnim(0, 0xb6 << 2, 0xcc << 1);
    base = *(unsigned char **)iwram_3001ebc;
    *(unsigned int *)(base + 0x1c8) = 0x10;
    API_PlaySound(0x7b);
    __Func_8091e9c(0xf);
}

extern void __MapActor_SetSpeed(int, int, int);
extern void __MapActor_TravelToAnimWait(int, int, int);

void OvlFunc_899_20099e4(void)
{
    unsigned int r3;

    API_MapActor_SetSpeed(0, 0x8000, 0x4000);
    API_MapActor_TravelToAnimWait(0, 0x2e8, 0x198);

    if (__GetFlag(0x854) == 0) {
        __CutsceneStart();
        __MessageID(0x12c3);
        __ActorMessage(8, 0);
        __CutsceneEnd();
    }
    r3 = *(unsigned int *)iwram_3001ebc;
    *(unsigned int *)(r3 + (0xe4 << 1)) = 0x10;
    __PlaySound(0x7b);
    __Func_8091e9c(0xe);
}

extern void OvlFunc_899_200c60c();
extern void OvlFunc_899_200aba0(void);
extern unsigned char gScript_899__0200d830[];
extern unsigned char gScript_899__0200d560[];

void OvlFunc_899_2009a4c(void) {
    struct Actor *a;
    struct Actor *b;

    a = (struct Actor *)__MapActor_GetActor(0x18);
    b = (struct Actor *)__MapActor_GetActor(0x19);
    API_CutsceneStart();
    API_MapActor_SetSpeed(0, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(1, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(2, 0xcccc, 0x6666);
    API_MapActor_TravelToAnimWait(0, 0xe8, 0xae << 2);
    API_MapActor_TravelToAnimWait(0, 0xc8, 0xae << 2);
    API_CutsceneWait(0xa);
    API_MapActor_Emote(0x19, 0x80 << 1, 0);
    API_MapActor_Emote(0x18, 0x80 << 1, 0);
    API_CutsceneWait(0x3c);
    OvlFunc_899_200c60c(0x19, 0, 0xa);
    API_Func_80925cc(0x18, 2);
    API_CutsceneWait(0x14);
    API_MessageID(0x1296);
    OvlFunc_899_200c5f4(0x18, 0x14);
    API_MapActor_Surprise(0x19, 0x81 << 1);
    API_CutsceneWait(0x3c);
    OvlFunc_899_200c5f4(0x19, 0x14);
    API_Func_80925cc(0x18, 1);
    OvlFunc_899_200c5f4(0x18, 0x1e);
    API_MapActor_SetSpeed(0x18, 0x80 << 11, 0x80 << 10);
    API_MapActor_SetSpeed(0x19, 0xe0 << 10, 0xe0 << 9);
    API_MapActor_SetBehavior(0x19, (int)gScript_899__0200d830);
    API_MapActor_SetBehavior(0x18, (int)gScript_899__0200d560);
    API_MapActor_WaitScript(0x18);
    API_Func_8010704(0xe, 0x2d, 3, 1, 0xe, 0x2c);
    API_SetFlag(0x852);
    API_SetFlag(0xc0 << 2);
    API_StartTask(OvlFunc_899_200aba0, 0xc8 << 4);
    a->waveCounter = 1;
    b->waveCounter = 3;
    API_CutsceneEnd();
}

extern unsigned char CS899_Message1299[] __asm__(".Lconst_1299");
/* pooled literal (ldr rN, =0x1299 in the original) */
__asm__(".equ .Lconst_1299, 0x1299");

void OvlFunc_899_2009ba0(void)
{
    extern void OvlFunc_899_200aba0(void);
    extern unsigned char gScript_899__0200d650[];
    extern unsigned char gScript_899__0200d678[];
    extern unsigned char gScript_899__0200d768[];
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern int __Func_8091c7c(int, int);
    extern unsigned char *CS899_GetActor(unsigned int) __asm__("__MapActor_GetActor");
    extern void OvlFunc_899_200c5f4(unsigned int, unsigned int);
    extern void OvlFunc_899_200c60c(unsigned int, unsigned int, unsigned int);
    extern void OvlFunc_899_200c624(unsigned int, unsigned int, unsigned int);
    extern void OvlFunc_899_200c63c(unsigned int, unsigned int, unsigned int);
    extern int CS899_ShowMessage(int, int) __asm__("__ShowActorMessage_NoWait");
    unsigned char * saved24;
    unsigned char * saved25;
    int choice1;
    int message;
    unsigned char *sceneCounter;
    unsigned char *actor;

    actor = CS899_GetActor(24);
    saved24 = (unsigned char *)(actor);
    actor = CS899_GetActor(25);
    saved25 = (unsigned char *)(actor);
    API_CutsceneStart();
    API_StopTask(OvlFunc_899_200aba0);
    API_ClearFlag(0x300);
    saved24 += 0x64;
    if ((*(short *)saved24 <= 3) != 0) {
        API_MapActor_SetBehavior(24, (int)gScript_899__0200d678);
    } else {
        API_MapActor_SetBehavior(24, (int)gScript_899__0200d650);
    }
    if ((*(short *)(saved25 + 0x64) <= 2) != 0) {
        API_MapActor_SetBehavior(25, (int)gScript_899__0200d768);
    } else {
        API_MapActor_SetBehavior(25, (int)gScript_899__0200d650);
    }
    API_MapActor_SetSpeed(0, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(1, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(2, 0xcccc, 0x6666);
    API_MapActor_TravelToAnimWait(0, 0xf8, 0x2d8);
    API_MapActor_SetPos(2, 0xf80000, 0x2d80000);
    API_MapActor_SetPos(1, 0xf80000, 0x2d80000);
    API_MapActor_TravelToAnim(2, 0x108, 0x2e8);
    API_MapActor_TravelToAnimWait(1, 0xe8, 0x2e8);
    API_MapActor_WaitMovement(2);
    API_Func_8092adc(0, 0x4000, 0);
    API_MapActor_Face(1, 0, 0);
    OvlFunc_899_200c60c(2, 0, 30);
    API_Func_80925cc(2, 1);
    message = (int)CS899_Message1299;
    API_MessageID(message);
    API_ActorMessage(2, 0);
    API_MapActor_Face(0, 2, 0);
    OvlFunc_899_200c60c(1, 2, 20);
    API_MapActor_SetAnim(0, 3);
    OvlFunc_899_200c63c(1, 3, 20);
    OvlFunc_899_200c624(0, 1, 10);
    CS899_ShowMessage(1, 0);
    choice1 = __Func_8091c7c(0, 0);
    if (choice1 != 0) {
        sceneCounter = *(unsigned char **)CS_iwram_3001ebc;
        sceneCounter += 0x1d8;
        ++*(unsigned short *)sceneCounter;
    }
    OvlFunc_899_200c5f4(1, 30);
    API_MessageID(message + 4);
    API_MapActor_Face(0, 2, 0);
    OvlFunc_899_200c60c(1, 2, 0x32);
    API_MapActor_Emote(2, 0x100, 0);
    API_CutsceneWait(0x3c);
    OvlFunc_899_200c624(0, 1, 0x32);
    API_MapActor_Face(0, 2, 0);
    OvlFunc_899_200c60c(1, 2, 30);
    OvlFunc_899_200c63c(2, 3, 10);
    OvlFunc_899_200c5f4(2, 20);
    API_MapActor_Emote(0, 0x102, 0);
    API_MapActor_Emote(1, 0x102, 0);
    API_CutsceneWait(0x3c);
    OvlFunc_899_200c63c(2, 3, 20);
    OvlFunc_899_200c5f4(2, 30);
    API_MessageID(0x129f);
    API_ActorMessage(1, 0);
    API_Func_8092adc(0, 0x4000, 0);
    API_CutsceneWait(0x28);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    OvlFunc_899_200c63c(2, 3, 0x32);
    API_MapActor_TravelToAnim(2, 0xf8, 0x2d8);
    API_MapActor_TravelToAnimWait(1, 0xf8, 0x2d8);
    API_MapActor_SetPos(1, 0, 0);
    API_MapActor_SetPos(2, 0, 0);
    API_MapActor_SetPos(24, 0x680000, 0x2b80000);
    API_MapActor_SetPos(25, 0x780000, 0x2b80000);
    API_Func_8092adc(24, 0, 0);
    API_Func_8092adc(25, 0x8000, 0);
    API_Func_8010704(14, 0x32, 3, 1, 14, 0x2c);
    API_CutsceneEnd();
}

extern void OvlFunc_899_200cb2c(void);

void OvlFunc_899_2009e64(void) {
    __SetFlag(0x107);
    __SetFlag(0x94 << 2);
    OvlFunc_899_200cb2c();
}

extern void __MapActor_Surprise(int, int);
extern void __MapActor_SetSpeed(int, int, int);
extern void __Func_8010704(int, int, int, int, int, int);
extern int _MSG_12a0;

void OvlFunc_899_2009e80(void) {
    int a;
    unsigned short v;
    int n6;

    __CutsceneWait(0x1e);
    __Func_80925cc(0x18, 1);
    __CutsceneWait(0x14);
    __MessageID((int) (&_MSG_12a0));
    OvlFunc_899_200c5f4(0x18, 0x14);
    __Func_8092adc(0x19, 0, 0x14);
    API_MapActor_Surprise(0x19, 0x102);
    __Func_80925cc(0x19, 2);
    OvlFunc_899_200c5f4(0x19, 0x14);
    __MapActor_DoAnim(0x18, 4);
    __CutsceneWait(0x14);
    OvlFunc_899_200c5f4(0x18, 0x14);
    API_MapActor_SetSpeed(0x18, 0x40000, 0x20000);
    API_MapActor_SetSpeed(0x19, 0x38000, 0x1c000);
    __MapActor_SetBehavior(0x19, (int) gScript_899__0200d830);
    __MapActor_SetBehavior(0x18, (int) gScript_899__0200d560);
    __MapActor_WaitScript(0x18);

    a = (int)__MapActor_GetActor(0x18);
    v = 1;
    a += 0x64;
    *(unsigned short *)a = v;

    a = (int)__MapActor_GetActor(0x19);
    v = 3;
    a += 0x64;
    *(unsigned short *)a = v;

    n6 = 0x2c;
    __Func_8010704(0xe, 0x30, 4, 1, 0xe, n6);
}

INCLUDE_ASM("asm/maps/vault_rooms_1/OvlFunc_899_2009f50.s");

static inline void VaultActorByte(unsigned char *field, int value) { *field = value; }

void OvlFunc_899_200a1c8(void)
{
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern void __Func_800fe9c(void);
    extern int __Func_8091c7c(int, int);
    extern void __Func_80935b0(unsigned int, unsigned int, unsigned int, unsigned int);
    extern void OvlFunc_899_200c5f4(unsigned int, unsigned int);
    extern void OvlFunc_899_200c60c(unsigned int, unsigned int, unsigned int);
    extern void OvlFunc_899_200c624(unsigned int, unsigned int, unsigned int);
    extern void OvlFunc_899_200c63c(unsigned int, unsigned int, unsigned int);
    extern void __PlayMapMusic(void);
    extern int VaultConversationPrompt(int, int) __asm__("__ShowActorMessage_NoWait");
    unsigned char * map;
    int acceptedAll;
    int choice1;
    int choice2;
    int choice3;
    unsigned char *actor;

    __PlayMapMusic();
    API_Func_8092b08(0, 1);
    actor = (unsigned char *)((int)__MapActor_GetActor(0));
    actor += 0x23;
    VaultActorByte(actor, 1 | *actor);
    __Func_80935b0(0x200000, 0x2400000, 0x1900000, 0x3a80000);
    API_MapActor_SetSpeed(0, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(1, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(2, 0xcccc, 0x6666);
    API_MapActor_SetPos(0, 0xf80000, 0x2d80000);
    API_MapActor_SetPos(2, 0x1080000, 0x2e80000);
    API_MapActor_SetPos(1, 0xe80000, 0x2e80000);
    actor = (unsigned char *)((int)__MapActor_GetActor(0));
    ((struct Actor *)actor)->sprite->oam.priority = 1;
    actor = (unsigned char *)((int)__MapActor_GetActor(1));
    ((struct Actor *)actor)->sprite->oam.priority = 1;
    actor = (unsigned char *)((int)__MapActor_GetActor(2));
    ((struct Actor *)actor)->sprite->oam.priority = 1;
    API_MapActor_TurnToFaceActor(0, 2, 0);
    OvlFunc_899_200c60c(1, 2, 30);
    API_MapActor_SetPos(24, 0x680000, 0x2b80000);
    API_MapActor_SetPos(25, 0x780000, 0x2b80000);
    API_MapActor_TurnToFaceActor(24, 25, 0);
    API_SetCameraTarget(0, 0);
    API_Func_8093530();
    __Func_800fe9c();
    API_CutsceneWait(30);
    map = (unsigned char *)((*(unsigned char **)CS_iwram_3001ebc));
    *(int *)(map + 0x1c8) = 24;
    *(int *)(map + 0x1c0) = 0x201;
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_CutsceneWait(0x28);
    API_Func_80925cc(1, 1);
    API_CutsceneWait(10);
    API_MessageID(0x12ae);
    OvlFunc_899_200c5f4(1, 20);
    OvlFunc_899_200c63c(2, 3, 20);
    OvlFunc_899_200c5f4(2, 20);
    OvlFunc_899_200c624(0, 1, 0x32);
    API_MapActor_Face(0, 2, 0);
    OvlFunc_899_200c60c(1, 2, 20);
    OvlFunc_899_200c63c(2, 4, 20);
    API_ActorMessage(2, 0);
    API_MapActor_Emote(0, 0x102, 0);
    API_MapActor_Emote(1, 0x102, 0);
    API_CutsceneWait(0x3c);
    OvlFunc_899_200c63c(2, 3, 20);
    OvlFunc_899_200c5f4(2, 30);
    API_Func_80925cc(1, 1);
    API_CutsceneWait(20);
    OvlFunc_899_200c624(0, 1, 20);
    VaultConversationPrompt(1, 0);
    acceptedAll = 0;
    choice1 = __Func_8091c7c(0, 0);
    if (choice1 != 0) {
        API_CutsceneWait(20);
        API_Func_809259c(2, 2);
        OvlFunc_899_200c63c(1, 4, 30);
        VaultConversationPrompt(1, 0);
        choice2 = __Func_8091c7c(0, 0);
        if (choice2 != 0) {
            API_CutsceneWait(20);
            API_MapActor_Emote(2, 0x102, 0);
            API_CutsceneWait(0x3c);
            API_Func_80925cc(2, 2);
            OvlFunc_899_200c624(0, 2, 20);
            VaultConversationPrompt(2, 0);
            choice3 = __Func_8091c7c(2, 0);
            if (choice3 != 0) {
                API_CutsceneWait(20);
                API_MapActor_Emote(2, 0x105, 0);
                API_CutsceneWait(0x3c);
                OvlFunc_899_200c5f4(2, 20);
                OvlFunc_899_200c60c(1, 2, 10);
                API_Func_80925cc(1, 1);
                API_CutsceneWait(10);
                OvlFunc_899_200c5f4(1, 10);
                OvlFunc_899_200c60c(2, 1, 20);
                API_MapActor_Emote(2, 0x101, 0);
                API_CutsceneWait(0x3c);
                OvlFunc_899_200c63c(2, 4, 20);
                OvlFunc_899_200c5f4(1, 10);
                OvlFunc_899_200c624(1, 0, 20);
                OvlFunc_899_200c63c(1, 3, 20);
                acceptedAll = 1;
                OvlFunc_899_200c5f4(1, 20);
            }
        }
    }
    if (acceptedAll == 0) {
        API_MessageID(0x12bc);
        OvlFunc_899_200c5f4(1, 20);
        OvlFunc_899_200c624(1, 0, 20);
        OvlFunc_899_200c5f4(1, 20);
    }
    API_MapActor_Emote(0, 0x105, 0);
    API_CutsceneWait(0x3c);
    API_Func_80925cc(1, 1);
    OvlFunc_899_200c5f4(1, 10);
    OvlFunc_899_200c63c(1, 3, 10);
    API_MapActor_TurnToFaceActor(1, 2, 0);
    OvlFunc_899_200c624(0, 2, 10);
    API_ActorMessage(1, 0);
    OvlFunc_899_200c63c(2, 3, 10);
    API_MapActor_TravelToAnim(2, 0xf8, 0x2d8);
    API_MapActor_TravelToAnimWait(1, 0xf8, 0x2d8);
    API_MapActor_SetPos(1, 0, 0);
    API_MapActor_SetPos(2, 0, 0);
}
extern unsigned char iwram_3001ebc[];
extern void OvlFunc_899_200a6e4(unsigned int arg0, int arg1, unsigned int arg2, unsigned int arg3);

extern unsigned char Lm899_55b0[] __asm__(".Lm899_55b0");
extern unsigned char Lm899_55d8[] __asm__(".Lm899_55d8");
extern unsigned char Lm899_5538[] __asm__(".Lm899_5538");
extern unsigned char Lm899_5718[] __asm__(".Lm899_5718");
extern unsigned char Lm899_5894[] __asm__(".Lm899_5894");
extern unsigned char Lm899_56c8[] __asm__(".Lm899_56c8");
extern unsigned char Lm899_57cc[] __asm__(".Lm899_57cc");
extern unsigned char Lm899_56f0[] __asm__(".Lm899_56f0");
extern unsigned char Lm899_57a4[] __asm__(".Lm899_57a4");
extern unsigned char Lm899_5600[] __asm__(".Lm899_5600");

extern unsigned char gScript_899__0200d8bc[];
extern unsigned char gScript_899__0200d678[];
extern unsigned char gScript_899__0200d830[];
extern unsigned char gScript_899__0200d858[];
extern unsigned char gScript_899__0200d560[];
extern unsigned char gScript_899__0200d650[];
extern unsigned char gScript_956__0200d808[];
extern unsigned char gScript_899__0200d768[];

void OvlFunc_899_200a564(void)
{
    short val;

    val = *(short *)(*(unsigned char **)iwram_3001ebc + (0xb6 << 1));
    switch (val) {
    case 0xb:
        OvlFunc_899_200a6e4(0x18, 1, 2, (unsigned int)Lm899_55b0);
        OvlFunc_899_200a6e4(0x19, 3, 4, (unsigned int)gScript_899__0200d8bc);
        break;
    case 0xc:
        OvlFunc_899_200a6e4(0x18, 1, 4, (unsigned int)gScript_899__0200d678);
        OvlFunc_899_200a6e4(0x18, 2, 3, (unsigned int)Lm899_55d8);
        OvlFunc_899_200a6e4(0x19, 1, 3, (unsigned int)gScript_899__0200d830);
        break;
    case 0xd:
        OvlFunc_899_200a6e4(0x18, 2, 1, (unsigned int)Lm899_5538);
        OvlFunc_899_200a6e4(0x18, 3, 6, (unsigned int)Lm899_5718);
        OvlFunc_899_200a6e4(0x19, 2, 4, (unsigned int)Lm899_5894);
        break;
    case 0xe:
        OvlFunc_899_200a6e4(0x18, 3, 2, (unsigned int)Lm899_55b0);
        OvlFunc_899_200a6e4(0x19, 4, 3, (unsigned int)gScript_899__0200d858);
        break;
    case 0xf:
        OvlFunc_899_200a6e4(0x18, 4, 5, (unsigned int)Lm899_56c8);
        OvlFunc_899_200a6e4(0x19, 1, 2, (unsigned int)Lm899_57cc);
        break;
    case 0x10:
        OvlFunc_899_200a6e4(0x18, 4, 1, (unsigned int)gScript_899__0200d560);
        OvlFunc_899_200a6e4(0x18, 5, 6, (unsigned int)Lm899_56f0);
        OvlFunc_899_200a6e4(0x19, 3, 1, (unsigned int)Lm899_57a4);
        break;
    case 0x11:
        OvlFunc_899_200a6e4(0x18, 5, 4, (unsigned int)gScript_899__0200d650);
        OvlFunc_899_200a6e4(0x18, 6, 3, (unsigned int)Lm899_5600);
        OvlFunc_899_200a6e4(0x19, 4, 2, (unsigned int)gScript_956__0200d808);
        break;
    case 0x12:
        OvlFunc_899_200a6e4(0x18, 6, 5, (unsigned int)Lm899_56c8);
        OvlFunc_899_200a6e4(0x19, 2, 1, (unsigned int)gScript_899__0200d768);
        break;
    }
}


void OvlFunc_899_200a6e4(unsigned int arg0, int arg1, unsigned int arg2, unsigned int arg3) {
    short *p;

    p = (short *)((char *)__MapActor_GetActor(arg0) + 0x64);
    if (*p == arg1) {
        __MapActor_SetBehavior(arg0, arg3);
        *p = arg2;
    }
}

extern void __ClearFlag(int);

void OvlFunc_899_200a71c(void)
{
    int r5;
    int r3;

    r5 = __MapActor_GetActor(0)[2];
    r3 = __MapActor_GetActor(0)[4];
    r5 >>= 20;
    r3 >>= 20;
    r5 -= 0x22;
    if ((unsigned int)r5 <= 1 && r3 > 0x28 && r3 <= 0x2a)
        __SetFlag(0x94 << 2);
    else
        __ClearFlag(0x94 << 2);
}


static inline void VaultByte(unsigned char *field, int value) { *field = value; }
static inline void VaultHalf(unsigned short *field, int value) { *field = value; }

int VaultRooms1_MapInit(void)
{
    extern void OvlFunc_899_200a71c(void);
    extern void OvlFunc_899_200aba0(void);
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern void __Actor_SetSpriteFlags(void *, int);
    extern int VaultGetActor(int) __asm__("__MapActor_GetActor");
    extern void OvlFunc_899_200abf0(void);
    extern void OvlFunc_899_200adb4(void);
    extern void OvlFunc_899_200afd4(void);
    extern void OvlFunc_899_200b6f8(void);
    extern void OvlFunc_899_200c5cc(void);
    extern void OvlFunc_899_200c5f4(unsigned int, unsigned int);
    extern void OvlFunc_899_200c698(int, int, int, int);
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
    struct VaultStateView { unsigned char pad[0x1c2]; short room; };
    extern struct VaultStateView VaultState __asm__("gState");

    *(int *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1c0) = 0x209;
    switch (VaultState.room) {
        case 5:
        actor = (unsigned char *)VaultGetActor(8);
        actor += 0x55;
        VaultByte(actor, 0);
        actor = (unsigned char *)VaultGetActor(8);
        *(int *)(actor + 0xc) = 0;
        actor = (unsigned char *)VaultGetActor(8);
        *(int *)(actor + 0x14) = 0;
        break;
        case 10:
        flagValue1 = API_GetFlag(0x850);
        if (flagValue1 != 0) {
            API_MapActor_SetPos(2, 0x1780000, 0x1780000);
            API_Func_8092adc(2, 0x4000, 0);
        }
        flagValue2 = API_GetFlag(0x856);
        if (flagValue2 != 0) {
            API_MapActor_SetPos(2, 0, 0);
        }
        flagValue3 = API_GetFlag(0x855);
        if (flagValue3 == 0) break;
        API_MapActor_SetPos(16, 0x2180000, 0x1d00000);
        API_MapActor_SetBehavior(16, (int)1);
        API_Func_8092adc(16, 0x5000, 0);
        break;
        case 7:
        case 11:
        flagValue4 = API_GetFlag(0x855);
        if (flagValue4 != 0) {
            API_MapActor_SetPos(18, 0x2380000, 0x2880000);
            API_MapActor_SetBehavior(18, (int)1);
            API_Func_8092adc(18, 0x4000, 0);
            OvlFunc_899_200c698(0xe7, 0x2380000, 0x100000, 0x2a00000);
            API_StartTask(OvlFunc_899_200a71c, 0xc80);
            break;
        }
        flagValue5 = API_GetFlag(0x853);
        if (flagValue5 == 0) break;
        API_MapActor_SetPos(18, 0, 0);
        break;
        case 12:
        if (API_GetFlag(0x109) != 0 && API_GetFlag(0x852) != 0 && API_GetFlag(0x853) == 0 && API_GetFlag(0x300) != 0) {
            API_Func_8010704(14, 0x2d, 3, 1, 14, 0x2c);
            API_StartTask(OvlFunc_899_200aba0, 0xc80);
            break;
        }
        flagValue10 = API_GetFlag(0x856);
        if (flagValue10 != 0) {
            API_MapActor_SetPos(25, 0x780000, 0x2b80000);
            API_Func_8092adc(25, 0x8000, 0);
        }
        flagValue11 = API_GetFlag(0x852);
        if (flagValue11 == 0) break;
        API_Func_8010704(14, 0x2d, 3, 1, 14, 0x2c);
        flagValue12 = API_GetFlag(0x853);
        if (flagValue12 == 0) {
            API_Func_8010704(14, 0x32, 3, 1, 14, 0x2c);
            break;
        }
        actor = (unsigned char *)VaultGetActor(24);
        actor += 0x64;
        VaultHalf((unsigned short *)actor, 5);
        actor = (unsigned char *)VaultGetActor(25);
        actor += 0x64;
        VaultHalf((unsigned short *)actor, 4);
        API_StartTask(OvlFunc_899_200aba0, 0xc80);
        break;
        case 13:
        case 14:
        API_CutsceneWait(2);
        API_CopyMapTiles(0x36, 2, 0x23, 20, 2, 10);
        API_CopyMapTiles(0x36, 2, 0x5f, 20, 2, 10);
        API_CopyMapTiles(0x36, 2, 0x23, 0x50, 2, 10);
        API_CopyMapTiles(0x36, 2, 0x2e, 21, 4, 8);
        API_CopyMapTiles(0x36, 2, 0x2e, 0x51, 4, 8);
        actor = (unsigned char *)VaultGetActor(26);
        actor += 0x59;
        VaultByte(actor, 4 | *actor);
        actor = (unsigned char *)VaultGetActor(26);
        __Actor_SetSpriteFlags(actor, 0);
        flagValue13 = API_GetFlag(0x859);
        if (flagValue13 == 0) break;
        API_MapActor_SetPos(26, 0x2a40000, 0x19b0000);
        API_Func_8010704(0x65, 24, 3, 4, 0x29, 24);
        break;
        case 15:
        API_CutsceneWait(2);
        API_CopyMapTiles(0x36, 2, 0x2c, 21, 2, 8);
        API_CopyMapTiles(0x36, 2, 0x2c, 0x51, 2, 8);
        API_CutsceneStart();
        flagValue14 = API_GetFlag(0x855);
        if (flagValue14 != 0) {
            API_MapActor_SetAnim(15, 2);
            API_MapActor_SetAnim(16, 2);
            API_CutsceneWait(1);
            API_MapActor_SetAnim(17, 2);
            break;
        }
        API_MapActor_SetPos(8, 0x3380000, 0x1c80000);
        flagValue15 = API_GetFlag(0x854);
        if (flagValue15 != 0) {
            OvlFunc_899_200adb4();
            API_CutsceneEnd();
            break;
        }
        API_MapActor_SetAnim(8, 7);
        OvlFunc_899_200c5cc();
        API_PlaySound(17);
        API_MessageID(0x12c3);
        OvlFunc_899_200c5f4(8, 10);
        API_CutsceneEnd();
        break;
        case 16:
        API_Func_80105d4(0x36, 2, 2, 8, 0x2c, 21);
        API_Func_80105d4(0x36, 2, 2, 8, 0x2c, 0x51);
        API_MapActor_SetPos(8, 0x3380000, 0x1c80000);
        OvlFunc_899_200abf0();
        API_Func_8091e9c(16);
        break;
        case 17:
        API_Func_80105d4(0x36, 2, 2, 8, 0x2c, 21);
        API_Func_80105d4(0x36, 2, 2, 8, 0x2c, 0x51);
        flagValue16 = API_GetFlag(0x109);
        if (flagValue16 == 0) {
            API_MapActor_SetPos(8, 0x3380000, 0x1c80000);
            OvlFunc_899_200afd4();
            OvlFunc_899_200b6f8();
            break;
        }
        API_MapActor_SetAnim(15, 2);
        API_MapActor_SetAnim(16, 2);
        API_CutsceneWait(1);
        API_MapActor_SetAnim(17, 2);
    }
    return 0;
}

void OvlFunc_899_200aba0(void)
{
    int r6, r5, r8;
    int r3;
    r6 = __MapActor_GetActor(0);
    r5 = __MapActor_GetActor(0x18);
    r8 = __MapActor_GetActor(0x19);
    r3 = *(int *)((char *)r5 + 0x10);
    *(short *)((char *)r5 + 6) = __atan2(*(int *)((char *)r6 + 0x10) - r3, *(int *)((char *)r6 + 8) - *(int *)((char *)r5 + 8));

    r3 = *(int *)((char *)r8 + 0x10);
    *(short *)((char *)r8 + 6) = __atan2(*(int *)((char *)r6 + 0x10) - r3, *(int *)((char *)r6 + 8) - *(int *)((char *)r8 + 8));
}

extern void OvlFunc_899_200c5cc(void);
extern void OvlFunc_899_200c60c();
extern void __Actor_SetSpriteFlags(void *, int);
extern void __Func_800fe9c(void);

void OvlFunc_899_200abf0(void) {
    API_CutsceneStart();
    API_MapActor_SetPos(0xa, 0xc6 << 18, 0xd0 << 17);
    API_MapActor_SetPos(0xb, 0xc8 << 18, 0xc8 << 17);
    API_MapActor_SetPos(0xc, 0xc2 << 18, 0xd0 << 17);
    API_Func_8092adc(0xa, 0xc0 << 6, 0);
    API_Func_8092adc(0xb, 0xc0 << 6, 0);
    API_Func_8092adc(0xc, 0xc0 << 6, 0);
    API_MapActor_SetSpeed(0xb, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(0xc, 0xcccc, 0x6666);
    API_MapActor_SetPos(0, 0xc4 << 18, 0xe0 << 17);
    API_MapActor_SetPos(1, 0xca << 18, 0xd8 << 17);
    API_MapActor_SetPos(2, 0xc2 << 18, 0xd8 << 17);
    API_MapActor_SetAnim(0, 0x13);
    API_MapActor_SetAnim(1, 0x13);
    API_MapActor_SetAnim(2, 0x13);
    ((struct Actor *)__MapActor_GetActor(0))->flags = 2;
    ((struct Actor *)__MapActor_GetActor(1))->flags = 2;
    ((struct Actor *)__MapActor_GetActor(2))->flags = 2;
    __Actor_SetSpriteFlags(__MapActor_GetActor(0), 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(2), 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(1), 0);
    API_Func_8092adc(8, 0xb0 << 8, 0);
    *(int *)(*(unsigned char **)iwram_3001ebc + (0xe0 << 1)) = (0xe0 << 1) + 0x49;
    API_SetCameraTarget(0, 0);
    API_Func_8093530();
    __Func_800fe9c();
    OvlFunc_899_200c5cc();
    API_CutsceneWait(0x3c);
    OvlFunc_899_200c63c(0xa, 3, 0x14);
    API_MessageID(0x12dd);
    OvlFunc_899_200c5f4(0xa, 0x1e);
    OvlFunc_899_200c5f4(8, 0x1e);
    API_MapActor_TravelToAnim(0xb, 0xca << 2, 0xe4 << 1);
    API_MapActor_TravelToAnim(0xc, 0xc6 << 2, 0xe4 << 1);
    API_MapActor_WaitMovement(0xc);
    API_Func_8092adc(0xc, 0, 0);
    API_MapActor_WaitMovement(0xb);
    API_Func_8092adc(0xb, 0, 0);
    API_CutsceneWait(0x1e);
    OvlFunc_899_200c63c(0xb, 3, 0x14);
    OvlFunc_899_200c5f4(0xb, 0x14);
    OvlFunc_899_200c60c(0xc, 0, 0x1e);
    OvlFunc_899_200c5f4(0xc, 0x3c);
    API_CutsceneEnd();
}

INCLUDE_ASM("asm/maps/vault_rooms_1/OvlFunc_899_200adb4.s");

extern unsigned int __GetUnit(unsigned int);

unsigned int OvlFunc_899_200af84(void) {
    unsigned int result;
    result = __GetUnit(2);
    result += 0x8c * 2;
    result = *(unsigned char *)result;
    return result;
}

unsigned int OvlFunc_899_200af98(void) {
    unsigned char *p;
    __Func_80bf65c();
    p = __GetUnit(2);
    if (*(unsigned int *)(p + 0xf8) & 1) {
        __Func_807a498(2, 0, 0, 0);
        __PlaySound(0x7e);
        __CalcStats(0);
        __CalcStats(2);
    }
}


void OvlFunc_899_200afd4(void)
{
    extern unsigned char gScript_899__0200d17c[];
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern void __Actor_SetSpriteFlags(void *, int);
    extern void __Func_800fe9c(void);
    extern int __Func_8091c7c(int, int);
    extern void __Func_8097adc(void);
    extern unsigned char * VaultGetActor(int) __asm__("__MapActor_GetActor");
    extern void OvlFunc_899_200c5cc(void);
    extern void OvlFunc_899_200c5f4(unsigned int, unsigned int);
    extern void OvlFunc_899_200c60c(unsigned int, unsigned int, unsigned int);
    extern void OvlFunc_899_200c624(unsigned int, unsigned int, unsigned int);
    extern void OvlFunc_899_200c63c(unsigned int, unsigned int, unsigned int);
    extern void OvlFunc_899_200c658(unsigned int, unsigned int);
    extern void OvlFunc_899_200c684(void);
    extern int VaultShowMessage(int, int) __asm__("__ShowActorMessage_NoWait");
    unsigned char * savedSprite;
    unsigned char * fieldState;
    int choice1;
    unsigned char *actor;

    actor = VaultGetActor(12);
    savedSprite = (unsigned char *)(*(int *)(actor + 0x50));
    API_CutsceneStart();
    API_MapActor_SetPos(10, 0x3180000, 0x1a00000);
    API_MapActor_SetPos(11, 0x3200000, 0x1900000);
    API_MapActor_SetPos(12, 0x3080000, 0x1880000);
    actor = VaultGetActor(10);
    __Actor_SetSpriteFlags(actor, 0);
    actor = VaultGetActor(11);
    __Actor_SetSpriteFlags(actor, 0);
    actor = VaultGetActor(12);
    __Actor_SetSpriteFlags(actor, 0);
    API_MapActor_SetAnim(10, 9);
    API_MapActor_SetAnim(11, 9);
    API_MapActor_SetAnim(12, 9);
    actor = VaultGetActor(12);
    actor += 0x23;
    *actor = 0xfe & *actor;
    *(unsigned char *)(savedSprite + 0x9) = (*(unsigned char *)(savedSprite + 0x9) | 12);
    API_MapActor_SetBehavior(10, (int)gScript_899__0200d17c);
    API_MapActor_SetPos(0, 0x3180000, 0x1b80000);
    API_MapActor_SetPos(1, 0x3280000, 0x1b00000);
    API_MapActor_SetPos(2, 0x3080000, 0x1b80000);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(1, 0xb000, 0);
    API_Func_8092adc(2, 0xb000, 0);
    API_MapActor_SetSpeed(8, 0xcccc, 0x6666);
    API_Func_8092adc(8, 0xb000, 0);
    *(int *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1c0) = 0x209;
    API_SetCameraTarget(0, 0);
    API_Func_8093530();
    __Func_800fe9c();
    OvlFunc_899_200c5cc();
    API_MapActor_SetBehavior(11, (int)gScript_899__0200d17c);
    API_CutsceneWait(30);
    API_MapActor_SetBehavior(12, (int)gScript_899__0200d17c);
    API_CutsceneWait(30);
    API_MessageID(0x12e4);
    OvlFunc_899_200c5f4(10, 20);
    API_MapActor_Emote(8, 0x102, 0);
    API_CutsceneWait(0x3c);
    OvlFunc_899_200c5f4(8, 20);
    API_MapActor_TravelToAnimWait(8, 0x328, 0x1c8);
    API_MapActor_SetSpeed(1, 0xcccc, 0x6666);
    API_MapActor_TravelToAnimWait(1, 0x318, 0x1b0);
    API_Func_8092adc(1, 0, 0);
    API_MapActor_TravelToAnimWait(8, 0x328, 0x198);
    API_Func_8092adc(8, 0x8000, 0);
    API_MapActor_TravelToAnimWait(1, 0x328, 0x1b0);
    API_Func_8092adc(1, 0xc000, 0);
    API_CutsceneWait(20);
    OvlFunc_899_200c63c(8, 3, 20);
    OvlFunc_899_200c5f4(8, 20);
    API_MapActor_TravelToAnimWait(8, 0x300, 0x198);
    API_CutsceneWait(20);
    API_MapActor_Face(8, 0, 0);
    API_MapActor_Face(0, 8, 0);
    API_MapActor_Face(1, 8, 0);
    OvlFunc_899_200c60c(2, 8, 0x28);
    OvlFunc_899_200c5f4(8, 30);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    OvlFunc_899_200c63c(2, 3, 20);
    API_MapActor_TravelToAnimWait(8, 0x2e8, 0x198);
    API_CutsceneWait(0x32);
    API_Func_80925cc(11, 2);
    OvlFunc_899_200c5f4(11, 20);
    API_MapActor_SetBehavior(11, (int)gScript_899__0200d17c);
    API_Func_80925cc(1, 1);
    API_CutsceneWait(20);
    API_MapActor_Face(0, 11, 0);
    API_MapActor_Face(1, 11, 0);
    OvlFunc_899_200c60c(2, 11, 20);
    OvlFunc_899_200c5f4(1, 20);
    API_Func_80925cc(12, 2);
    OvlFunc_899_200c5f4(12, 30);
    API_MapActor_SetBehavior(12, (int)gScript_899__0200d17c);
    API_MapActor_Emote(1, 0x103, 0);
    API_CutsceneWait(0x3c);
    OvlFunc_899_200c5f4(1, 30);
    OvlFunc_899_200c60c(2, 0, 30);
    OvlFunc_899_200c60c(0, 2, 30);
    OvlFunc_899_200c63c(2, 3, 20);
    OvlFunc_899_200c5f4(2, 20);
    OvlFunc_899_200c60c(1, 2, 30);
    OvlFunc_899_200c63c(0, 3, 30);
    OvlFunc_899_200c5f4(2, 20);
    API_MapActor_Emote(1, 0x100, 0);
    API_CutsceneWait(0x3c);
    OvlFunc_899_200c5f4(1, 30);
    API_MapActor_Emote(2, 0x101, 0);
    API_CutsceneWait(0x3c);
    OvlFunc_899_200c624(0, 1, 20);
    API_MapActor_SetAnim(0, 3);
    OvlFunc_899_200c63c(1, 3, 20);
    OvlFunc_899_200c658(2, 0);
    __Func_8097adc();
    API_MapActor_Face(0, 2, 0);
    OvlFunc_899_200c60c(1, 2, 10);
    API_Func_809259c(0, 1);
    API_Func_80925cc(1, 1);
    API_CutsceneWait(20);
    API_MapActor_Surprise(1, 0x102);
    API_CutsceneWait(0x3c);
    OvlFunc_899_200c60c(0, 1, 10);
    VaultShowMessage(1, 0);
    choice1 = __Func_8091c7c(0, 0);
    if (choice1 == 0) {
        API_CutsceneWait(20);
        API_MapActor_Face(0, 2, 0);
        OvlFunc_899_200c60c(1, 2, 20);
        OvlFunc_899_200c684();
        API_Func_809259c(0, 1);
        API_Func_80925cc(1, 1);
        API_CutsceneWait(20);
        OvlFunc_899_200c5f4(1, 20);
    } else {
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
        API_MapActor_Emote(1, 0x102, 0);
        API_CutsceneWait(0x3c);
        OvlFunc_899_200c5f4(1, 20);
        API_MapActor_Face(0, 2, 0);
        OvlFunc_899_200c60c(1, 2, 20);
        OvlFunc_899_200c684();
        API_Func_809259c(0, 1);
        API_Func_80925cc(1, 1);
        API_CutsceneWait(20);
    }
    API_MapActor_Emote(2, 0x102, 0);
    API_CutsceneWait(0x3c);
    OvlFunc_899_200c63c(2, 4, 20);
    API_MessageID(0x12f2);
    OvlFunc_899_200c5f4(2, 20);
    API_MapActor_SetAnim(0, 3);
    OvlFunc_899_200c63c(1, 3, 0x28);
    API_MapActor_TravelToAnimWait(8, 0x328, 0x198);
    API_Func_8092adc(8, 0x8000, 0);
    API_CutsceneWait(30);
    API_MapActor_Face(0, 8, 0);
    API_MapActor_Face(1, 8, 0);
    OvlFunc_899_200c60c(2, 8, 20);
    API_Func_80925cc(8, 1);
    API_CutsceneWait(20);
    OvlFunc_899_200c5f4(8, 20);
    API_MapActor_SetSpeed(9, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(13, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(14, 0xcccc, 0x6666);
    API_MapActor_SetPos(9, 0x2e80000, 0x1980000);
    API_MapActor_TravelToAnimWait(9, 0x300, 0x198);
    OvlFunc_899_200c60c(9, 10, 30);
    API_MapActor_SetPos(13, 0x2e80000, 0x1980000);
    API_MapActor_TravelToAnimWait(13, 0x300, 0x198);
    API_MapActor_SetPos(14, 0x2e80000, 0x1980000);
    API_MapActor_TravelToAnim(14, 0x310, 0x190);
    API_MapActor_TravelToAnimWait(13, 0x308, 0x1a8);
    API_MapActor_WaitMovement(14);
    API_MapActor_Face(13, 10, 0);
    OvlFunc_899_200c60c(14, 10, 20);
    API_MapActor_Face(0, 9, 0);
    API_MapActor_Face(1, 9, 0);
    OvlFunc_899_200c60c(2, 9, 20);
    OvlFunc_899_200c63c(9, 4, 20);
    OvlFunc_899_200c5f4(9, 20);
    OvlFunc_899_200c5f4(11, 20);
    OvlFunc_899_200c5f4(12, 30);
    OvlFunc_899_200c624(9, 13, 20);
    API_Func_80925cc(13, 1);
    API_CutsceneWait(20);
    OvlFunc_899_200c5f4(13, 20);
    OvlFunc_899_200c63c(9, 3, 30);
    OvlFunc_899_200c624(9, 14, 20);
    OvlFunc_899_200c63c(9, 3, 30);
    OvlFunc_899_200c60c(9, 10, 20);
    OvlFunc_899_200c5f4(9, 20);
    API_MapActor_SetAnim(13, 3);
    OvlFunc_899_200c63c(14, 3, 20);
    OvlFunc_899_200c624(13, 14, 20);
    API_MapActor_SetAnim(13, 3);
    OvlFunc_899_200c63c(14, 3, 20);
    API_MapActor_TravelToAnim(14, 0x318, 0x188);
    API_MapActor_TravelToAnimWait(13, 0x310, 0x190);
    API_MapActor_Face(13, 12, 0);
    API_MapActor_WaitMovement(14);
    OvlFunc_899_200c60c(14, 11, 20);
    API_Func_80925cc(13, 1);
    API_CutsceneWait(20);
    OvlFunc_899_200c5f4(13, 20);
    OvlFunc_899_200c63c(14, 4, 20);
    OvlFunc_899_200c5f4(14, 30);
    OvlFunc_899_200c624(13, 0, 20);
    OvlFunc_899_200c5f4(13, 20);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    OvlFunc_899_200c63c(2, 3, 0x32);
    fieldState = (unsigned char *)((*(unsigned char **)CS_iwram_3001ebc));
    *(int *)(fieldState + 0x1c8) = 30;
    *(int *)(fieldState + 0x1c0) = 0x201;
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_CutsceneWait(0x3c);
    API_CutsceneEnd();
}
INCLUDE_ASM("asm/maps/vault_rooms_1/OvlFunc_899_200b6f8.s");


void OvlFunc_899_200c5cc(void)
{
  unsigned long long new_var;
  unsigned int val = 0xe0;
  unsigned int addr = *((unsigned int *) iwram_3001ebc);
  val <<= 1;
  addr += val;
  new_var = addr;
  val += 0x49;
  *((unsigned int *) new_var) = val;
  __MapTransitionIn();
  __WaitMapTransition();
  __CutsceneWait(1);
}


void OvlFunc_899_200c5f4(unsigned int arg0, unsigned int arg1)
{
	__ActorMessage(arg0, 0);
	__CutsceneWait(arg1);
}

extern void __MapActor_Face(unsigned int a, unsigned int b, unsigned int c);

void OvlFunc_899_200c60c(unsigned int arg0, unsigned int arg1, unsigned int arg2)
{
	__MapActor_Face(arg0, arg1, 0);
	__CutsceneWait(arg2);
}

extern void __MapActor_TurnToFaceActor(unsigned int a, unsigned int b, unsigned int c);

void OvlFunc_899_200c624(unsigned int arg0, unsigned int arg1, unsigned int arg2)
{
	__MapActor_TurnToFaceActor(arg0, arg1, 0);
	__CutsceneWait(arg2);
}

void OvlFunc_899_200c63c(unsigned int arg0, unsigned int arg1, unsigned int arg2)
{
	unsigned int r5;
	unsigned int r6;

	r5 = arg0;
	r6 = arg2;
	__MapActor_SetAnim(arg0, arg1, arg2);
	__Func_8092504(r5);
	__CutsceneWait(r6);
}

void OvlFunc_899_200c658(unsigned int arg0, unsigned int arg1)
{
  int new_var;
  __Func_8096fb0(0x8d, 1);
  __Func_80970f8(arg0, arg1);
 do { __Func_809728c(); __FieldMove(1); __WaitFrames(new_var = 1); } while (0);
}

void OvlFunc_899_200c684(void)
{
	__FieldMove(2);
	__Func_8097174();
	__Func_8097194();
}

void OvlFunc_899_200c698(int item, int x, int y, int z) {
    int mask = ~0x20;
    int zero;
    struct Actor *actor;
    struct Sprite *sprite;
    unsigned char *buf;

    zero = 0;
    actor = API_CreateActor(0x16, x, y, z);
    if (actor != 0) {
        sprite = actor->sprite;
        sprite->flags = zero;
        sprite->numLayers = zero;
        ((unsigned char *)&sprite->oam.attr0)[1] &= mask;
        sprite->oam.palette = 0;
        actor->__unk55 = zero;
        actor->__unk5C = 1;
        buf = (unsigned char *)__galloc_iwram(0x11, 0x608);
        __LoadItemIcon(item);
        buf += 0x400;
        __UploadSpriteGFX(sprite->slot, 0x80, buf);
        __gfree(0x11);
    }
}

extern unsigned char Lm899_4f2c[] __asm__(".Lm899_4f2c");

unsigned char *OvlFunc_899_200c704(vec3_t *pos)
{
    int x;
    int y;
    unsigned char *result;
    unsigned char *entry;
    unsigned int i;

    x = (pos->x - 0x400000) >> 19;
    y = (pos->z - 0x2700000) >> 19;
    result = 0;
    entry = Lm899_4f2c;
    for (i = 0; i <= 0x24; i++, entry += 0x10) {
        if ((entry[0] == x || entry[0] + 1 == x) &&
            (entry[1] == y || entry[1] + 1 == y)) {
            result = entry;
            break;
        }
    }
    return result;
}
INCLUDE_ASM("asm/maps/vault_rooms_1/OvlFunc_899_200c754.s");
extern struct Actor *__GetFieldActor(int);
unsigned int OvlFunc_899_200c7bc(unsigned int x, unsigned int z, unsigned int id)
{
    struct Actor *a = __GetFieldActor(id);
    int ax = a->prevPos.x;
    int az;
    int dx, dz;

    if (ax == (int)0x80000000)
        ax = a->pos.x;
    az = a->prevPos.z;
    if (az == (int)0x80000000)
        az = a->pos.z;
    ax = (int)(ax - x) >> 16;
    az = (int)(az - z) >> 16;
    if (ax * ax + az * az <= 0x40)
        return 1;
    return 0;
}
unsigned int OvlFunc_899_200c7fc(int x, int z, int id)
{
    struct Actor *a = __GetFieldActor(id);
    int ax = a->prevPos.x;
    int az;
    int dx, dz;

    if (ax == (int)0x80000000)
        ax = a->pos.x;
    az = a->prevPos.z;
    if (az == (int)0x80000000)
        az = a->pos.z;
    ax = (int)(ax - x) >> 16;
    az = (int)(az - z) >> 16;
    if (ax * ax + az * az <= 0x100)
        return 1;
    return 0;
}
extern unsigned int OvlFunc_899_200c7fc(int, int, int);
extern unsigned int OvlFunc_899_200c7bc(unsigned int, unsigned int, unsigned int);

int OvlFunc_899_200c840(unsigned char *p)
{
    int x;
    int y;

    if (p == 0) {
        return 1;
    }

    x = ((int)p[0] << 19) + (0x90 << 15);
    y = ((int)p[1] << 19) + (0x9e << 18);

    if (OvlFunc_899_200c7fc(x, y, 0) ||
        OvlFunc_899_200c7bc(x, y, 2) ||
        OvlFunc_899_200c7bc(x, y, 0x18) ||
        OvlFunc_899_200c7bc(x, y, 0x19)) {
        return -1;
    }

    return 0;
}

void OvlFunc_899_200c8a4(int arg0, unsigned char *p) {
    __Actor_TravelTo(arg0, ((int)p[0] << 19) + (0x90 << 15), 0, ((int)p[1] << 19) + (0x9e << 18));
}

INCLUDE_ASM("asm/maps/vault_rooms_1/OvlFunc_899_200c8c8.s");
INCLUDE_ASM("asm/maps/vault_rooms_1/OvlFunc_899_200cb2c.s");
INCLUDE_ASM("asm/maps/vault_rooms_1/vault_rooms_1_data.s");

INCLUDE_ASM("asm/maps/vault_rooms_1/imports.s");
