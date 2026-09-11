/* rom_7f148c (overlay file 966): consolidated TU — lalivero map overlay. */

#include "nonmatching.h"
#include "api.h"

INCLUDE_ASM("asm/maps/lalivero/exports.s");

extern void __Func_80955b0(int a, int b, int c);

void OvlFunc_966_2008030(void) {
    __Func_80955b0(0x17, 2, 6);
}

extern unsigned char gOvl_0200975c[];

unsigned int Lalivero_GetEntrances(void) {
    return (unsigned int)gOvl_0200975c;
}

unsigned int Lalivero_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_020098c4[];

void *Lalivero_GetExits(void) {
    return (void *)gOvl_020098c4;
}

extern unsigned char L1a98[] __asm__(".Lm966_1a98");
extern unsigned char L1900[] __asm__(".Lm966_1900");

unsigned int *Lalivero_GetActors(void)
{
    if (__GetFlag(0x9a7))
        return (unsigned int *)L1a98;
    return (unsigned int *)L1900;
}

extern unsigned char ActorCmd_ARRAY_966__02009638[];
void __Func_8092adc(int, int, int);

void OvlFunc_966_2008078(int a)
{
    *(int *)((char *)__MapActor_GetActor(a) + 0x18) = 0x10000;
    *(int *)((char *)__MapActor_GetActor(a) + 0x1c) = 0x10000;
    __MessageID(0x26af);
    __ActorMessage(a, 0);
    API_Func_8092adc(a, 0xc000, 0);
    __CutsceneWait(0x14);
    __MapActor_SetBehavior(a, ActorCmd_ARRAY_966__02009638);
}
extern unsigned char Lconst_28be[] __asm__(".Lconst_28be");
__asm__(".equ .Lconst_28be, 0x28be");

void OvlFunc_966_20080c4(int a)
{
    int msg = (int)Lconst_28be;

    __MessageID(msg);
    __ShowActorMessage_NoWait(a, 0);
    if (__Func_8091c7c(0, 0) == 0) {
        __CutsceneWait(10);
        __MessageID(msg + 1);
    } else {
        __MessageID(msg + 2);
    }
    __ActorMessage(a, 0);
}
void __SetFlag(int);
void __MessageID(int);
void __ActorMessage(int, int);
void __MapActor_SetSpeed(int, int, int);
void __Func_8092304(int, int, int);
void __Func_8092adc(int, int, int);
void __CutsceneWait(int);

void OvlFunc_966_200810c(void)
{
    __SetFlag(0x9bb);
    __MessageID(0x28b8);
    __ActorMessage(0x12, 0);
    API_MapActor_SetSpeed(0x12, 0x10000, 0x8000);
    API_Func_8092304(0x12, -16, 0);
    __Func_8092adc(0x12, 0, 0);
    __CutsceneWait(10);
}
extern unsigned char iwram_3001ebc[];
extern short L1ca8[][2] __asm__(".Lm966_1ca8");
extern unsigned char L1cee[] __asm__(".Lm966_1cee");
extern unsigned char L1cd8[] __asm__(".Lm966_1cd8");

void __PlaySound(int);
int __Func_8010560(void *, unsigned short, unsigned short);
void __Func_80922c4(int, int, int);
void __Func_8092208(int, int, int);
void __Func_8091e9c(int);

void OvlFunc_966_2008158(void)
{
    short r7;
    short r5, r6;

    r7 = *(short *)((char *)*(unsigned int *)iwram_3001ebc + 0xb6 * 2);
    r5 = L1ca8[r7][0];
    r6 = L1ca8[r7][1];
    ((unsigned char *)__MapActor_GetActor(0))[0x55] = 2;
    __PlaySound(0x9e);
    if (r7 == 6) {
        __Func_8010560(L1cee, r5, r6);
        API_Func_80922c4(0, 0, -16);
    } else {
        __Func_8010560(L1cd8, r5, r6);
        API_Func_8092208(0, 2, -16);
    }
    __CutsceneWait(10);
    *(unsigned int *)((char *)*(unsigned int *)iwram_3001ebc + 0xe4 * 2) = 0x10;
    __Func_8091e9c(r7);
}

