/* rom_7987ac (overlay file 902): consolidated TU — vault_rooms_2 map overlay. */

#include "nonmatching.h"
#include "api.h"

INCLUDE_ASM("asm/maps/vault_rooms_2/exports.s");

extern void OvlFunc_902_2008098();

extern int *__MapActor_GetActor(int idx);
extern void __SetFlag(int id);
extern void __ClearFlag(int id);
extern void __ActorMessage(int a, int b);

void OvlFunc_902_2008030(void)
{
    int r5;
    int r3;

    r5 = __MapActor_GetActor(0)[2];
    r3 = __MapActor_GetActor(0)[4];
    r5 >>= 20;
    r5 -= 0x22;
    r3 >>= 20;
    if ((unsigned int)r5 <= 1 && r3 > 0x28 && r3 <= 0x2a)
        __SetFlag(0x94 << 2);
    else
        __ClearFlag(0x94 << 2);
}

extern unsigned char gOvl_020086dc[];

unsigned int VaultRooms2_GetEntrances(void) {
    return (unsigned int)gOvl_020086dc;
}

unsigned int VaultRooms2_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_020087cc[];

void *VaultRooms2_GetExits(void) {
    return (void *)gOvl_020087cc;
}

extern void __Func_808b868(unsigned char *p);
extern unsigned char L7f4[] __asm__(".Lm902_7f4");

unsigned char *VaultRooms2_GetActors(void) {
    __Func_808b868(L7f4);
    return L7f4;
}

void OvlFunc_902_2008098(unsigned int arg0)
{
  __CutsceneStart();
  __MapActor_SetAnim(arg0, 1);
  {
      unsigned int rq = arg0;
      __ActorMessage(rq, 0);
  }
  __CutsceneEnd();
}


void OvlFunc_902_20080bc(void)
{
  int new_var;
  int x;
  do { __MessageID(0x1cc9); x = 9; new_var = 2; } while (0);
  __MapActor_TurnToFaceActor(x, 0, new_var);
  OvlFunc_902_2008098(x);
}


void OvlFunc_902_20080dc(void)
{
  __MessageID(0x1ccd);
  do { __MapActor_TurnToFaceActor(0xb, 0, 2); OvlFunc_902_2008098(0xb); } while (0);
}


void OvlFunc_902_20080fc(void)
{
  int r1;
  int r2;
  do { __MessageID(0x1cd0); r1 = 0; r2 = 2; } while (0);
  __MapActor_TurnToFaceActor(0xc, r1, r2);
  OvlFunc_902_2008098(0xc);
}

extern unsigned char *iwram_3001ebc;
extern void __ActorMessage_Wait(volatile unsigned long, int, int);
extern void __MapActor_Emote(int, int, int);
extern void __MapActor_TurnToFaceActor(volatile unsigned long, int, int);

void OvlFunc_902_200811c(void)
{
    unsigned short t1;
    unsigned short *p;
    unsigned long long t2 = 2;
    unsigned long v2;

    __CutsceneStart();
    __MessageID(0x1cd4);
    do { t2 = (unsigned long)t2; } while (0);
    v2 = t2;
    __MapActor_TurnToFaceActor(0x10, 0, v2);
    t1 = 0x10;
    do { t1 = (unsigned short)t1; } while (0);
    __MapActor_SetAnim(t1, 1);
    __ActorMessage_Wait(0x10, 0, 0x14);
    __MapActor_DoAnim(0x10, 4);
    __CutsceneWait(0x14);
    __ActorMessage_Wait(0x10, 0, 0x14);
    API_MapActor_Emote(0x10, 0x102, 0x3c);
    __ActorMessage_Wait(0x10, 0, 0x1e);
    __ShowActorMessage_NoWait(0x10, 0);
    if (__Func_8091c7c(0, 0) != 0) {
        p = (unsigned short *)(iwram_3001ebc + (0xec << 1));
        *p += 1;
    }
    __ActorMessage_Wait(0x10, 0, 0x14);
    __SetFlag(0xc0 << 2);
    __SetFlag(0x868);
    __CutsceneEnd();
}


void OvlFunc_902_20081c4(void)
{
  unsigned short new_var;
  do { __MessageID(0x1cda); } while (0);
  new_var = 0;
  __MapActor_TurnToFaceActor(0x10, new_var, 2);
  OvlFunc_902_2008098(0x10);
}


void OvlFunc_902_20081e4(void)
{
  int r4 = 0x17;
  __MessageID(0x1cee);
  do { } while (0);
  __MapActor_TurnToFaceActor(r4, 0, 2);
  OvlFunc_902_2008098(r4);
}

extern int __GetFlag(int);
extern int __Func_8091c7c(int, int);
extern void __Func_80925cc(int, int);
extern int __Func_8078500(void);
extern void __Func_808f1c0(int, int);
extern void __Func_8091a58(int, int);
extern void __Func_8092adc(int, int, int);

void OvlFunc_902_2008204(void)
{
    extern void __CutsceneEnd(void);
    unsigned short *p;
    int pos = 0x80 << 7;

    __CutsceneStart();
    __MapActor_TurnToFaceActor(0x12, 0, 0);
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
        p = (unsigned short *)(iwram_3001ebc + (0xec << 1));
        *p += 1;
        __CutsceneWait(0x14);
        __MapActor_DoAnim(0x12, 3);
        __CutsceneWait(0x14);
        __ActorMessage(0x12, 0);
    }
    __Func_8092adc(0x12, pos, 0);
    __CutsceneEnd();
}

extern void OvlFunc_902_200811c(void);

