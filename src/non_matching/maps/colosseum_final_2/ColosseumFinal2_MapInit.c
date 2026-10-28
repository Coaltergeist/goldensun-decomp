#include "api.h"
#include "actor.h"
struct Colosseum2StateView { unsigned char prefix[0x1c2]; short room; unsigned char gap[0x1f2-0x1c4]; unsigned char partyMode; };
static inline void Colosseum2Byte(unsigned char *p, int value) { *p = value; }
static inline void Colosseum2Flags(struct Actor *actor, int zero, int flags) {
    unsigned char *p = &actor->__unk55;
    *p = zero;
    p -= 0x32;
    *p = flags;
}
__asm__(".equ .LColosseum2BattleFile, 0xe5");
extern unsigned char Colosseum2BattleFile[] __asm__(".LColosseum2BattleFile");
static inline void Colosseum2Tiles(int a,int b,int c,int d,int e,int f) { extern void __Func_8010788(int,int,int,int,int,int); __Func_8010788(a,b,c,d,e,f); }
int ColosseumFinal2_MapInit(void)
{
    extern struct Colosseum2StateView Colosseum2State __asm__("gState");
    extern unsigned char *Colosseum2Field __asm__("iwram_3001ebc");
    extern int Colosseum2GetActor(int) __asm__("__MapActor_GetActor");
    extern void Colosseum2ActorAnim(struct Actor *, int) __asm__("__Actor_SetAnim");
    extern int __GetFlagByte(int);
    extern void __Func_8092950(int, int);
    extern void __Func_809ad90(int);
    extern int Colosseum2TaskStatus(void (*)(void), unsigned int) __asm__("__Func_8004358");
    extern void __DeleteFieldActor(int);
    extern void __MapActor_SetExtra(int, int);
    extern void OvlFunc_955_200862c(void);
    extern void OvlFunc_955_2008714(void);
    extern void OvlFunc_955_20090dc(int);
    extern void OvlFunc_common1_1608(int,int);
    extern void OvlFunc_common1_1ecc(int,int,int,int,int,int,int);
    extern void OvlFunc_common1_0(void);
    extern void OvlFunc_common1_78(int);
    extern void OvlFunc_common1_ea0(int);
    extern void OvlFunc_common1_1fb4(int);
    extern void OvlFunc_common1_148(void);
    extern void OvlFunc_common1_488(void);
    struct Actor *actor;
    struct Colosseum2StateView *state;
    int id, column, tileX, tileColumn, hiddenMode;
    unsigned char *byte;

    *(int *)(Colosseum2Field + 0x1c0) = 0;
    API_SetFlag(0x144);
    API_Func_8010704(14, 11, 12, 4, 100, 11);
    API_Func_8010704(48, 10, 5, 6, 120, 10);
    for (id = 26; id <= 30; id++) {
        actor = (struct Actor *)Colosseum2GetActor(id);
        Colosseum2ActorAnim(actor, 4);
        Colosseum2Byte(&actor->__unk55, 0);
        actor->pos.y = 0;
        Colosseum2Byte(&actor->flags, 2);
    }
    byte = (unsigned char *)Colosseum2GetActor(18);
    byte += 0x23;
    Colosseum2Byte(byte, 2);
    if (API_GetFlag(0x330)) {
        actor = (struct Actor *)Colosseum2GetActor(30);
        actor->pos.x = 0x1500000;
        actor->pos.y = -0x80000;
        actor->pos.z = 0x1080000;
        API_Func_8010704(19, 16, 1, 1, 20, 16);
        API_Func_8010704(20, 80, 1, 1, 21, 80);
    } else {
        actor = (struct Actor *)Colosseum2GetActor(30);
        Colosseum2ActorAnim(actor, 3);
        actor->pos.y = 0x100000;
    }
    byte = (unsigned char *)Colosseum2GetActor(11);
    byte += 0x23;
    hiddenMode = 0;
    Colosseum2Byte(byte, 2);
    if (API_GetFlag(0x335)) {
        API_Func_8010704(35, 78, 1, 1, 35, 77);
    }
    if (API_GetFlag(0x333)) {
        API_MapActor_SetAnim(19, 4);
        API_Func_8010704(32, 37, 1, 4, 32, 77);
    }
    if (API_GetFlag(0x331)) {
        byte = (unsigned char *)Colosseum2GetActor(20);
        byte += 0x55;
        Colosseum2Byte(byte, hiddenMode);
        byte = (unsigned char *)Colosseum2GetActor(20);
        byte += 0x23;
        Colosseum2Byte(byte, 2);
        API_MapActor_SetAnim(20, 5);
        API_Func_8010704(46, 17, 1, 1, 44, 17);
    }
    if (API_GetFlag(0x332)) {
        byte = (unsigned char *)Colosseum2GetActor(21);
        byte += 0x55;
        Colosseum2Byte(byte, hiddenMode);
        byte = (unsigned char *)Colosseum2GetActor(21);
        byte += 0x23;
        Colosseum2Byte(byte, 2);
        API_MapActor_SetAnim(21, 5);
        API_Func_8010704(46, 17, 1, 1, 50, 17);
    }
    actor = (struct Actor *)Colosseum2GetActor(32);
    tileColumn = actor->pos.x >> 20;
    Colosseum2Flags(actor, hiddenMode, 2);
    API_Func_8010704(52, 28, 1, 3, tileColumn, 10);
    actor = (struct Actor *)Colosseum2GetActor(33);
    tileColumn = actor->pos.x >> 20;
    Colosseum2Flags(actor, hiddenMode, 2);
    API_Func_8010704(52, 28, 1, 3, tileColumn, 13);
    column = __GetFlagByte(0x340);
    if (column == 0) column = 0x49;
    actor = (struct Actor *)Colosseum2GetActor(12);
    actor->pos.x = (column << 20) + 0x80000;
    Colosseum2Flags(actor, hiddenMode, 2);
    API_Func_8010704(71, 16, 1, 1, column, 16);
    column = __GetFlagByte(0x348);
    if (column == 0) column = 0x4c;
    actor = (struct Actor *)Colosseum2GetActor(13);
    actor->pos.x = (column << 20) + 0x80000;
    Colosseum2Flags(actor, hiddenMode, 2);
    API_Func_8010704(71, 16, 1, 1, column, 16);
    column = __GetFlagByte(0x350);
    if (column == 0) column = 0x4f;
    actor = (struct Actor *)Colosseum2GetActor(14);
    actor->pos.x = (column << 20) + 0x80000;
    Colosseum2Flags(actor, hiddenMode, 2);
    API_Func_8010704(71, 16, 1, 1, column, 16);
    OvlFunc_955_200862c();
    API_MapActor_SetAnim(31, 10);
    if (API_GetFlag(0x334)) {
        id = 22;
        tileX = 58;
        for (; id <= 25; id++) {
            actor = (struct Actor *)Colosseum2GetActor(id);
            actor->flags = 2;
            Colosseum2ActorAnim(actor, 4);
            API_Func_8010704(56, 13, 1, 1, tileX, 13);
            tileX += 2;
        }
        API_MapActor_SetAnim(31, 10);
        __Func_809ad90(31);
    } else {
        for (id = 22; id <= 25; id++) {
            actor = (struct Actor *)Colosseum2GetActor(id);
            Colosseum2Byte(&actor->flags, 2);
            Colosseum2ActorAnim(actor, 4);
            actor->speed = 0x8000;
            actor->accel = 0x3333;
        }
        API_StartTask(OvlFunc_955_2008714, 0xc85);
        Colosseum2TaskStatus(OvlFunc_955_2008714, 1);
    }
    API_MapActor_SetAnim(8, 9);
    state = &Colosseum2State;
    Colosseum2Byte(&state->partyMode, 0);
    OvlFunc_common1_1608(41, 89);
    OvlFunc_common1_1608(40, 77);
    __Func_8092950(8, 1);
    switch (state->room) {
    case 1:
        OvlFunc_common1_1ecc(0, 8, 5, 0x680000, 0x1000000, 40, 41);
        Colosseum2Tiles(127, 0, 1, 2, 79, 6);
        __DeleteFieldActor(34);
        __DeleteFieldActor(35);
        __DeleteFieldActor(36);
        __DeleteFieldActor(37);
        __DeleteFieldActor(38);
        __DeleteFieldActor(39);
        if (!API_GetFlag(0x109)) {
            API_PlaySound(17);
            OvlFunc_common1_78(0);
            OvlFunc_common1_0();
            OvlFunc_common1_ea0(2);
        }
        __MapActor_SetExtra(1, 0);
        __MapActor_SetExtra(2, 0);
        __MapActor_SetExtra(3, 0);
        OvlFunc_common1_1fb4((int)Colosseum2BattleFile);
        break;
    case 2:
        API_StartTask(OvlFunc_common1_148, 0xc80);
        __DeleteFieldActor(40);
        __DeleteFieldActor(41);
        if (!API_GetFlag(0x109)) {
            OvlFunc_common1_0();
            OvlFunc_common1_78(1);
            OvlFunc_common1_ea0(0);
        }
        break;
    case 3:
        if (!API_GetFlag(0x109)) {
            OvlFunc_955_20090dc(34);
            OvlFunc_common1_488();
        }
        break;
    case 4:
        OvlFunc_955_2008b38(2);
        API_Func_8091e9c(4);
        break;
    case 5:
        OvlFunc_955_2008b38(-2);
        API_Func_8091e9c(5);
        break;
    }
    return 0;
}
