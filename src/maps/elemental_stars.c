/* rom_78ef88 (overlay file 896): consolidated TU — elemental_stars map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/elemental_stars/OvlFunc_896_2008314.s");

extern unsigned char gOvl_0200cd88[];

unsigned int ElementalStars_GetEntrances(void) {
    return (unsigned int)gOvl_0200cd88;
}

unsigned int ElementalStars_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200cdb8[];

void *ElementalStars_GetExits(void) {
    return (void *)gOvl_0200cdb8;
}
extern unsigned char gOvl_0200cdc4[];

void *ElementalStars_GetActors(void) {
    return (void *)gOvl_0200cdc4;
}
extern unsigned char gOvl_0200cfa4[];

void *ElementalStars_GetEvents(void) {
    return (void *)gOvl_0200cfa4;
}

INCLUDE_ASM("asm/maps/elemental_stars/OvlFunc_896_2008390.s");
INCLUDE_ASM("asm/maps/elemental_stars/OvlFunc_896_20086f4.s");

extern void OvlFunc_896_2008a98(void);
extern void OvlFunc_896_2008d5c(void);
extern void OvlFunc_896_2008f8c(void);
extern void OvlFunc_896_2009450(void);
extern void OvlFunc_896_200978c(void);
extern void OvlFunc_896_2009d04(void);
extern void OvlFunc_896_200a27c(void);

void OvlFunc_896_2008a64(void) {
    __CutsceneStart();
    OvlFunc_896_2008a98();
    OvlFunc_896_2008d5c();
    OvlFunc_896_2008f8c();
    OvlFunc_896_2009450();
    OvlFunc_896_200978c();
    OvlFunc_896_2009d04();
    __SetFlag(0x83e);
    __CutsceneEnd();
    OvlFunc_896_200a27c();
}

INCLUDE_ASM("asm/maps/elemental_stars/OvlFunc_896_2008a98.s");
INCLUDE_ASM("asm/maps/elemental_stars/OvlFunc_896_2008d5c.s");
INCLUDE_ASM("asm/maps/elemental_stars/OvlFunc_896_2008f8c.s");
INCLUDE_ASM("asm/maps/elemental_stars/OvlFunc_896_2009450.s");
INCLUDE_ASM("asm/maps/elemental_stars/OvlFunc_896_200978c.s");
INCLUDE_ASM("asm/maps/elemental_stars/OvlFunc_896_2009d04.s");
INCLUDE_ASM("asm/maps/elemental_stars/OvlFunc_896_200a27c.s");
INCLUDE_ASM("asm/maps/elemental_stars/OvlFunc_896_200a400.s");
INCLUDE_ASM("asm/maps/elemental_stars/OvlFunc_896_200a674.s");
INCLUDE_ASM("asm/maps/elemental_stars/OvlFunc_896_200a6e0.s");

void OvlFunc_896_200a74c(void)
{
  int r1;
  int new_var;
  __CutsceneStart();
  __MessageID(0x10ca);
  new_var = 0;
 do { r1 = new_var; __ActorMessage(0xa, r1); } while (0);
  __CutsceneEnd();
}

void OvlFunc_896_200a76c(void)
{
  __CutsceneStart();
 do { __MessageID(0x10c7); } while (0);
  __ActorMessage(0xb, 0);
  __CutsceneEnd();
}

void OvlFunc_896_200a78c(void)
{
  __CutsceneStart();
  __MessageID(0x10c8);
 do { __ActorMessage(0xd, 0); __CutsceneEnd(); } while (0);
}

void OvlFunc_896_200a7ac(void)
{
  int new_var;
  int r4;
  __CutsceneStart();
  __MessageID(0x10cc);
  new_var = 0;
  r4 = new_var;
 do { __ActorMessage(0xe, r4); __CutsceneEnd(); } while (0);
}


void OvlFunc_896_200a7cc(void)
{
  int r1;
  int new_var;
  new_var = 9;
  __CutsceneStart();
 do { __MessageID(0x1072); r1 = 0xa; } while (0);
  OvlFunc_896_200c248(new_var, r1);
  __CutsceneEnd();
}

extern void __Func_8093c00(void);

void OvlFunc_896_200a7ec(void) {
    __Func_8093c00();
}

INCLUDE_ASM("asm/maps/elemental_stars/OvlFunc_896_200a7f8.s");
INCLUDE_ASM("asm/maps/elemental_stars/ElementalStars_MapInit.s");

extern void __ActorMessage(unsigned int arg0, unsigned int arg1);
extern void __CutsceneWait(unsigned int arg0);

void OvlFunc_896_200c248(unsigned int arg0, unsigned int arg1)
{
	__ActorMessage(arg0, 0);
	__CutsceneWait(arg1);
}

INCLUDE_ASM("asm/maps/elemental_stars/OvlFunc_896_200c260.s");
INCLUDE_ASM("asm/maps/elemental_stars/OvlFunc_896_200c328.s");
#include "actor.h"

extern void OvlFunc_common0_10c(int, int, int, int, int, int, int, void *);

struct EffectData {
    int unk0;
    int unk4;
    int unk8;
    int unkc;
    int unk10;
    int unk14;
    short unk18;
    short unk1a;
    int unk1c;
    int unk20;
    int unk24;
};

void OvlFunc_896_200c3bc(void)
{
    struct Actor *actor;
    unsigned int i;
    int x;
    int y;
    struct EffectData data;

    actor = __MapActor_GetActor(0xe);
    __PlaySound(0xbe);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0xe), 0);

    data.unk0 = 1;
    data.unk4 = 5;
    data.unk18 = 0x8e << 1;
    data.unk8 = 0x6666;
    data.unkc = 0xc0 << 10;

    i = 0;
    do {
        __CutsceneWait(1);
        if ((i & 1) == 0) {
            x = actor->pos.x + (((unsigned int)(__Random() * 24) >> 16) << 16) + 0xfff40000;
            y = actor->pos.y + (((unsigned int)(__Random() << 5) >> 16) << 16) + (0x80 << 14);
            OvlFunc_common0_10c(x, y, actor->pos.z, 0, 0xfffc0000, 0, 0xd8 << 13, &data);
        }
        if (i == 0x14) {
            __Func_8092950(0xe, 0x80 << 1);
        }
        i++;
    } while (i <= 0x1f);

    __Func_8092950(0xe, 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0xe), 1);
}
INCLUDE_ASM("asm/maps/elemental_stars/OvlFunc_896_200c49c.s");
INCLUDE_ASM("asm/maps/elemental_stars/OvlFunc_896_200c78c.s");
