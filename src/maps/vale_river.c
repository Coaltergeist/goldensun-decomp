/* rom_780898 (overlay file 883): consolidated TU — vale_river map overlay. */

#include "nonmatching.h"
#include "api.h"
#include "message.h"
#include "actor.h"

INCLUDE_ASM("asm/maps/vale_river/exports.s");

extern int Func_8000948(int);

int OvlFunc_883_2008030(int *a, int *b)
{
  int dx;
  int dy;
  int dz;
  int mag;
  int new_var;
  int (*fp)(int);
  dx = ((*(a++)) - (*(b++))) >> 16;
  if (1)
  {
    dy = ((*(a++)) - (*(b++))) >> 16;
    dz = ((*a) - (*b)) >> 16;
    mag = ((dx * dx) + ((float) (dy * dy))) + (dz * dz);
  }
  new_var = ((dx * dx) + (dy * dy)) + (dz * dz);
  fp = Func_8000948;
  return fp(new_var);
}

INCLUDE_ASM("asm/maps/vale_river/OvlFunc_883_200806c.s");
INCLUDE_ASM("asm/maps/vale_river/OvlFunc_883_20080c4.s");
INCLUDE_ASM("asm/maps/vale_river/OvlFunc_883_2008244.s");

extern unsigned int L6190[] __asm__(".Lm883_6190");
extern int L61d0[] __asm__(".Lm883_61d0");
extern void *OvlFunc_883_200806c(int *, void *);
extern int __TestCollision(void *, int *);

int OvlFunc_883_20082a8(void *arg0)
{
    int stk[3];
    unsigned int idx;
    unsigned int t;
    void *res;
    short val;
    int *q;
    unsigned int i;

    idx = *(unsigned short *)((char *)arg0 + 6) >> 12;
    t = L6190[idx];
    stk[0] = *(int *)((char *)arg0 + 8) + (t & 0xffff0000);
    stk[1] = *(int *)((char *)arg0 + 12);
    t <<= 16;
    stk[2] = *(int *)((char *)arg0 + 16) + t;
    res = OvlFunc_883_200806c(stk, arg0);
    if (res != 0) {
        int *p;
        i = 0;
        p = *(int **)((char *)res + 0x50);
        p = *(int **)((char *)p + 0x28);
        val = *(short *)p;
        q = L61d0;
        do {
            if (val == *q++) goto done;
            i++;
        } while (i <= 5);
        *(int *)((char *)arg0 + 0x24) = 0;
        *(int *)((char *)arg0 + 0x2c) = 0;
        *(int *)((char *)arg0 + 0x38) = 0x80 << 24;
        *(int *)((char *)arg0 + 0x40) = 0x80 << 24;
    }
    t = L6190[idx];
    stk[0] = *(int *)((char *)arg0 + 8) + (t & 0xffff0000);
    stk[1] = *(int *)((char *)arg0 + 12);
    t <<= 16;
    stk[2] = *(int *)((char *)arg0 + 16) + t;
    if (__TestCollision(arg0, stk) > 0) {
        *(int *)((char *)arg0 + 0x24) = 0;
        *(int *)((char *)arg0 + 0x2c) = 0;
        *(int *)((char *)arg0 + 0x38) = 0x80 << 24;
        *(int *)((char *)arg0 + 0x40) = 0x80 << 24;
    }
done:
    return 0;
}

INCLUDE_ASM("asm/maps/vale_river/OvlFunc_883_200834c.s");

extern int L61e8[] __asm__(".Lm883_61e8");
extern void *OvlFunc_883_200834c(int *, void *, void *);

int OvlFunc_883_2008474(void *arg0)
{
    int dir;
    int cur[3];
    void *obj;
    int idx;
    int steps;
    int countY;
    int countX;
    int t2;
    int t3;
    int yy;
    int *cp;
    int i;
    int j;
    unsigned int t;
    int m1;
    int m2;
    *(int *)((char *)arg0 + 0x14) = 0;
    obj = OvlFunc_883_200834c(&dir, (char *)arg0 + 4, arg0);
    if (obj == 0) {
        return 0;
    }
    *((unsigned char *)obj + 0x22) = 2;
    idx = *(int *)arg0;
    steps = 0;
    t2 = L61e8[idx * 4 + 1];
    if (t2 < 0) {
        t2 = -t2;
    }
    t3 = L61e8[idx * 4 + 3];
    if (t3 < 0) {
        t3 = -t3;
    }
    countY = (t2 + t3) >> 4;
    t2 = L61e8[idx * 4];
    if (t2 < 0) {
        t2 = -t2;
    }
    t3 = L61e8[idx * 4 + 2];
    if (t3 < 0) {
        t3 = -t3;
    }
    countX = (t2 + t3) >> 4;
    cp = cur;
    cp[0] = *(int *)((char *)obj + 8) + (L6190[dir] & 0xffff0000);
    yy = *(int *)((char *)obj + 0xc);
    cp[1] = yy;
    cp[2] = *(int *)((char *)obj + 0x10) + (L6190[dir] << 16);
    *(int *)((char *)arg0 + 0xc) = yy;
    for (;;) {
        *(int *)((char *)arg0 + 0x10) = cp[2] + (L61e8[*(int *)arg0 * 4 + 1] << 16);
        for (j = 0; j < countY; j++) {
            *(int *)((char *)arg0 + 8) = cp[0] + (L61e8[*(int *)arg0 * 4] << 16);
            for (i = 0; i < countX; i++) {
                if (__TestCollision(obj, (int *)((char *)arg0 + 8)) == 2) {
                    goto hit;
                }
                *(int *)((char *)arg0 + 8) += 0x80 << 13;
            }
            *(int *)((char *)arg0 + 0x10) += 0x80 << 13;
        }
        steps++;
        cur[0] += L6190[dir] & 0xffff0000;
        cur[2] += L6190[dir] << 16;
    }
hit:
    *((unsigned char *)obj + 0x22) = 0;
    if (steps == 0) {
        return 0;
    }
    t = L6190[dir];
    m1 = (t & 0xffff0000) * steps;
    m2 = (t << 16) * steps;
    *(int *)((char *)arg0 + 8) = *(int *)((char *)obj + 8) + m1;
    *(int *)((char *)arg0 + 0xc) = *(int *)((char *)obj + 0xc);
    *(int *)((char *)arg0 + 0x10) = *(int *)((char *)obj + 0x10) + m2;
    return 1;
}

