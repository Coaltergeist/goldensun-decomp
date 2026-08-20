/* field/cutscene.c */
#include "nonmatching.h"

extern void CutsceneEnd();
extern int MapActor_GetActor();
extern int GetMapActorIndex();
extern unsigned int MapActor_GetSpriteID();
extern void Func_80922c4();
extern void MapActor_SetAnim();
extern void CutsceneWait();
extern unsigned char gState[];

INCLUDE_ASM("asm/field/cutscene/Task_Cutscene.s");

extern unsigned char iwram_3001ebc__a7[] __asm__("iwram_3001ebc");

void CutsceneWait(unsigned int arg0) {
    unsigned int *base;
    unsigned int r3;

    base = *(unsigned int **)iwram_3001ebc__a7;
    r3 = *(unsigned int *)((unsigned char *)base + 0xe6 * 2);
    if (r3 == 0 && arg0 != 0) {
        WaitFrames(arg0);
    }
}

INCLUDE_ASM("asm/field/cutscene/ResetPlayerSpeed.s");
INCLUDE_ASM("asm/field/cutscene/CutsceneStart.s");

extern void Task_Cutscene(void);
extern void SetCameraTarget(unsigned int, unsigned char);
extern void *_CheckLure(void);
extern unsigned int gState__a1 __asm__("gState");

void CutsceneEnd(void) {
    unsigned int r3;

    StopTask(Task_Cutscene);
    r3 = (unsigned int)&gState__a1;
    r3 += 0xfa << 1;
    SetCameraTarget(*(unsigned int *)r3, 1);
    _CheckLure();
}

void Func_8091778(void) {}
void Func_809177c(void) {}

extern void Func_809177c(void);
extern void InitMapActors(unsigned int);
extern unsigned int gState__a2 __asm__("gState");

void Func_8091780(unsigned int arg0) {
    unsigned int r5;
    unsigned int r3;
    unsigned int r2;

    r5 = arg0;
    Func_809177c();
    InitMapActors(r5);
    WaitFrames(1);
    r3 = (unsigned int)&gState__a2;
    r2 = 0xfa;
    r2 <<= 1;
    r3 += r2;
    GetFieldActor(*(unsigned int *)r3);
}

extern int FindMapActorSlot(void);
extern void LoadMapActors(void *info, int index);

void LoadFieldActors(void *actors)
{
	LoadMapActors(actors, FindMapActorSlot());
}

extern unsigned int iwram_3001ebc__a8 __asm__("iwram_3001ebc");

void SetMapEvents(unsigned int arg0) {
    unsigned int *ptr = (unsigned int *)iwram_3001ebc__a8;
    ptr[4] = arg0;
}

extern void _GetUnit(void);
extern void _AddPartyMember(unsigned int);
extern void _Func_8021390(unsigned int, unsigned int);

void Func_80917d0(unsigned int arg0, unsigned int arg1)
{
    unsigned int r5;
    unsigned int r6;

    r5 = arg0;
    r6 = arg1;
    _GetUnit();
    _AddPartyMember(r5);
    if (r6 != 0) {
        _Func_8021390(r5, r6);
    }
}

extern void _Func_8021488(unsigned int, unsigned int);

void Func_80917f4(unsigned int arg0, unsigned int arg1)
{
	unsigned int r5;
	unsigned int r6;

	r6 = arg1;
	r5 = arg0;
	_AddPartyMember(r5);
	_AddPartyMember(r6);
	_Func_8021488(r5, r6);
}

unsigned int Func_8091814(unsigned int arg0)
{
    int r5;
    unsigned int r6;

    r5 = (arg0 >> 10) & 0xf;
    r6 = arg0 & 0x3ff;
    if (r5 > 7)
        return -1;
    if (_GetFlag(r5) == 0)
        return -2;
    if (_HasMove(r5, r6) == 0)
        return -3;
    return 0;
}

INCLUDE_ASM("asm/field/cutscene/Func_8091858.s");
INCLUDE_ASM("asm/field/cutscene/Func_8091890.s");
INCLUDE_ASM("asm/field/cutscene/Func_80919d8.s");
INCLUDE_ASM("asm/field/cutscene/Func_8091a58.s");
INCLUDE_ASM("asm/field/cutscene/Func_8091c1c.s");

void Func_8091c3c(void) {}
void Func_8091c40(void) {}

INCLUDE_ASM("asm/field/cutscene/MapActor_WaitAnim.s");
INCLUDE_ASM("asm/field/cutscene/Func_8091c7c.s");

extern int _YesNoMenu(int a, int b, int c, int d);

int Func_8091d84(int a) {
    return _YesNoMenu(a, 0, 0, 0);
}

#include "message.h"

extern void _GiveInnateMove(void);
extern void _Func_8019908(unsigned int, unsigned int);
extern void _Func_801776c(unsigned int, unsigned int);

void LearnInnateMove(unsigned int pc, unsigned int move) {
    unsigned int r5;
    unsigned int r6;

    r6 = move;
    r5 = pc;
    _GiveInnateMove();
    _PlaySound(0x53);
    _Func_8019908(r5, 1);
    _Func_8019908(r6, 4);
    _Func_801776c(MSG_LEARN_INNATE_MOVE, 3);
}

extern void ScreenTransitionIn(int, int);
extern unsigned char iwram_3001ebc__a9[] __asm__("iwram_3001ebc");

void MapTransitionIn(void)
{
  int new_var;
  unsigned char *r5;
  unsigned char *r3;
  int new_var2;
  int r2;
  unsigned short *new_var3;
  r5 = *((unsigned char **) iwram_3001ebc__a9);
  r2 = 0xe0 << 1;
  r3 = r5 + r2;
  r2 += 8;
  new_var = (new_var2 = -r2);
  ScreenTransitionIn(*((int *) r3), *((int *) (r5 - new_var)));
  new_var3 = (unsigned short *) (r5 + (0xe3 << 1));
  *new_var3 = (new_var = 1);
}