void OvlFunc_902_20082fc(void)
{
  int zero = 0;
  __CutsceneStart();
  __Func_80925cc(0x10, 1);
  __CutsceneEnd();
  *((unsigned char *)__MapActor_GetActor(0x10) + 0x5b) = 1;
  OvlFunc_902_200811c();
  *((unsigned char *)__MapActor_GetActor(0x10) + 0x5b) = zero;
  __MapActor_SetBehavior(0x10, 2);
}

extern void __CutsceneStart(void);
extern int __Func_8078500(void);
extern void __MapActor_DoAnim(int a, int b);
extern void __CutsceneWait(int a);
extern void __MessageID(int a);
extern void __Func_808f1c0(int a, int b);
extern void __Func_8091a58(int a, int b);
extern void __CutsceneEnd(void);
extern void __Func_80b0278(int, int);

void OvlFunc_902_2008338(void) {
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
void OvlFunc_902_2008380(void) {
    unsigned int r5;

    r5 = *(unsigned short *)((char *)__MapActor_GetActor(0) + 6);
    __CutsceneStart();
    r5 += 0xffff5fff;
    if (r5 <= 0x3ffe) {
        __Func_80b0278(4, 0x13);
    } else {
        __MessageID(0x1ce2);
        __ActorMessage(0x13, 0);
    }
    __CutsceneEnd();
}


void OvlFunc_902_20083c8(void) {
    unsigned int r5;

    r5 = *(unsigned short *)((char *)__MapActor_GetActor(0) + 6);
    __CutsceneStart();
    r5 += 0xffff5fff;
    if (r5 <= 0x3ffe) {
        __Func_80b0278(5, 0x14);
    } else {
        __MessageID(0x1ce4);
        __ActorMessage(0x14, 0);
    }
    __CutsceneEnd();
}


void OvlFunc_902_2008410(void) {
    unsigned int r5;

    r5 = *(unsigned short *)((char *)__MapActor_GetActor(0) + 6);
    __CutsceneStart();
    r5 += 0xffff5fff;
    if (r5 <= 0x3ffe) {
        __Func_80b0278(6, 0x15);
    } else {
        __MessageID(0x1ce6);
        __ActorMessage(0x15, 0);
    }
    __CutsceneEnd();
}

extern void __Func_80b3284(int, int);

void OvlFunc_902_2008458(void) {
    unsigned int r5;

    r5 = *(unsigned short *)((char *)__MapActor_GetActor(0) + 6);
    __CutsceneStart();
    r5 += 0xffff5fff;
    if (r5 <= 0x3ffe) {
        __Func_80b3284(1, 0x16);
    } else {
        __MessageID(0x1cec);
        __ActorMessage(0x16, 0);
    }
    __CutsceneEnd();
}

extern int __GetFlag(int);

void OvlFunc_902_20084a0(void) {
    __CutsceneStart();
    if (__GetFlag(0x85b) == 0) {
        __MessageID(0x1382);
    } else {
        __MessageID(0x1cf4);
    }
    __ActorMessage(0x12, 0);
    __CutsceneEnd();
}

extern unsigned char gOvl_0200898c[];

void *VaultRooms2_GetEvents(void) {
    return (void *)gOvl_0200898c;
}

extern unsigned char *iwram_3001ebc;
typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
void OvlFunc_902_2008570(int, int, int, int);

int VaultRooms2_MapInit(void)
{
    unsigned char *base;
    unsigned int r2;
    unsigned int r3;
    int val;
    int w;
    char *actor;
    int zero;

    base = iwram_3001ebc;
    *(unsigned int *)(base + (0xe0 << 1)) = (0xe0 << 1) + 0x49;
    r3 = (unsigned int)&gState;
    r2 = 0xe1;
    r2 <<= 1;
    r3 += r2;
    r2 = 0;
    val = *(short *)((char *)r3 + r2);

    if (val == 5) {
        w = 4;
        r2 = 3;
        __CopyMapTiles(0, 0x78, 8, 0x43, w, r2);
        actor = (char *)__MapActor_GetActor(8);
        zero = 0;
        actor[0x55] = zero;
        *(int *)((char *)__MapActor_GetActor(8) + 0xc) = zero;
        *(int *)((char *)__MapActor_GetActor(8) + 0x14) = zero;
    } else if (val == 7 || val == 11) {
        OvlFunc_902_2008570(0xe7, 0x8e << 18, 0x80 << 13, 0xa8 << 18);
        __StartTask(OvlFunc_902_2008030, 0xc8 << 4);
    }
    return 0;
}
void OvlFunc_902_2008570(int item, int x, int y, int z)
{
    int mask = ~0x20;
    int zero;
    unsigned char *actor;
    unsigned char *sprite;
    unsigned char *buf;

    zero = 0;
    actor = (unsigned char *)__CreateActor(0x16, x, y, z);
    if (actor != 0) {
        sprite = *(unsigned char **)(actor + 0x50);
        sprite[0x26] = zero;
        sprite[0x27] = zero;
        sprite[5] = sprite[5] & mask;
        sprite[9] = sprite[9] & 0xf;
        actor[0x55] = zero;
        actor[0x5c] = 1;
        buf = (unsigned char *)__galloc_iwram(0x11, 0x608);
        __LoadItemIcon(item);
        buf += 0x400;
        __UploadSpriteGFX(sprite[0x1c], 0x80, buf);
        __gfree(0x11);
    }
}
INCLUDE_ASM("asm/maps/vault_rooms_2/vault_rooms_2_data.s");

INCLUDE_ASM("asm/maps/vault_rooms_2/imports.s");