extern unsigned char iwram_3001e70[];
extern int L6190__a2[] __asm__(".Lm883_6190");
extern void OvlFunc_883_2008244(int, int, int, int, int, int);
void __MapActor_SetSpeed(unsigned int, int, int);
extern void __MapActor_SetAnim(unsigned int, unsigned int);
extern void __MapActor_TravelBy(unsigned int, int, int);
extern void __Func_8010704(unsigned int, unsigned int, unsigned int, unsigned int, unsigned int, unsigned int);
extern unsigned char *__MapActor_GetActor(unsigned int);
extern void __Actor_TravelTo(void *, int, int, int);
void __MapActor_WaitMovement(unsigned int);
struct Pk {
int a;
int b;
int x;
int y;
int z;
void (*arg5)(void);
};

void OvlFunc_883_2008608(struct Pk arg)
{
    int va[3];

    int vb[3];
    unsigned char *env;
    unsigned char *actor;
    int *ap;
    unsigned int dir;
    int h;
    int w;
    int t1;
    int t2;
    int zz;
    int camx;
    int camz;
    int v;
    int s5;
    int s6;
    int x1;
    int x2;
    int u1;
    int u2;

    env = (unsigned char *)*(int *)iwram_3001e70;
    dir = *(unsigned short *)(__MapActor_GetActor(0) + 6) >> 12;
    actor = (unsigned char *)__MapActor_GetActor(arg.b);
    t1 = L61e8[(arg.a << 2) + 1];
    if (t1 < 0) t1 = -t1;
    t2 = L61e8[(arg.a << 2) + 3];
    if (t2 < 0) t2 = -t2;
    h = (t1 + t2) >> 4;
    t1 = L61e8[arg.a << 2];
    if (t1 < 0) t1 = -t1;
    t2 = L61e8[(arg.a << 2) + 2];
    if (t2 < 0) t2 = -t2;
    w = (t1 + t2) >> 4;
    *(int *)(actor + 0x30) = 0x8000;
    *(int *)(actor + 0x34) = 0x1999;
    ap = va;
    ap[0] = *(int *)(actor + 8);
    ap[2] = *(int *)(actor + 0x10);
    vb[0] = *(int *)(actor + 8) + (L61e8[arg.a << 2] << 16);
    zz = *(int *)(actor + 0x10) + (L61e8[(arg.a << 2) + 1] << 16);
    vb[0] = vb[0] >> 20;
    vb[2] = zz >> 20;
    OvlFunc_883_2008244(0, vb[0], vb[2], w, h, 0);
    API_MapActor_SetSpeed(0, 0x8000, 0x1999);
    __MapActor_SetAnim(0, 8);
    __CutsceneWait(15);
    __MapActor_TravelBy(0, (arg.x - ap[0]) / 0x20000, (arg.z - ap[2]) / 0x20000);
    *(int *)(__MapActor_GetActor(0) + 0x6c) = (int)OvlFunc_883_20082a8;
    __CutsceneWait(4);
    if (dir - 6 <= 7)
        __Actor_SetAnim(actor, 3);
    else
        __Actor_SetAnim(actor, 2);
    __PlaySound(0xef);
    __Actor_TravelTo(actor, arg.x, arg.y, arg.z);
    __MapActor_WaitMovement(0);
    __MapActor_SetAnim(0, 2);
    API_MapActor_SetSpeed(0, 0x4ccc, 0x1999);
    __MapActor_TravelBy(0, (short)(L6190__a2[dir] >> 16) / 2, (short)(L6190__a2[dir]) / 2);
    if (arg.arg5)
        arg.arg5();
    __MapActor_WaitMovement(0);
    __MapActor_SetAnim(0, 1);
    *(int *)(__MapActor_GetActor(0) + 0x6c) = 0;
    __Actor_WaitMovement(actor);
    __PlaySound(0x120);
    __PlaySound(0xd5);
    *(int *)(actor + 8) = arg.x;
    *(int *)(actor + 0x10) = arg.z;
    *(int *)(actor + 0x24) = 0;
    *(int *)(actor + 0x2c) = 0;
    __Actor_SetAnim(actor, 1);
    x1 = arg.x;
    x2 = arg.z;
    x1 += L61e8[arg.a << 2] << 16;
    x2 += L61e8[(arg.a << 2) + 1] << 16;
    x1 >>= 20;
    x2 >>= 20;
    arg.x = x1;
    arg.z = x2;
    camx = *(int *)(env + 0x13c);
    camx = camx >> 20;
    camz = *(int *)(env + 0x140);
    camz = camz >> 20;
    s5 = camx + arg.x;
    s6 = camz + arg.z;
    __Func_8010704(arg.x, arg.z, w, h, s5, s6);
    OvlFunc_883_2008244(0, arg.x, arg.z, w, h, 0xff);
    OvlFunc_883_2008244(2, arg.x, arg.z, w, h, 0xff);
    u1 = ap[0] + (L61e8[arg.a << 2] << 16);
    u2 = ap[2] + (L61e8[(arg.a << 2) + 1] << 16);
    ap[0] = u1 >> 20;
    ap[2] = u2 >> 20;
    camx += ap[0];
    camz += ap[2];
    __Func_8010704(camx, camz, w, h, ap[0], ap[2]);
    OvlFunc_883_2008244(2, ap[0], ap[2], w, h, 0);
    __MapActor_PlayPendingSound();
}

INCLUDE_ASM("asm/maps/vale_river/OvlFunc_883_20088c0.s");

extern unsigned char gOvl_0200e708[];

unsigned int ValeRiver_GetEntrances(void) {
    return (unsigned int)gOvl_0200e708;
}

int ValeRiver_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200e870[];

void *ValeRiver_GetExits(void) {
    return (void *)gOvl_0200e870;
}

extern unsigned char L6e48[] __asm__(".Lm883_6e48");
extern unsigned char L6cc8[] __asm__(".Lm883_6cc8");
extern unsigned char L6ab8[] __asm__(".Lm883_6ab8");
extern unsigned char L68a8[] __asm__(".Lm883_68a8");
extern int gState;

unsigned char * ValeRiver_GetActors(void) {
    unsigned int r3;
    unsigned int r2;

    r3 = (unsigned int)&gState;
    r2 = 0xe1;
    r2 <<= 1;
    r3 += r2;
    r2 = 0;
    if (*(short *)((char *)r3 + r2) == 0x10) {
        return L6e48;
    }
    if (__GetFlag(0x87a) != 0) {
        return L6cc8;
    }
    if (__GetFlag(0x815) != 0) {
        return L6ab8;
    }
    return L68a8;
}

