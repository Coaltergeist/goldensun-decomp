typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

struct Unit {
    u8 pad00[0x14];
    s16 displayHP;
    s16 displayPP;
    u8 pad18[0x1C];
    s16 maxHP;
    s16 maxPP;
    s16 hp;
    s16 pp;
    u8 pad3C[0xF5];
    u8 field131;
};

typedef struct { u8 pad[0x1F4]; s32 actorId; } GameState;

extern GameState gState;
extern void __Func_8079664(int unit_id);
extern void __AddPartyMember(u32 member);
extern void __SetCameraTarget(int actor_id, int preserve_position);
extern struct Unit *__GetUnit(int unit_id);
extern void __Func_8091858(void);
extern s32 _divsi3_RAM(s32, s32);

void OvlFunc_common1_78(s32 member)
{
    struct Unit *unit;
    s32 quotient;
    s32 clamp;

    __Func_8079664(0);
    __Func_8079664(1);
    __Func_8079664(2);
    __Func_8079664(3);
    __Func_8079664(5);
    __AddPartyMember(member);
    gState.actorId = member;
    __SetCameraTarget(member, 0);
    unit = __GetUnit(member);

    unit->hp = unit->maxHP;
    unit->pp = unit->maxPP;
    unit->field131 = 0;

    quotient = _divsi3_RAM(unit->hp << 0xE, unit->maxHP);
    clamp = 0x4000;
    if (quotient <= 0x4000) {
        clamp = 0;
        if (quotient >= 0) {
            clamp = quotient;
        }
    }
    unit->displayHP = clamp;
    if (unit->displayHP == 0 && unit->hp != 0) {
        unit->displayHP = 1;
    }

    quotient = _divsi3_RAM(unit->pp << 0xE, unit->maxPP);
    clamp = 0x4000;
    if (quotient <= 0x4000) {
        clamp = 0;
        if (quotient >= 0) {
            clamp = quotient;
        }
    }
    unit->displayPP = clamp;
    if (unit->displayPP == 0 && unit->pp != 0) {
        unit->displayPP = 1;
    }

    __Func_8091858();
}
