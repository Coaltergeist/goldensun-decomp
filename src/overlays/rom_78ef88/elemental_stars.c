/* rom_78ef88 (overlay file 896): consolidated TU — elemental_stars map overlay. */

#include "nonmatching.h"
#include "api.h"

INCLUDE_ASM("asm/overlays/rom_78ef88/elemental_stars/OvlFunc_896_2008314.s");

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

INCLUDE_ASM("asm/overlays/rom_78ef88/elemental_stars/OvlFunc_896_2008390.s");
INCLUDE_ASM("asm/overlays/rom_78ef88/elemental_stars/OvlFunc_896_20086f4.s");

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

INCLUDE_ASM("asm/overlays/rom_78ef88/elemental_stars/OvlFunc_896_2008a98.s");
extern void *__MapActor_GetActor(int);

void OvlFunc_896_2008d5c(void)
{
    struct ActorPos {
        int pad[2];
        int x;
        int y;
        int z;
    } *actor;

    API_PlaySound(0x11);
    API_MapActor_SetSpeed(0, 0x8000, 0x4000);
    API_MapActor_TravelToAnimWait(0, 0xe7, 0x1ea);
    API_Func_8092adc(0, 0xc000, 0x1e);
    API_MapActor_DoAnim(0, 3);
    API_CutsceneWait(0xb4);
    API_Func_80925cc(0, 2);
    API_CutsceneWait(0x50);
    API_MapActor_Emote(0, 0x101, 0x3c);
    API_MapActor_SetSpeed(0, 0x8000, 0x4000);
    API_MapActor_TravelToAnimWait(0, 0xf6, 0x1df);
    API_Func_8092adc(0, 0xe000, 0xa);
    actor = (struct ActorPos *)__MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_SetPos(1, actor->x, actor->z);
    }
    API_MapActor_SetSpeed(1, 0x10000, 0x8000);
    API_MapActor_TravelToAnimWait(1, 0x101, 0x1eb);
    API_Func_8092adc(0, 0x2000, 0);
    API_Func_8092adc(1, 0xa000, 0x28);
    API_Func_809259c(0, 2);
    API_Func_80925cc(1, 2);
    API_CutsceneWait(0x14);
    API_MapActor_Emote(0, 0x101, 0);
    API_MapActor_Emote(1, 0x101, 0x50);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_DoAnim(1, 4);
    API_MapActor_SetSpeed(0, 0x13333, 0x9999);
    API_MapActor_SetSpeed(1, 0x13333, 0x9999);
    API_MapActor_TravelToAnim(0, 0x109, 0x1c5);
    API_MapActor_TravelToAnimWait(1, 0x11a, 0x1d5);
    API_MapActor_SetAnim(0, 1);
    API_Func_8092adc(0, 0xe000, 0);
    API_Func_8092adc(1, 0xe000, 0x28);
    API_MapActor_Emote(0, 0x100, 0);
    API_MapActor_Emote(1, 0x100, 0);
    API_MapActor_Jump(0, 6, 0);
    API_MapActor_Jump(1, 6, 0x3c);
    API_MapActor_SetPos(5, 0x1db0000, 0xa6 << 17);
    API_MapActor_SetPos(9, 0x1eb0000, 0xa6 << 17);
    API_MapActor_SetPos(0xb, 0x1cb0000, 0xae << 17);
    API_MapActor_SetPos(0xa, 0x1fb0000, 0xae << 17);
    API_Func_80933d4(0x73333, 0xe666);
    API_Func_80933f8(0x1e50000, -1, 0x1590000, 1);
    API_Func_8092adc(5, 0x6000, 0);
    API_Func_8092adc(9, 0x5000, 0);
    API_Func_8092adc(0xb, 0x5000, 0);
    API_Func_8092adc(0xa, 0x5000, 0);
    API_Func_8093530();
    API_CutsceneWait(0x28);
}
INCLUDE_ASM("asm/overlays/rom_78ef88/elemental_stars/OvlFunc_896_2008f8c.s");
INCLUDE_ASM("asm/overlays/rom_78ef88/elemental_stars/OvlFunc_896_2009450.s");
INCLUDE_ASM("asm/overlays/rom_78ef88/elemental_stars/OvlFunc_896_200978c.s");
INCLUDE_ASM("asm/overlays/rom_78ef88/elemental_stars/OvlFunc_896_2009d04.s");
extern void *__MapActor_GetActor(int);
extern void __Actor_SetScript(void *, const void *);
extern unsigned char gScript_896__0200cbd0[];