void OvlFunc_883_2008a44(void)
{
  int new_var;
  unsigned short new_var2;
  unsigned long long new_var4;
  unsigned long new_var5;
  unsigned long long new_var6;
  __CutsceneStart();
  new_var = 0;
  new_var2 = 0x1a;
  __MapActor_SetPos(new_var2, new_var, (long) (new_var4 = new_var));
  __SetFlag(0xfd << 4);
  new_var6 = 0xb5;
 do { new_var6 = (unsigned long) new_var6; } while (0);
  new_var5 = new_var6;
  __Func_808f1c0(new_var5, 3);
  __Func_8091a58(0xb5, 0);
  __CutsceneEnd();
}

void OvlFunc_883_2008a74(void)
{
  int new_var;
  unsigned short new_var2;
  unsigned long long new_var4;
  unsigned long new_var5;
  unsigned long long new_var6;
  __CutsceneStart();
  new_var = 0;
  new_var2 = 0x14;
  __MapActor_SetPos(new_var2, new_var, (long) (new_var4 = new_var));
  __SetFlag(0xfd << 4);
  new_var6 = 0xb5;
 do { new_var6 = (unsigned long) new_var6; } while (0);
  new_var5 = new_var6;
  __Func_808f1c0(new_var5, 3);
  __Func_8091a58(0xb5, 0);
  __CutsceneEnd();
}

extern int __GetFlag(int id);
extern unsigned char L7334[] __asm__(".Lm883_7334");
extern unsigned char L7100[] __asm__(".Lm883_7100");
extern unsigned char L6f38[] __asm__(".Lm883_6f38");

unsigned char *ValeRiver_GetEvents(void)
{
	if (__GetFlag(0x87a))
		return L7334;
	if (__GetFlag(0x815))
		return L7100;
	return L6f38;
}

extern unsigned short __ShowActorMessage_NoWait(int, int);
extern void __CutsceneStart(void);
extern void __MessageID(int);
extern void __ActorMessage(int, int);
extern void __MapActor_TurnToFaceActor(int, int, int);
extern void __Func_8093054(int, int);
extern void __CutsceneEnd(void);

extern void __Func_8012330(int, int, int);
extern void __WaitFrames(int);
extern void __ActorMessage_Wait(int, int, int);
extern void __MapActor_Face(int, int, int);


void OvlFunc_883_2008adc(void) {
    __CutsceneStart();
    if (__GetFlag(0x815)) {
        __MessageID(0x11cc);
        __ActorMessage(0xa, 0);
    } else {
        __MessageID(0xf81);
        __MapActor_TurnToFaceActor(0xa, 0, 4);
        __Func_8093054(0xa, 0);
    }
    __CutsceneEnd();
}

void OvlFunc_883_2008b28(void) {
    __CutsceneStart();
    if (API_GetFlag(0x815) != 0) {
        API_MessageID(0x11c9);
        API_ActorMessage(0xe, 0);
    } else if (API_GetFlag(0x806) == 0) {
        API_SetFlag(0x806);
        API_MessageID(0xf7c);
        __MapActor_TurnToFaceActor(0xe, 0, 4);
        __Func_8093054(0xe, 0);
    } else {
        API_MessageID(0xf7e);
        __MapActor_TurnToFaceActor(0xe, 0, 4);
        API_ActorMessage(0xe, 0);
    }
    __CutsceneEnd();
}

void OvlFunc_883_2008ba8(void) {
    __CutsceneStart();
    if (API_GetFlag(0x807) == 0) {
        API_SetFlag(0x807);
        API_MessageID(0xf63);
        API_MapActor_Emote(0x12, 0x103, 0);
        __MapActor_TurnToFaceActor(0, 0x12, 0x14);
        API_ActorMessage_Wait(0x12, 0, 6);
        API_Func_8092adc(0x12, 0x80 << 8, 0x1e);
        API_MapActor_Jump(0x12, 2, 0x14);
        API_ActorMessage_Wait(0x12, 0, 6);
        API_MapActor_TurnToFaceActor(0x12, 0, 0xa);
        API_MapActor_Emote(0x12, 0x103, 0);
        API_ActorMessage_Wait(0x12, 0, 0xa);
        API_MapActor_Emote(0, 0x81 << 1, 0x3c);
    } else {
        API_MapActor_Emote(0x12, 0x103, 0);
        API_MessageID(0xf66);
        API_ActorMessage_Wait(0x12, 0, 0x14);
    }
    __CutsceneEnd();
}

void OvlFunc_883_2008c60(void) {
    __CutsceneStart();
    if (__GetFlag(0x202)) {
        __MessageID(0xf68);
    } else {
        __MessageID(0xf69);
    }
    __ActorMessage(0x15, 0);
    __CutsceneEnd();
}

void OvlFunc_883_2008c9c(void) {
    __CutsceneStart();
    __MapActor_TurnToFaceActor(0, 0xa, 0x14);
    __MessageID(0x1c8d);
    __ActorMessage(0xa, 0);
    __SetFlag(0x81f);
    __CutsceneEnd();
}

void OvlFunc_883_2008cd0(void)
{
    __CutsceneStart();
    API_Func_8012330(0x30000, 0x30000, 0x10000);
    __WaitFrames(10);
    API_Func_8012330(-1, -1, 0xe666);
    __MessageID(0x1c9a);
    __ActorMessage_Wait(0x11, 0, 0x14);
    __MapActor_Face(0x11, 0, 0x14);
    __ActorMessage(0x11, 0);
    __CutsceneEnd();
}

void OvlFunc_883_2008d2c(void) {
    __CutsceneStart();
    __Func_80925cc(0x13, 2);
    __CutsceneWait(0x14);
    __MapActor_Face(0x13, 0, 0x14);
    __MessageID(0x1c9d);
    __Func_8093054(0x13, 0);
    __SetFlag(0x307);
    __CutsceneEnd();
}

void OvlFunc_883_2008d70(void) {
    int a;
    int b;
    API_SetFlag(0x84 << 2);
    a = 0xa;
    b = 0x54;
    API_Func_8010704(0x28, 0x54, 7, 4, a, b);
}

void OvlFunc_883_2008d98(void)
{
    __ClearFlag(0x210);
    {
        unsigned int arg4 = 0xa;
        unsigned int arg5 = 0x54;

        __Func_8010704(0x28, 0x59, 7, 4, arg4, arg5);
    }
}

extern unsigned char Lm883_7544[] __asm__(".Lm883_7544");

void OvlFunc_883_2008dc0(void) {
	API_PlaySound(0xbc);
    CallFunc_8010560(0x2d, 0xb, Lm883_7544);
	API_MapActor_TravelToAnim(0, 0x101, 0xd2 << 1);
    __Func_8091e9c(0xb);
}



