/* rom_797990 (overlay file 901): consolidated TU — vault_2 map overlay. */

#include "nonmatching.h"

extern int Func_8000948(int);

int OvlFunc_901_2008314(int *a, int *b)
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

INCLUDE_ASM("asm/maps/vault_2/ovl_314_a_a_c.s");

extern unsigned char gScript_944__02009450[];

unsigned int Vault2_GetEntrances(void) {
    return (unsigned int)gScript_944__02009450;
}

unsigned int Vault2_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_020095a0[];

void *Vault2_GetExits(void) {
    return (void *)gOvl_020095a0;
}
extern unsigned char gOvl_020095d8[];

void *Vault2_GetActors(void) {
    return (void *)gOvl_020095d8;
}

INCLUDE_ASM("asm/maps/vault_2/ovl_314_c_c_a_a_a.s");

extern void OvlFunc_901_20084b4(int);

void OvlFunc_901_200850c(void)
{
  int a;
  int b;
  int c;
  __MessageID(0x1cae);
  a = 0xb;
 do { } while (0);
  b = 0;
  c = 2;
  __MapActor_TurnToFaceActor(a, b, c);
  OvlFunc_901_20084b4(0xb);
}

extern void __CutsceneStart(void);
extern void __MapActor_Face(int a, int b, int c);
extern void __SetFlag(int flag);
extern void __MessageID(int id);
extern void __ActorMessage(int a, int b);
extern void __CutsceneEnd(void);

void OvlFunc_901_200852c(void) {
    __CutsceneStart();
    __MapActor_Face(0xc, 0, 2);
    __SetFlag(0x306);
    __SetFlag(0x868);
    __MessageID(0x1caf);
    __ActorMessage(0xc, 0);
    __CutsceneEnd();
}


void OvlFunc_901_200856c(void)
{
 do { __MessageID(0x1cb0); } while (0);
  __MapActor_TurnToFaceActor(0xd, 0, 2);
  OvlFunc_901_20084b4(0xd);
}

INCLUDE_ASM("asm/maps/vault_2/ovl_314_c_c_a_a_c_c_a_a_a_a.s");

extern unsigned char *iwram_3001ebc;

void OvlFunc_901_20086b4(void)
{
    unsigned short *p;
    unsigned short t0;

    __CutsceneStart();
    __MessageID(0x1cb5);
    t0 = 0x10;
    do { t0 = (unsigned short) t0; } while (0);
    __MapActor_TurnToFaceActor(t0, 0, 2);
    __ShowActorMessage_NoWait(0x10, 0);
    if (__Func_8091c7c(0, 0)) {
        p = (unsigned short *)(iwram_3001ebc + (0xec << 1));
        *p = *p + 1;
    }
    __ActorMessage(0x10, 0);
    __SetFlag(0xc2 << 2);
    __CutsceneEnd();
}