/* Prefix of struct Actor (actor.h is included later in this TU). */
struct ElementalStarsActor {
    void *script;
    unsigned short scriptPos;
    unsigned short facing;
    int posX;
    int posY;
    int posZ;
    int floorPos;
    int scaleX;
    int scaleY;
    unsigned char pad20[0x55 - 0x20];
    unsigned char unk55;
    unsigned char pad56[0x5a - 0x56];
    unsigned char unk5A;
    unsigned char pad5B[0x68 - 0x5b];
    void *linkedActor;
};

void OvlFunc_896_200a27c(void)
{
    void *leader;
    struct ElementalStarsActor *actor;
    struct ElementalStarsActor *actor14;
    struct ElementalStarsActor *other;

    leader = __MapActor_GetActor(0);
    API_CutsceneStart();

    API_MapActor_SetBehavior(5, 1);
    API_MapActor_SetBehavior(9, 1);
    API_MapActor_SetBehavior(0xb, 1);
    API_MapActor_SetBehavior(0xa, 1);
    API_MapActor_SetBehavior(0xe, 1);
    API_MapActor_SetBehavior(0xd, 1);

    API_MapActor_SetPos(5, 0x1db0000, 0xa6 << 17);
    API_MapActor_SetPos(9, 0x1eb0000, 0xa6 << 17);
    API_MapActor_SetPos(0xb, 0x1cb0000, 0xae << 17);
    API_MapActor_SetPos(0xa, 0x1fb0000, 0xae << 17);
    API_MapActor_SetPos(0xe, 0xe6 << 17, 0xb4 << 17);
    API_MapActor_SetPos(0xd, 0x1d70000, 0x99 << 17);

    actor = __MapActor_GetActor(5);
    actor->linkedActor = leader;
    actor->unk5A |= 1;
    __Actor_SetScript(actor, gScript_896__0200cbd0);

    actor = __MapActor_GetActor(9);
    actor->linkedActor = leader;
    actor->unk5A |= 1;
    __Actor_SetScript(actor, gScript_896__0200cbd0);

    actor = __MapActor_GetActor(0xb);
    actor->linkedActor = leader;
    actor->unk5A |= 1;
    __Actor_SetScript(actor, gScript_896__0200cbd0);

    actor = __MapActor_GetActor(0xa);
    actor->linkedActor = leader;
    actor->unk5A |= 1;
    __Actor_SetScript(actor, gScript_896__0200cbd0);

    actor14 = __MapActor_GetActor(0xe);
    actor14->linkedActor = leader;
    actor14->unk5A |= 1;
    actor14->scaleX = 0x10000;
    actor14->scaleY = 0x10000;
    other = __MapActor_GetActor(0xb);
    actor14->unk55 = other->unk55;
    actor14->posY = 0;
    __Actor_SetScript(actor14, gScript_896__0200cbd0);

    actor = __MapActor_GetActor(0xd);
    actor->linkedActor = leader;
    actor->unk5A |= 1;
    __Actor_SetScript(actor, gScript_896__0200cbd0);

    API_CutsceneEnd();
}
extern int OvlFunc_896_200c260(int, int, int, int);
extern void __Func_8019908(int, int);
extern void *__MapActor_GetActor(int);
extern short *iwram_3001ebc;