extern void OvlFunc_883_2008fec(void);

void OvlFunc_883_2008df0(void)
{
    if (__GetFlag(0x801) == 0) {
        OvlFunc_883_2008fec();
    } else {
        __PlaySound(0x7b);
        __Func_8091e9c(1);
    }
}

extern void __PlaySound(int);
extern void __Func_8091e9c(int);

void OvlFunc_883_2008e18(void) {
    __PlaySound(0x7b);
    __Func_8091e9c(3);
}


void OvlFunc_883_2008e2c(void) {
    __PlaySound(0x7b);
    __Func_8091e9c(4);
}


void OvlFunc_883_2008e40(void) {
    __PlaySound(0x7b);
    __Func_8091e9c(2);
}

extern unsigned char L755a[] __asm__(".Lm883_755a");
extern void __Func_8010560(void *, int, int);
void OvlFunc_883_2008e54(void) {
	API_PlaySound(0x9e);
	__Func_8010560(L755a, 0x36, 0x20);
	API_MapActor_TravelToAnim(0, 0xcb << 1, 0x2d7);
	__Func_8091e9c(5);
}

extern int L7570[] __asm__(".Lm883_7570");
void OvlFunc_883_2008e84(void) {
	API_PlaySound(0x9e);
	__Func_8010560(L7570, 0x2d, 0x27);
	API_MapActor_TravelToAnim(0, 0x83 << 1, 0x325);
	__Func_8091e9c(6);
}


extern unsigned int iwram_3001ebc;
extern int __Func_8091c7c(int, int);

void OvlFunc_883_2008eb4(void) {
    unsigned int r2;
    unsigned short r3;

    if (API_GetFlag(0x815) != 0 && API_GetFlag(0x87a) == 0) {
        API_CutsceneStart();
        API_MessageID(0x11b6);
        __ShowActorMessage_NoWait(0x15, 0);
        if (__Func_8091c7c(0, 0) == 0) {
            API_ActorMessage_Wait(0x15, 0, 0x3c);
            API_ActorMessage(0x15, 0);
        } else {
            r2 = iwram_3001ebc;
            r3 = *(unsigned short *)(r2 + (0xec << 1));
            r3 += 2;
            *(unsigned short *)(r2 + (0xec << 1)) = r3;
            API_CutsceneWait(0x28);
            API_ActorMessage(0x15, 0);
        }
        API_CutsceneEnd();
    } else {
        API_PlaySound(0x9e);
        __Func_8010560(L755a, 0x32, 0x2c);
        API_MapActor_TravelToAnim(0, 0xaa << 1, 0xde << 2);
        __Func_8091e9c(7);
    }
}

extern void __Func_8010560(void *, int, int);
void OvlFunc_883_2008f5c(void) {
	API_PlaySound(0x9e);
	__Func_8010560(L7570, 0x31, 0x45);
	API_MapActor_TravelToAnim(0, 0xa3 << 1, 0x466);
	__Func_8091e9c(8);
}

extern unsigned char L7586[] __asm__(".Lm883_7586");
void OvlFunc_883_2008f8c(void) {
	API_PlaySound(0x9e);
	__Func_8010560(L7586, 0x34, 0x4c);
	API_MapActor_TravelToAnim(0, 0xbb << 1, 0x4d6);
	__Func_8091e9c(9);
}

extern void __PlaySound(int);
extern void __MapActor_TravelToAnim(int, int, int);

void OvlFunc_883_2008fbc(void)
{
    __PlaySound(0x9e);
    __Func_8010560(L755a, 0x23, 0x4a);
    API_MapActor_TravelToAnim(0, 0x66, 0x4b6);
    __Func_8091e9c(0xa);
}


void OvlFunc_883_2008fec(void) {
    unsigned char *player;
    unsigned char *npc;
    unsigned char *target;

    player = __MapActor_GetActor(0);
    npc = __MapActor_GetActor(5);
    API_CutsceneStart();
    *(int *)(npc + 8) = *(int *)(player + 8);
    *(int *)(npc + 0xc) = *(int *)(player + 0xc);
    *(int *)(npc + 0x10) = *(int *)(player + 0x10);
    *(int *)(npc + 0x38) = 0x80 << 24;
    *(int *)(npc + 0x3c) = 0x80 << 24;
    *(int *)(npc + 0x40) = 0x80 << 24;
    *(int *)(npc + 0x24) = 0;
    *(int *)(npc + 0x28) = 0;
    *(int *)(npc + 0x2c) = 0;
    *(int *)(npc + 0x14) = *(int *)(player + 0xc);
    API_WaitFrames(1);
    API_MapActor_SetSpeed(5, 0x80 << 9, 0x80 << 8);
    API_MapActor_TravelToAnimWait(5, 0x6e, 0x11b);
    API_MapActor_TurnToFaceActor(0, 5, 2);
    API_MessageID(0xf39);
    if (*(int *)(player + 8) < *(int *)(npc + 8)) {
        API_ActorMessage_Wait(0xa005, 0, 2);
    } else {
        API_ActorMessage_Wait(0x8005, 0, 2);
    }
    API_MapActor_DoAnim(0, 3);
    API_CutsceneWait(2);
    API_MapActor_SetAnim(5, 2);
    target = __MapActor_GetActor(0);
    if (target != 0) {
        API_MapActor_TravelTo(5, *(short *)(target + 0xa), *(short *)(target + 0x12));
    }
    API_MapActor_WaitMovement(5);
    API_MapActor_SetPos(5, 0, 0);
    API_MapActor_TravelToAnimWait(0, 0x6e, 0x12f);
    API_CutsceneEnd();
}
INCLUDE_ASM("asm/maps/vale_river/OvlFunc_883_20090d8.s");

void OvlFunc_883_20091d8(void) {
    int msg;

    if (API_GetFlag(0x808) == 0) {
        API_CutsceneStart();
        API_MapActor_SetSpeed(0, 0x80<<9, 0x80<<8);
        msg = MSG_f4d;
        API_MessageID(msg);
        API_ActorMessage_Wait(0xf, 0, 2);
        msg += 2;
        API_ActorMessage_Wait(0x10, 0, 2);
        API_Func_801776c(msg, 1);
        API_CutsceneWait(6);
        API_MapActor_TravelToAnimWait(0, 0x45, 0x366);
        API_CutsceneEnd();
    }
}


void OvlFunc_883_2009244(void) {
    int a;
    int b;
    API_CutsceneStart();
	a = 0x14;
	b = 0x32;
	API_Func_8010704(0x31, 0x35, 8, 4, a, b);
	OvlFunc_883_200b2b0(0, 0xa, 0xb, 1);
	API_SetFlag(0x81 << 2);
	__CutsceneEnd();
}