void OvlFunc_966_20081f0(void) {
    unsigned int r2;
    unsigned int r3;

    r2 = *(unsigned int *)iwram_3001ebc;
    r3 = *(short *)((char *)r2 + 0xb6 * 2);
    *(unsigned int *)((char *)r2 + 0xe4 * 2) = 0x10;
    __Func_8091e9c(r3);
}

void __MapActor_DoAnim(int, int);
void __Func_80925cc(int, int);
void __MapActor_Emote(int, int, int);

static inline void MapActor_Emote(int actor, int emote, int c) {
    __MapActor_Emote(actor, emote << 1, c);
}

INCLUDE_ASM("asm/maps/lalivero/OvlFunc_966_2008218.s");

INCLUDE_ASM("asm/maps/lalivero/OvlFunc_966_20087c4.s");


void OvlFunc_966_2009090(void)
{
    __MessageID(0x28b0);
    __CutsceneWait(0x14);
    __Func_80925cc(0x16, 2);
    __CutsceneWait(0x14);
    __ActorMessage(0x16, 0);
    __CutsceneWait(0xa);
    __MapActor_DoAnim(0x16, 4);
    __CutsceneWait(0x14);
    __ActorMessage(0x16, 0);
    __CutsceneWait(0xa);
    MapActor_Emote(0, 0x80, 0);
    MapActor_Emote(1, 0x80, 0);
    MapActor_Emote(3, 0x80, 0);
    MapActor_Emote(2, 0x80, 0x37);
    __CutsceneWait(0xa);
    __Func_80925cc(1, 2);
    __CutsceneWait(0x14);
    __ActorMessage(1, 0);
    __CutsceneWait(0xa);
    __MapActor_DoAnim(0x16, 4);
    __CutsceneWait(0x14);
    __ActorMessage(0x16, 0);
    __CutsceneWait(0xa);
    MapActor_Emote(3, 0x81, 0x28);
    __ActorMessage(3, 0);
    __CutsceneWait(0xa);
    __MapActor_DoAnim(1, 3);
    __CutsceneWait(0x1e);
    __ActorMessage(1, 0);
    __CutsceneWait(0xa);
    __Func_8092adc(2, 0x8000, 0);
    __CutsceneWait(0x41);
    __Func_8092adc(2, 0xc000, 0);
    __CutsceneWait(0x28);
    __MapActor_DoAnim(2, 3);
    __CutsceneWait(0x1e);
    __ActorMessage(2, 0);
}

void OvlFunc_966_20091bc(void)
{
  unsigned long new_var2;
  unsigned long long new_var;
  unsigned long new_var3;
  unsigned long long new_var4;
  unsigned long new_var5;
  unsigned long long new_var6;
  __CutsceneStart();
  __MessageID(0x28b7);
  new_var = 1;
 do { new_var = (unsigned long) new_var; } while (0);
  new_var2 = new_var;
  __ActorMessage(new_var2, 0);
  new_var4 = 0x10;
 do { new_var4 = (unsigned long) new_var4; } while (0);
  new_var3 = new_var4;
  new_var6 = 0;
 do { new_var6 = (unsigned long) new_var6; } while (0);
  new_var5 = new_var6;
  __Func_8092304(new_var5, 0, -(int) new_var3);
  __CutsceneEnd();
}

extern unsigned char L1ee4[] __asm__(".Lm966_1ee4");
extern unsigned char L1d04[] __asm__(".Lm966_1d04");

unsigned int *Lalivero_GetEvents(void)
{
    if (__GetFlag(0x9a7))
        return (unsigned int *)L1ee4;
    return (unsigned int *)L1d04;
}

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;

void __Actor_SetSpriteFlags(void *, int);
void *__galloc_iwram(int, int);
void __LoadItemIcon(int);
void __UploadSpriteGFX(int, int, void *);
void __gfree(int);
void __Func_8010704(int, int, int, int, int, int);
void __MapActor_SetPos(int, int, int);
void OvlFunc_966_2008218(void);

INCLUDE_ASM("asm/maps/lalivero/Lalivero_MapInit.s");
INCLUDE_ASM("asm/maps/lalivero/lalivero_data.s");

INCLUDE_ASM("asm/maps/lalivero/imports.s");