extern unsigned char iwram_3001ebc__a10[] __asm__("iwram_3001ebc");
extern void ScreenTransitionOut(int, int);

void MapTransitionOut(void)
{
  unsigned short *new_var;
  unsigned char *r5 = *((unsigned char **) iwram_3001ebc__a10);
  unsigned short v;
  ScreenTransitionOut(*((int *) (r5 + 0x1c0)), *((int *) (r5 + 0x1c8)));
  new_var = (unsigned short *) (r5 + 0x1c6);
  v = 0;
  *new_var = v;
}

extern unsigned int *iwram_3001ebc__a11 __asm__("iwram_3001ebc");

void WaitMapTransition(void) {
    WaitFrames(*(unsigned int *)((char *)iwram_3001ebc__a11 + 0x1c8));
}

extern unsigned int iwram_3001ebc__a12 __asm__("iwram_3001ebc");

void SetDestMap(unsigned short map, unsigned short door)
{
    unsigned char *p = (unsigned char *)iwram_3001ebc__a12;
    unsigned short *q = (unsigned short *)(p + 0xb8 * 2);
    unsigned short v = 0x3e7;
    unsigned short *s;

    *q = v;
    s = (unsigned short *)gState;
    s[0xe0] = map;
    s[0xe1] = door;
}

extern unsigned int iwram_3001ebc__a13 __asm__("iwram_3001ebc");

void SetRespawnMap(unsigned short map, unsigned short door)
{
    unsigned char *p = (unsigned char *)iwram_3001ebc__a13;
    unsigned short *q = (unsigned short *)(p + 0xb8 * 2);
    unsigned short v = 0x3e7;
    unsigned short *s;

    *q = v;
    s = (unsigned short *)gState;
    s[0xe2] = map;
    s[0xe3] = door;
}

extern unsigned int iwram_3001ebc__a14 __asm__("iwram_3001ebc");

unsigned int Func_8091e9c(unsigned int arg0) {
    unsigned int r3;
    unsigned short r2;

    r3 = iwram_3001ebc__a14;
    r2 = 0xb8;
    r3 += r2 << 1;
    *(unsigned short *)(r3) = arg0;
    return arg0;
}

INCLUDE_ASM("asm/field/cutscene/StartMapBattle.s");

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern void *iwram_3001ebc__a15 __asm__("iwram_3001ebc");
extern GlobalState gState__a5 __asm__("gState");
extern void Func_809537c(int a);
extern int Func_808b074(int a);
extern void Func_808adf0(void *a);
extern void Func_808b320(int a, int b);

void Func_8091f14(unsigned int arg0, unsigned int arg1)
{
    unsigned char *base;
    unsigned char *g;
    unsigned int flag;
    unsigned short val;

    base = (unsigned char *)iwram_3001ebc__a15;
    flag = arg0 & 0x800;
    arg0 = arg0 & 0xff;
    if (flag == 0) {
        Func_809537c(arg0);
    }
    g = (unsigned char *)&gState__a5;
    val = (arg1 + 300) | flag;
    *(unsigned short *)(g + 0x234) = val;
    *(unsigned short *)(base + 0x17c) = Func_808b074(arg1);
    if (*(short *)(base + 0x19e) == 3) {
        Func_808adf0((void *)((unsigned char *)GetFieldActor(*(int *)(g + 0x1f4)) + 8));
    }
    {
        unsigned long long t = 0;
        unsigned int y;
        do { t = (unsigned long) t; } while (0);
        y = (unsigned int) t;
        Func_808b320(0, y);
    }
}


void Func_8091f90(unsigned short arg0, unsigned short arg1) {
    unsigned char *r3;

    r3 = gState;
    *(unsigned short *)(r3 + 0xe7 * 2) = arg0;
    *(unsigned short *)(r3 + 0xe8 * 2) = arg1;
}

/* Func_8091fa8; two halfword stores into gState (gState) at u16
 * indices 0xe9 and 0xea. The earlier miss added a bogus return and used a
 * register-indexed store; this is plain void with independent array writes. */
extern unsigned short gState__a7[] __asm__("gState");

void Func_8091fa8(unsigned short a, unsigned short b) {
    gState__a7[0xe9] = a;
    gState__a7[0xea] = b;
}

extern unsigned char iwram_3001ebc__a16[] __asm__("iwram_3001ebc");
extern GlobalState gState__a8 __asm__("gState");

void SetDestMap2(int arg0, int arg1)
{
  unsigned short *new_var;
  unsigned char *r2;
  unsigned char *r3;
  int new_var2;
  r2 = (unsigned char *) (*((unsigned int *) iwram_3001ebc__a16));
  r3 = (unsigned char *) (&gState__a8);
  *((unsigned short *) (r3 + (0xe0 * 2))) = arg0;
  *((unsigned short *) (r3 + (0xe1 * 2))) = arg1;
  new_var = (unsigned short *) (r2 + (0xb8 * 2));
  new_var2 = 0x3e7;
  *new_var = new_var2;
}

INCLUDE_ASM("asm/field/cutscene/Func_8091ff0.s");

extern unsigned char iwram_3001ebc__a17[] __asm__("iwram_3001ebc");

void MapActor_PlayPendingSound(void) {
    short v;
    unsigned int p;
    p = *(unsigned int *)iwram_3001ebc__a17 + 0xcc8;
    v = *(short *)p;
    if (v != -1) {
        _PlaySound(v);
    }
}