void OvlFunc_883_2009280(void) {
    int a;
    int b;
	API_CutsceneStart();
	OvlFunc_883_200b380(0, 0xd, 0xa, 1);
	API_ClearFlag(0x81 << 2);
	a = 0x14;
	b = 0x32;
	API_Func_8010704(0x31, 0x2e, 8, 4, a, b);
	API_CutsceneEnd();
}

extern unsigned char gScript_883__0200f59c[];
extern unsigned char gScript_883__0200f5ec[];
extern void __MapActor_SetBehavior(int, void *);
extern void __MapActor_WaitScript(int);
extern void __Func_8093054(int, int);
extern unsigned int OvlFunc_883_200d72c(unsigned char *);
extern unsigned char gScript_883__0200e248[];

void OvlFunc_883_20092bc(void) {
    unsigned char *p;

    p = __MapActor_GetActor(0x16);
    API_CutsceneStart();
    API_MapActor_SetSpeed(0, 0x80 << 10, 0x80 << 10);
    API_MapActor_Jump(0, 5, 0);
    API_MapActor_TravelToAnim(0, 0xd7, 0x193);
    p += 0x5a;
    *p |= 1;
    API_MapActor_SetPos(0x16, 0xa6 << 16, 0x1770000);
    API_Func_8092adc(0x16, 0x80 << 6, 0x14);
    *p ^= 1;
    API_MapActor_SetSpeed(0x16, 0xa0 << 10, 0xa0 << 10);
    API_MapActor_Jump(0x16, 4, 0);
    API_MapActor_TravelToAnimWait(0x16, 0xca, 0x18b);
    API_MapActor_SetAnim(0, 1);
    API_CutsceneWait(0xa);
    API_Func_8092adc(0, 0xb0 << 8, 0);
    API_Func_8092adc(0x16, 0xc0 << 6, 0x18);
    API_MapActor_Emote(0, 0x80 << 1, 0);
    API_Func_809259c(0, 2);
    API_CutsceneWait(0x14);
    API_MapActor_SetSpeed(0x16, 0xc0 << 9, 0x80 << 9);
    __MapActor_SetBehavior(0, (void *)gScript_883__0200f59c);
    API_CutsceneWait(0xa);
    API_MapActor_Emote(0x16, 0x103, 0);
    __MapActor_SetBehavior(0x16, (void *)gScript_883__0200f5ec);
    API_MapActor_WaitScript(0);
    API_MapActor_TravelToAnimWait(0, 0x80 << 1, 0xed << 1);
    API_Func_8092adc(0, 0xc0 << 8, 0);
    API_MapActor_WaitScript(0x16);
    API_MapActor_TravelToAnimWait(0x16, 0x80 << 1, 0xe4 << 1);
    API_MapActor_SetAnim(0, 1);
    API_Func_8092adc(0x16, 0x80 << 7, 0x14);
    API_Func_809259c(0x16, 2);
    API_CutsceneWait(0x14);
    API_MessageID(0xfce);
    __Func_8093054(0x16, 0);
    ((struct Actor *)__MapActor_GetActor(0x16))->update = (actorfun_t *)OvlFunc_883_200d72c;
    __MapActor_SetBehavior(0x16, gScript_883__0200e248);
    API_SetFlag(0x823);
    API_CutsceneEnd();
}


extern unsigned char L763c[] __asm__(".Lm883_763c");
extern unsigned char L76cc[] __asm__(".Lm883_76cc");
extern void OvlFunc_883_2009490(unsigned int, unsigned int);

void OvlFunc_883_2009454(void) {
    unsigned int r5;

    r5 = __MapActor_GetActor(0x16);
    if (__GetFlag(0x823) != 0) {
        short v;
        v = *(short *)((char *)r5 + 0x64);
        if (v == 1) {
            OvlFunc_883_2009490((unsigned int)L763c, (unsigned int)L76cc);
        }
    }
}

extern void __MapActor_SetBehavior(int, void *);
extern void __MapActor_RunScript(int, void *);
extern void __MapActor_WaitScript(int);
extern void __Func_8093054(int, int);
extern unsigned int OvlFunc_883_200d72c(unsigned char *);
extern unsigned char gScript_883__0200e248[];

void OvlFunc_883_2009490(unsigned int script0, unsigned int script16) {
    struct Actor *actor1;
    struct Actor *actor2;
    int a;

    actor1 = (struct Actor *)__MapActor_GetActor(0x16);
    API_CutsceneStart();
    API_Func_809259c(0x16, 2);
    API_MapActor_Emote(0x16, 0x80 << 1, 0x14);
    API_Func_809259c(0, 2);
    API_MapActor_Emote(0, 0x81 << 1, 0x28);
    __MapActor_SetBehavior(0, (void *)script0);
    API_CutsceneWait(0xa);
    API_MapActor_Emote(0x16, 0x103, 0);
    __MapActor_RunScript(0x16, (void *)script16);
    __MapActor_WaitScript(0);
    API_CutsceneWait(0x14);
    a = 0x80 << 9;
    API_Func_80925cc(0x16, 2);
    actor1->scale.x = a;
    actor1->scale.y = a;
    actor2 = (struct Actor *)__MapActor_GetActor(0);
    actor2->scale.x = a;
    actor2->scale.y = a;
    API_MessageID(0xfce);
    __Func_8093054(0x16, 0);
    ((struct Actor *)__MapActor_GetActor(0x16))->update = (actorfun_t *)OvlFunc_883_200d72c;
    __MapActor_SetBehavior(0x16, gScript_883__0200e248);
    API_CutsceneEnd();
}

extern unsigned char L7748[] __asm__(".Lm883_7748");
extern unsigned char L77c4[] __asm__(".Lm883_77c4");

void OvlFunc_883_2009554(void) {
    unsigned int r5;

    r5 = __MapActor_GetActor(0x16);
    if (__GetFlag(0x823) != 0) {
        if (*(short *)((char *)r5 + 0x64) == 2) {
            OvlFunc_883_2009490(L7748, L77c4);
        }
    }
}


void OvlFunc_883_2009590(void) {
    unsigned int r5;
    unsigned int v0;
    short v1;

    r5 = __MapActor_GetActor(0x16);
    v0 = __GetFlag(0x823);
    if (v0 != 0) {
        v1 = *(short *)((char *)r5 + 0x64);
        if (v1 == 1) {
            OvlFunc_883_2009490((unsigned int)L7748, (unsigned int)L76cc);
        } else if (v1 == 2) {
            OvlFunc_883_2009490((unsigned int)L7748, (unsigned int)L77c4);
        }
    }
}