void OvlFunc_896_200a400(void) {
    unsigned char i;
    int effect;
    int *actor;

    API_CutsceneStart();
    API_PlaySound(0x8d);

    i = 0;
    do {
        API_Func_8091200(0x4039d2, 1);
        API_Func_8091254(8);
        API_CutsceneWait(8);
        API_Func_8091200(0x80 << 9, 1);
        API_Func_8091254(8);
        API_CutsceneWait(8);
        if (i == 1) {
            API_Func_8012330(0x80 << 9, 0x80 << 9, 0x80 << 9);
        }
        i++;
    } while (i != 6);

    API_PlaySound(0x121);
    API_Func_8012330(-1, -1, 0xe666);
    API_CopyMapTiles(0, 0x28, 0xd, 0x2e, 3, 3);
    API_CutsceneWait(20);

    effect = OvlFunc_896_200c260(0xde, 0xe8 << 16, 0x80 << 13, 0x90 << 16);
    API_CutsceneWait(40);
    __Func_8019908(effect, 1);
    API_Func_801776c(0x1078, 1);

    API_MapActor_SetPos(5, 0x1330000, 0x1150000);
    API_MapActor_SetPos(9, 0x1330000, 0x1150000);
    API_MapActor_SetPos(0xb, 0x1330000, 0x1150000);
    API_MapActor_SetPos(0xa, 0x1330000, 0x1150000);
    API_MapActor_SetPos(0xe, 0x1330000, 0x1150000);

    API_MapActor_SetSpeed(0, 0x13333, 0x9999);
    API_MapActor_TravelToAnimWait(0, 0xe8, 0x9c);
    API_CutsceneWait(10);

    actor = (int *)__MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_SetPos(1, actor[2], actor[4]);
    }

    API_MapActor_SetSpeed(1, 0x13333, 0x9999);
    API_MapActor_TravelToAnimWait(1, 0xda, 0xac);
    API_MapActor_TurnToFaceActor(1, 0, 0);
    API_CutsceneWait(20);

    API_PlaySound(0x91);
    API_Func_8012330(0x80 << 11, 0x80 << 11, 0x80 << 9);
    API_CutsceneWait(20);
    API_Func_8012330(0x80 << 9, 0x80 << 9, 0x80 << 9);
    API_CutsceneWait(40);

    API_Func_8092adc(0, 0xd0 << 8, 0);
    API_Func_8092adc(1, 0xa0 << 7, 0x32);
    API_PlaySound(0x90);
    API_Func_8012330(0xc0 << 10, 0xc0 << 10, 0x80 << 9);
    API_Func_8092adc(0, 0x80 << 8, 0);
    API_Func_8092adc(1, 0, 0x32);
    API_Func_8012330(0x80 << 9, 0x80 << 9, 0x80 << 9);
    API_Func_8092adc(0, 0, 0);
    API_Func_8092adc(1, 0x80 << 8, 0x32);
    API_Func_8092adc(0, 0xb0 << 8, 0);
    API_Func_8092adc(1, 0xd0 << 8, 0);
    API_PlaySound(0x90);
    API_Func_8012330(0xc0 << 10, 0xc0 << 10, 0x80 << 9);
    API_CutsceneWait(30);

    API_MapActor_Jump(0, 2, 0);
    API_MapActor_Jump(1, 2, 20);
    API_MapActor_Jump(0, 6, 0);
    API_MapActor_Jump(1, 6, 40);

    ((int *)iwram_3001ebc)[0x70] = 0x100;
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_Func_8091e9c(2);
}

void OvlFunc_896_200a674(void) {
    API_CutsceneStart();
    if (API_GetFlag(0x83e)) {
        API_MessageID(0x10cb);
        API_ActorMessage(9, 0);
    } else {
        if (API_GetFlag(0x83c) == 0) {
            API_MessageID(0x1079);
        } else {
            API_MessageID(0x107b);
        }
        API_MapActor_TurnToFaceActor(9, 0, 0);
        API_CutsceneWait(10);
        API_ActorMessage(9, 0);
    }
    API_CutsceneEnd();
}
void OvlFunc_896_200a6e0(void) {
    API_CutsceneStart();
    if (API_GetFlag(0x83e)) {
        API_MessageID(0x10c9);
        API_ActorMessage(5, 0);
    } else {
        if (API_GetFlag(0x83c) == 0) {
            API_MessageID(0x107a);
        } else {
            API_MessageID(0x107c);
        }
        API_MapActor_TurnToFaceActor(5, 0, 0);
        API_CutsceneWait(10);
        API_ActorMessage(5, 0);
    }
    API_CutsceneEnd();
}

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

INCLUDE_ASM("asm/overlays/rom_78ef88/elemental_stars/OvlFunc_896_200a7f8.s");
INCLUDE_ASM("asm/overlays/rom_78ef88/elemental_stars/ElementalStars_MapInit.s");

extern void __ActorMessage(unsigned int arg0, unsigned int arg1);
extern void __CutsceneWait(unsigned int arg0);

void OvlFunc_896_200c248(unsigned int arg0, unsigned int arg1)
{
	__ActorMessage(arg0, 0);
	__CutsceneWait(arg1);
}

INCLUDE_ASM("asm/overlays/rom_78ef88/elemental_stars/OvlFunc_896_200c260.s");
INCLUDE_ASM("asm/overlays/rom_78ef88/elemental_stars/OvlFunc_896_200c328.s");
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
INCLUDE_ASM("asm/overlays/rom_78ef88/elemental_stars/OvlFunc_896_200c49c.s");
INCLUDE_ASM("asm/overlays/rom_78ef88/elemental_stars/OvlFunc_896_200c78c.s");
INCLUDE_ASM("asm/overlays/rom_78ef88/elemental_stars/elemental_stars_data.s");