void OvlFunc_901_2008710(void) {
    unsigned short u;
    __CutsceneStart();
    __Func_80925cc(8, 1);
    __CutsceneWait(0x14);
    __MapActor_Face(8, 0, 0x14);
    __SetFlag(0x305);
    __MessageID(0x1cab);
    u = 8;
    do { u = (unsigned short) u; } while (0);
    __ActorMessage_Wait(u, 0, 0x14);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/vault_2/ovl_314_c_c_a_a_c_c_a_a_c.s");

void OvlFunc_901_2008784(void)
{
  __CutsceneStart();
  __Func_80925cc(0xc, 1);
  __CutsceneWait(0x14);
  __MapActor_Face(0xc, 0, 0x14);
  __SetFlag(0x306);
  __SetFlag(0x868);
  __MessageID(0x1caf);
 do { __ActorMessage_Wait(0xc, 0, 0x14); } while (0);
  __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/vault_2/ovl_314_c_c_a_a_c_c_a_c.s");

extern int gOvl_0200976c;
extern void OvlFunc_901_2008a80(int, int, int);

void OvlFunc_901_2008b18(void)
{
  __PlaySound(0x9e);
 do { } while (0);
  __Func_8010560(&gOvl_0200976c, 0x2c, 0x11);
  OvlFunc_901_2008a80(0xd8, 0x90 << 1, 7);
}

extern void *__MapActor_GetActor(unsigned int);
extern void __PlaySound(unsigned int);
extern void __Func_8010560(void *, unsigned int, unsigned int);
extern void __Func_8010704(unsigned int, unsigned int, unsigned int, unsigned int, unsigned int, unsigned int);
extern unsigned char L1782[] __asm__(".Lm901_1782");

void OvlFunc_901_2008b40(void)
{
  unsigned char *actor;
  unsigned char *sprite;
  unsigned int s5;
  unsigned int s6;

  actor = (unsigned char *) __MapActor_GetActor(0);
  sprite = *(unsigned char **) (actor + 0x50);
  __PlaySound(0x9e);
  __Func_8010560(L1782, 0x36, 0xd);
  s5 = 0x17;
  s6 = 0xc;
  __Func_8010704(0x21, 0x14, 1, 3, s5, s6);
  actor[0x23] = actor[0x23] & 0xfe;
  sprite[9] = sprite[9] | 0xc;
  OvlFunc_901_2008a80(0x178, 0xe0, 8);
}

extern unsigned char L1798[] __asm__(".Lm901_1798");
struct Actor901
{
unsigned char pad[0x23];
unsigned char f23;
unsigned char pad2[0x50 - 0x24];
unsigned char *sprite;
};

void OvlFunc_901_2008b9c(void)
{
  struct Actor901 *actor;
  unsigned char *sprite;
  int s1;
  int s2;

  actor = (struct Actor901 *) __MapActor_GetActor(0);
  sprite = actor->sprite;
  __PlaySound(0x9e);
  __Func_8010560(L1798, 0x31, 0xa);
  s1 = 0x12;
  s2 = 0xa;
  __Func_8010704(0x21, 0x14, 1, 3, s1, s2);
  actor->f23 = actor->f23 & 0xfe;
  sprite[9] = sprite[9] | 0xc;
  OvlFunc_901_2008a80(0x94 << 1, 0xb0, 9);
}

INCLUDE_ASM("asm/maps/vault_2/ovl_314_c_c_a_a_c_c_c_c_c.s");

extern void __Func_80955b0(int a, int b, int c);

void OvlFunc_901_2008d74(void) {
    __Func_80955b0(0x15, 0, 4);
}

INCLUDE_ASM("asm/maps/vault_2/ovl_314_c_c_a_c_a_a.s");


extern void __MapActor_SetAnim(unsigned int, unsigned int);
extern void __MapActor_TurnToFaceActor(int, int, int);
extern void __CutsceneWait(int);
extern int __CheckPartyItem(int);
extern int __GetFlag(int);

void OvlFunc_901_2008e90(void) {
    int r0;
    unsigned char *b;
    unsigned short *addr;
    unsigned short v;

    __CutsceneStart();
    __MessageID(0x1342);
    __MapActor_SetAnim(0x12, 0);
    __MapActor_TurnToFaceActor(0x12, 0, 0);
    __CutsceneWait(2);
    __ActorMessage(0x12, 0);
    __MapActor_SetAnim(0x12, 1);
    r0 = __CheckPartyItem(0xe7);
    if (r0 != -1) {
        r0 = __GetFlag(0x858);
        if (r0 == 0) {
            b = iwram_3001ebc;
            addr = (unsigned short *)(b + (0xb9 << 1));
            v = 1;
            *addr = v;
        }
    }
    __CutsceneEnd();
}

extern void __Func_801776c();

void OvlFunc_901_2008f00(void) {
    __CutsceneStart();
    __Func_801776c(0x947, 1);
    __Func_801776c(0x29dc, 1);
    __CutsceneEnd();
}

extern unsigned char gOvl_020097dc[];

void *Vault2_GetEvents(void) {
    return (void *)gOvl_020097dc;
}

INCLUDE_ASM("asm/maps/vault_2/ovl_314_c_c_c.s");