INCLUDE_ASM("asm/maps/vale_river/OvlFunc_883_20095dc.s");
INCLUDE_ASM("asm/maps/vale_river/ValeRiver_MapInit.s");

extern void __Func_8092950(int, int);

void OvlFunc_883_200acb0(void) {
    int msg;
    int actor;
    unsigned char *p;
    unsigned int r2;
    unsigned short r3;

    actor = 0x4008;
    API_CutsceneStart();
    __Func_8092950(0, 0);
    API_MapActor_Face(8, 0, 0x14);
    msg = MSG_1c45;
    API_MessageID(msg);
    API_Func_809259c(8, 2);
    API_ActorMessage_Wait(8, 0, 0x14);
    API_Func_80933d4(0x80 << 9, 0x80 << 6);
    API_Func_80933f8(0xc7 << 17, -1, 0x2460000, 1);
    API_MapActor_SetSpeed(0, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(1, 0xcccc, 0x6666);
    API_MapActor_TravelToAnimWait(0, 0xd2 << 1, 0x98 << 2);
    API_Func_8092adc(0, 0xa0 << 8, 0);
    API_Func_8092adc(8, 0xc0 << 6, 0);
    p = __MapActor_GetActor(0);
    if (p != 0) {
        API_MapActor_SetPos(1, *(int *)(p + 8), *(int *)(p + 0x10));
    }
    API_MapActor_TravelToAnimWait(1, 0xc9 << 1, 0x98 << 2);
    API_Func_8092adc(1, 0xd0 << 8, 0x14);
    API_ActorMessage(0x1001, 0);
    API_Func_8092adc(8, 0xa0 << 7, 0x14);
    API_MapActor_DoAnim(8, 3);
    API_ActorMessage(actor, 0);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_DoAnim(1, 3);
    API_CutsceneWait(0x14);
    API_Func_80925cc(8, 2);
    __ShowActorMessage_NoWait(actor, 0);
    if (__Func_8091c7c(0, 0) == 1) {
        r2 = iwram_3001ebc;
        r3 = *(unsigned short *)(r2 + (0xec << 1));
        r3 += 1;
        *(unsigned short *)(r2 + (0xec << 1)) = r3;
        API_Func_809259c(8, 1);
    }
    API_ActorMessage_Wait(actor, 0, 0x28);
    API_MapActor_Emote(8, 0x105, 0x3c);
    API_MessageID(msg + 6);
    API_ActorMessage_Wait(actor, 0, 0x14);
    API_Func_80925cc(1, 1);
    API_CutsceneWait(0x28);
    API_ActorMessage_Wait(0x1001, 0, 0x28);
    API_Func_80925cc(8, 1);
    API_Func_8092adc(8, 0xd0 << 8, 0x14);
    API_ActorMessage(actor, 0);
    API_MapActor_DoAnim(1, 3);
    API_ActorMessage_Wait(0x1001, 0, 0x78);
    API_ActorMessage_Wait(actor, 0, 0x14);
    API_MapActor_Emote(1, 0x105, 0x28);
    API_ActorMessage_Wait(0x1001, 0, 0x28);
    API_MapActor_DoAnim(8, 4);
    API_ActorMessage_Wait(actor, 0, 0x14);
    API_MapActor_DoAnim(1, 3);
    API_CutsceneWait(0x28);
    API_Func_8092adc(8, 0xa0 << 7, 0x14);
    API_ActorMessage_Wait(actor, 0, 0xa);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_DoAnim(1, 3);
    API_CutsceneWait(0x14);
    API_MapActor_DoAnim(8, 3);
    API_MapActor_SetAnim(1, 2);
    p = __MapActor_GetActor(0);
    if (p != 0) {
        API_MapActor_TravelTo(1, *(short *)(p + 0xa), *(short *)(p + 0x12));
    }
    API_MapActor_WaitMovement(1);
    API_MapActor_SetPos(1, 0, 0);
    API_SetFlag(0x303);
    API_CutsceneEnd();
}

extern int __Func_8091c7c(int, int);

void OvlFunc_883_200af14(void) {
    unsigned char *p;
    unsigned int r2;
    unsigned short r3;

    API_CutsceneStart();
    API_Func_80933f8(0x1650000, -1, 0x2e20000, 1);
    API_MapActor_TravelToAnimWait(0, 0x16f, 0x2e9);
    API_Func_8092adc(0, 0xa0 << 8, 0);
    p = __MapActor_GetActor(0);
    if (p != 0) {
        API_MapActor_SetPos(1, *(int *)(p + 8), *(int *)(p + 0x10));
    }
    API_MapActor_TravelToAnimWait(1, 0xad << 1, 0x2e9);
    API_Func_8092adc(1, 0xd0 << 8, 0x14);
    API_MessageID(0x1c53);
    API_ActorMessage(1, 0);
    API_Func_80925cc(9, 2);
    API_MapActor_Emote(9, 0x80 << 1, 0);
    API_Func_8092adc(9, 0xc0 << 6, 0xa);
    API_Func_8092adc(9, 0xa0 << 7, 0xa);
    API_Func_8092adc(9, 0xc0 << 6, 0x28);
    API_ActorMessage_Wait(9, 0, 0x14);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_DoAnim(1, 3);
    API_Func_80925cc(9, 1);
    API_Func_8092adc(9, 0xa0 << 7, 0xa);
    API_ActorMessage_Wait(9, 0, 0x14);
    API_Func_809259c(1, 1);
    API_MapActor_Emote(1, 0x103, 0x28);
    API_ActorMessage_Wait(1, 0, 0xa);
    API_MapActor_DoAnim(9, 3);
    API_ActorMessage_Wait(9, 0, 0x14);
    API_Func_8092adc(0, 0x80 << 8, 0);
    API_Func_8092adc(1, 0x80 << 5, 0x28);
    API_MapActor_DoAnim(9, 4);
    API_ActorMessage(9, 0);
    API_Func_8092adc(0, 0xb0 << 8, 0);
    API_Func_8092adc(1, 0xd0 << 8, 0xa);
    API_Func_80925cc(1, 2);
    API_CutsceneWait(0x14);
    API_ActorMessage_Wait(1, 0, 0xa);
    API_MapActor_DoAnim(9, 3);
    API_ActorMessage_Wait(9, 0, 0x14);
    API_MapActor_Emote(0, 0x81 << 1, 0);
    API_MapActor_Emote(1, 0x81 << 1, 0x50);
    API_ActorMessage_Wait(1, 0, 0x14);
    API_Func_80925cc(9, 2);
    API_ActorMessage_Wait(9, 0, 0x14);
    API_Func_8092adc(1, 0x80 << 5, 0x14);
    __ShowActorMessage_NoWait(1, 0);
    if (__Func_8091c7c(0, 0) == 0) {
        API_MapActor_Emote(1, 0x105, 0x3c);
    } else {
        r2 = iwram_3001ebc;
        r3 = *(unsigned short *)(r2 + (0xec << 1));
        r3 += 1;
        *(unsigned short *)(r2 + (0xec << 1)) = r3;
    }
    API_ActorMessage_Wait(1, 0, 0x14);
    API_Func_8092adc(1, 0xd0 << 8, 0xa);
    API_MessageID(MSG_1c60);
    API_ActorMessage(1, 0);
    API_MapActor_DoAnim(9, 3);
    API_ActorMessage_Wait(9, 0, 0x14);
    API_MapActor_DoAnim(1, 3);
    API_CutsceneWait(0x14);
    API_Func_8092adc(1, 0x80 << 5, 0x14);
    API_MapActor_DoAnim(1, 3);
    API_MapActor_DoAnim(0, 3);
    API_MapActor_SetAnim(1, 2);
    p = __MapActor_GetActor(0);
    if (p != 0) {
        API_MapActor_TravelTo(1, *(short *)(p + 0xa), *(short *)(p + 0x12));
    }
    API_MapActor_WaitMovement(1);
    API_MapActor_SetPos(1, 0, 0);
    API_SetFlag(0xc1 << 2);
    API_CutsceneEnd();
}

extern void __Actor_SetSpriteFlags(unsigned char *, int);
extern unsigned char gScript_883__0200e65c[];

void OvlFunc_883_200b1b4(void) {
    API_CutsceneStart();
    __Actor_SetSpriteFlags(__MapActor_GetActor(0xc), 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0xd), 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0xe), 0);
    API_MapActor_SetAnim(0xc, 0);
    API_MapActor_SetAnim(0xd, 0);
    API_MapActor_SetAnim(0xe, 0);
    API_WaitFrames(0x14);
    API_Func_8012330(0x80 << 10, 0x80 << 10, 0x80 << 9);
    __MapActor_SetBehavior(0xc, gScript_883__0200e65c);
    API_WaitFrames(0xa);
    __MapActor_SetBehavior(0xd, gScript_883__0200e65c);
    API_Func_8012330(-1, -1, 0xe666);
    API_WaitFrames(0x14);
    __MapActor_RunScript(0xe, gScript_883__0200e65c);
    API_MapActor_Emote(0xb, 0x80 << 1, 0x28);
    API_Func_80925cc(0xb, 2);
    API_Func_8092adc(0xb, 0xd0 << 8, 0xa);
    API_MessageID(MSG_1c90);
    API_ActorMessage_Wait(0xb, 0, 0x28);
    API_MapActor_Face(0xb, 0, 0x14);
    API_ActorMessage(0xb, 0);
    API_Func_8092adc(0xb, 0x80 << 8, 0xa);
    API_SetFlag(0x305);
    API_CutsceneEnd();
}
INCLUDE_ASM("asm/maps/vale_river/OvlFunc_883_200b2b0.s");
INCLUDE_ASM("asm/maps/vale_river/OvlFunc_883_200b380.s");
INCLUDE_ASM("asm/maps/vale_river/OvlFunc_883_200b45c.s");
INCLUDE_ASM("asm/maps/vale_river/OvlFunc_883_200b4c8.s");
INCLUDE_ASM("asm/maps/vale_river/OvlFunc_883_200bfb0.s");

extern void __Func_8096fb0(int a, int b);

void OvlFunc_883_200d594(void) {
    __Func_8096fb0(0x8c, 0);
}

extern void __Func_8097194(void);

void OvlFunc_883_200d5a4(void) {
    __Func_8097194();
}


void OvlFunc_883_200d5b0(void) {
    __MapActor_GetActor(1);
    OvlFunc_883_200dc5c();
}


void OvlFunc_883_200d5c0(void) {
    __MapActor_GetActor(0);
    OvlFunc_883_200dc5c();
}


void OvlFunc_883_200d5d0(void) {
    __MapActor_GetActor(9);
    OvlFunc_883_200dc98();
}


void OvlFunc_883_200d5e0(void) {
    __MapActor_GetActor(0x17);
    OvlFunc_883_200dc98();
}


void OvlFunc_883_200d5f0(void) {
    __MapActor_GetActor(0x18);
    OvlFunc_883_200dc98();
}


void OvlFunc_883_200d600(void) {
    __MapActor_GetActor(0x19);
    OvlFunc_883_200dc98();
}

int OvlFunc_883_200d610(int *a, int *b)
{
  int dx;
  int dy;
  int dz;
  int mag;
  int new_var;
  int (*fp)(int);
  dx = ((*(a++)) - (*(b++))) >> 16;
  if (1)
  {
    dy = ((*(a++)) - (*(b++))) >> 16;
    dz = ((*a) - (*b)) >> 16;
    mag = ((dx * dx) + ((float) (dy * dy))) + (dz * dz);
  }
  new_var = ((dx * dx) + (dy * dy)) + (dz * dz);
  fp = Func_8000948;
  return fp(new_var);
}

INCLUDE_ASM("asm/maps/vale_river/OvlFunc_883_200d64c.s");

extern void OvlFunc_883_200d64c(unsigned char *arg, int a, int b, int c);

unsigned int OvlFunc_883_200d72c(unsigned char *arg0) {
    int r1;
    int r2;

    r1 = __MapActor_GetActor(0);
    r2 = *(int *)((char *)arg0 + 0x38);
    if (r2 == (0x80 << 24)) {
        if (*(int *)((char *)arg0 + 0x40) == r2) {
            return 0;
        }
    }
    OvlFunc_883_200d64c(arg0, r1, 0x12, 0);
    return 0;
}

void OvlFunc_883_200d75c(struct Actor *arg0) {
    extern void __vec3_translate(unsigned int, unsigned int, unsigned int *);
    extern void __Actor_SetSpriteFlags(unsigned char *, int);
    extern void __Actor_SetAnim(struct Actor *, int);
    extern unsigned char gScript_883__0200e6e0[];
    char *sprite;
    struct Actor *actor;
    unsigned int v[3];
    unsigned int rand2;
    unsigned int rand3;
    int c;

    c = ~0xc;
    v[0] = arg0->pos.x;
    v[1] = arg0->pos.y - (__Random() << 4) + 0xfff80000;
    v[2] = arg0->pos.z;
    rand2 = __Random();
    rand3 = __Random();
    __vec3_translate(rand2 * 3 << 4, rand3, v);
    actor = (struct Actor *)API_CreateActor(0x11d, v[0], v[1], v[2]);
    if (actor != 0) {
        actor->__unk55 = 2;
        actor->gravity = 0x1999;
        actor->waitTimer = 0xc;
        __Actor_SetSpriteFlags((unsigned char *)actor, 0);
        __Actor_SetAnim(actor, 0);
        __Actor_SetScript(actor, gScript_883__0200e6e0);
        sprite = (char *)actor->sprite;
        *(unsigned char *)(sprite + 9) = (*(unsigned char *)(sprite + 9) & c) | 4;
    }
    __PlaySound(0x8a);
}

INCLUDE_ASM("asm/maps/vale_river/OvlFunc_883_200d7fc.s");

extern void __vec3_translate(unsigned int a, unsigned int b, unsigned int *c);

void OvlFunc_883_200d8f0(unsigned int *arg0, unsigned int arg1, unsigned int arg2) {
    unsigned int v[3];

    if (arg0 != (unsigned int *)0) {
        v[0] = arg0[2];
        v[1] = arg0[3];
        v[2] = arg0[4];
        __vec3_translate(arg1, arg2, v);
        __Actor_TravelTo((unsigned int)arg0, v[0], v[1], v[2]);
    }
}

extern void OvlFunc_883_20080c4(void);
extern void OvlFunc_883_200d950(void);
void OvlFunc_883_200d928(void) {
    int a;
    int b;
    a = 0x16;
    b = 0x24;
    API_Func_8010704(0x11, 0, 3, 1, a, b);
    OvlFunc_883_20080c4();
    OvlFunc_883_200d950();
}

INCLUDE_ASM("asm/maps/vale_river/OvlFunc_883_200d950.s");

extern unsigned int iwram_3001e40;

void OvlFunc_883_200da08(void) {
    if ((iwram_3001e40 & 0xf) == 0)
        __PlaySound(0x83);
}

void OvlFunc_883_200da24(void)
{
  __CutsceneStart();
 do { { int a = 0xee4; int b = 1; __Func_801776c(a, b); } } while (0);
  __CutsceneEnd();
}

static inline int GetFlag(int flag)
{
    extern int __GetFlag(int);
    return __GetFlag(flag);
}

void OvlFunc_883_200da40(void)
{
    int flag106;

    if (GetFlag(0x241) != 0) {
        flag106 = GetFlag(0x106);
        if (flag106 == 0) {
            ((unsigned char *)__MapActor_GetActor(0x16))[0x5b] = flag106;

            __ClearFlag(0x241);
        }
    } else {
        if (GetFlag(0x106) != 0) {
            ((unsigned char *)__MapActor_GetActor(0x16))[0x5b] = 1;

            __SetFlag(0x241);
        }
    }
}


void OvlFunc_883_200da94(void) {
    struct Actor *actor = __MapActor_GetActor(0);
    struct Actor *actor2;
    if (API_GetFlag(0x87a) != 0) {
        actor2 = __MapActor_GetActor(0x15);
    } else {
        actor2 = __MapActor_GetActor(0x14);
    }

    if (actor2 != 0) {
        if (actor->pos.y > (0xc8 << 16)) {
            actor2->flags = 3;
        } else {
            actor2->flags = 1;
        }
    }
}

int OvlFunc_883_200dae0(int *actor)
{
  short *r7;
  int r5;
  int t;
  unsigned int a;
  unsigned int b;
  r7 = *((short **) (((char *) actor) + 0x50));
  r5 = __sin(*((int *) (((char *) actor) + 0x30))) << 1;
  if (r5 > 0)
  {
    r5 = -r5;
  }
  ;
  *((int *) (((char *) actor) + 8)) = (*((int *) (((char *) actor) + 0x38))) + (__cos(*((int *) (((char *) actor) + 0x30))) << 1);
  *((int *) (((char *) actor) + 0xc)) = (*((int *) (((char *) actor) + 0x3c))) + r5;
  t = __cos((*((int *) (((char *) actor) + 0x30))) + 0x8000);
  if (t < 0)
  {
    t = t + 7;
  }
  r7[15] = t >> 3;
  a = __Random();
  b = __Random();
  *((int *) (((char *) actor) + 0x30)) = ((*((int *) (((char *) actor) + 0x30))) + (((a << 9) >> 16) + ((b << 9) >> 16))) + 0x400;
  return 0;
}

INCLUDE_ASM("asm/maps/vale_river/OvlFunc_883_200db48.s");

extern void __Actor_SetColorswap(unsigned int arg0, unsigned int arg1);
extern void OvlFunc_883_200dd68(unsigned int arg0);

void OvlFunc_883_200dc20(unsigned int arg0)
{
    if (iwram_3001e40 & 2) {
        __Actor_SetColorswap(arg0, 7);
    } else {
        __Actor_SetColorswap(arg0, 0);
    }
    if ((iwram_3001e40 & 0xf) == 0) {
        OvlFunc_883_200dd68(arg0);
    }
}

extern volatile unsigned int iwram_3001e40__a2 __asm__("iwram_3001e40");
extern unsigned int _umodsi3_RAM(unsigned int, unsigned int);

void OvlFunc_883_200dc5c(unsigned int arg0)
{
    if (iwram_3001e40__a2 & 1) {
        __Actor_SetColorswap(arg0, _umodsi3_RAM(iwram_3001e40__a2 >> 1, 6));
    }
    if ((iwram_3001e40__a2 & 0xf) == 0) {
        OvlFunc_883_200dd68(arg0);
    }
}

extern volatile unsigned int iwram_3001e40__a3 __asm__("iwram_3001e40");

void OvlFunc_883_200dc98(int arg0)
{
    if (iwram_3001e40__a3 & 1) {
        __Actor_SetColorswap(arg0, _umodsi3_RAM(iwram_3001e40__a3 >> 1, 6));
    }
}

INCLUDE_ASM("asm/maps/vale_river/OvlFunc_883_200dcc4.s");
INCLUDE_ASM("asm/maps/vale_river/OvlFunc_883_200dd14.s");
INCLUDE_ASM("asm/maps/vale_river/OvlFunc_883_200dd68.s");
INCLUDE_ASM("asm/maps/vale_river/vale_river_data.s");

INCLUDE_ASM("asm/maps/vale_river/imports.s");
