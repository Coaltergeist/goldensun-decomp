#include "api.h"
#include "actor.h"
struct ColosseumInitStateView { unsigned char prefix[0x1c2]; short room; unsigned char gap[0x1f2-0x1c4]; unsigned char partyMode; };
static inline void ColosseumInitByte(unsigned char *p, int value) { *p = value; }
__asm__(".equ .LColosseumBattleFile, 0xe6");
extern unsigned char ColosseumBattleFile[] __asm__(".LColosseumBattleFile");
static inline void ColosseumInitTiles(int a,int b,int c,int d,int e,int f) { extern void __Func_8010788(int,int,int,int,int,int); __Func_8010788(a,b,c,d,e,f); }
static inline void ColosseumInitFlags(struct Actor *actor, int flags, int zero) {
    unsigned char *p = &actor->flags;
    *p = flags;
    p += 0x32;
    *p = zero;
}
int ColosseumFinal3_MapInit(void)
{
    extern struct ColosseumInitStateView ColosseumInitState __asm__("gState");
    extern unsigned char *ColosseumInitField __asm__("iwram_3001ebc");
    extern struct Actor *__MapActor_GetActor(int);
    extern void ColosseumInitSpriteFlags(void *, int) __asm__("__Actor_SetSpriteFlags");
    extern void ColosseumInitActorAnim(void *, int) __asm__("__Actor_SetAnim");
    extern void ColosseumInitActorScript(void *, void *) __asm__("__Actor_SetScript");
    extern int __GetFlagByte(int);
    extern int __Func_8011f54(int, int, int);
    extern void ColosseumInitLayer(int) __asm__("__Func_80118c0");
    extern void __Func_8092950(int, int);
    extern void __Func_809ad90(int);
    extern void __DeleteFieldActor(int);
    extern void __MapActor_SetExtra(int, int);
    extern void __Func_8010788(int,int,int,int,int,int);
    extern void OvlFunc_956_2008658(void);
    extern void OvlFunc_956_200804c(void);
    extern void OvlFunc_956_2009474(int);
    extern void OvlFunc_956_2009a0c(int);
    extern void OvlFunc_common1_1608(int,int);
    extern void OvlFunc_common1_1ecc(int,int,int,int,int,int,int);
    extern void OvlFunc_common1_0(void);
    extern void OvlFunc_common1_78(int);
    extern void OvlFunc_common1_ea0(int);
    extern void OvlFunc_common1_1fb4(int);
    extern void OvlFunc_common1_148(void);
    extern void OvlFunc_common1_488(void);
    extern unsigned char ActorCmd_ARRAY_956__0200cbec[];
    struct Actor *actor;
    struct ColosseumInitStateView *state;
    int column, id, tileX, terrain;

    *(int *)(ColosseumInitField + 0x1c0) = 0x100;
    API_SetFlag(0x144);
    API_StartTask(OvlFunc_956_2008658, 0xc80);
    API_Func_8010704(0x4a, 0x3c, 8, 6, 0x78, 0x3c);
    actor = __MapActor_GetActor(9);
    ColosseumInitSpriteFlags(actor, 0);
    actor = __MapActor_GetActor(10);
    ColosseumInitSpriteFlags(actor, 0);
    ColosseumInitByte(&actor->__unk55, 0);
    actor->pos.y = 0x200000;
    actor = __MapActor_GetActor(11);
    ColosseumInitSpriteFlags(actor, 0);
    ColosseumInitByte(&actor->__unk55, 0);
    actor->pos.y = 0x40000;
    if (API_GetFlag(0x362)) {
        API_MapActor_SetAnim(9, 5);
        actor = __MapActor_GetActor(10);
        actor->pos.y = 0x40000;
        actor = __MapActor_GetActor(11);
        actor->pos.y = 0x200000;
        API_Func_8010704(15, 12, 1, 1, 13, 12);
    } else {
        actor = __MapActor_GetActor(9);
        actor->scale.x = 0x18000;
        actor->scale.y = 0x18000;
        if (API_GetFlag(0x367)) {
            API_Func_8010704(0, 24, 1, 1, 9, 12);
        } else {
            API_Func_8010704(0, 25, 1, 1, 9, 12);
        }
    }
    if (API_GetFlag(0x368)) {
        API_Func_8010704(15, 12, 1, 1, 13, 12);
        API_Func_8010704(1, 25, 1, 1, 9, 12);
        actor = __MapActor_GetActor(12);
        ColosseumInitSpriteFlags(actor, 0);
        ColosseumInitByte(&actor->__unk55, 0);
        actor->pos.y = 0x20000;
        ColosseumInitByte(&actor->flags, 2);
        actor = __MapActor_GetActor(10);
        actor->pos.y = 0x40000;
        ColosseumInitByte(&actor->flags, 2);
        actor = __MapActor_GetActor(11);
        actor->pos.y = 0x200000;
    }
    column = __GetFlagByte(0x370);
    if (column == 0) column = 19;
    actor = __MapActor_GetActor(13);
    actor->pos.x = (column << 20) + 0x80000;
    ColosseumInitByte(&actor->__unk55, 0);
    ColosseumInitByte(&actor->flags, 2);
    API_Func_8010704(18, 10, 3, 1, 18, 11);
    API_Func_8010704(17, 11, 1, 1, column, 11);
    for (id = 15; id <= 17; id++) {
        actor = __MapActor_GetActor(id);
        terrain = __Func_8011f54(0, actor->pos.x, actor->pos.z);
        if (actor->pos.y == 0 && terrain == 0) {
            ColosseumInitByte(&actor->flags, 2);
            ColosseumInitByte(&actor->__unk55, terrain);
            API_Func_8010704(0x53, 13, 1, 1, actor->pos.x >> 20, actor->pos.z >> 20);
            API_Func_8010704(0x53, 13, 1, 1, actor->pos.x >> 20, (actor->pos.z >> 20) + 0x34);
        }
    }
    if (API_GetFlag(0x361)) {
        tileX = 0x21;
        for (id = 18; id <= 22; id++) {
            actor = __MapActor_GetActor(id);
            ColosseumInitByte(&actor->flags, 2);
            ColosseumInitActorAnim(actor, 2);
            actor = __MapActor_GetActor(id + 5);
            ColosseumInitFlags(actor, 2, 0);
            actor->pos.y = 0x200000;
            ColosseumInitActorAnim(actor, 10);
            API_Func_8010704(0x4a, 12, 1, 1, tileX, 11);
            tileX += 2;
        }
        API_MapActor_SetAnim(28, 10);
        __Func_809ad90(28);
    } else {
        for (id = 18; id <= 22; id++) {
            actor = __MapActor_GetActor(id);
            ColosseumInitByte(&actor->flags, 2);
            actor = __MapActor_GetActor(id + 5);
            ColosseumInitFlags(actor, 2, 0);
            actor->pos.y = 0x200000;
        }
        API_StartTask(OvlFunc_956_200804c, 0xc80);
    }
    if (API_GetFlag(0x360)) {
        API_MapActor_SetAnim(29, 4);
        API_Func_8010704(0x2f, 0x3d, 1, 4, 0x31, 0x3d);
    }
    if (API_GetFlag(0x363)) {
        ColosseumInitLayer(1);
        actor = __MapActor_GetActor(30);
        ColosseumInitByte(&actor->__unk55, 0);
        actor->pos.x = 0x46a0000;
        actor->pos.z = 0xb80000;
        ColosseumInitSpriteFlags(actor, 0);
        ColosseumInitActorAnim(actor, 3);
        ColosseumInitActorScript(actor, ActorCmd_ARRAY_956__0200cbec);
    } else {
        ColosseumInitLayer(2);
    }
    if (API_GetFlag(0x369)) {
        actor = __MapActor_GetActor(31);
        ColosseumInitActorAnim(actor, 8);
        ColosseumInitByte(&actor->flags, 2);
        API_Func_8010704(0x56, 10, 1, 2, 0x54, 10);
        API_Func_8010704(0x56, 9, 1, 1, 0x54, 12);
    } else {
        actor = __MapActor_GetActor(31);
        API_Func_8010704(0x55, 9, 1, 4, actor->pos.x >> 20, 9);
        API_Func_8010704(0x55, 9, 1, 4, actor->pos.x >> 20, 0x3d);
    }
    actor = __MapActor_GetActor(9);
    ColosseumInitByte(&actor->__unk55, 0);
    ColosseumInitByte(&actor->flags, 2);
    actor = __MapActor_GetActor(10);
    ColosseumInitByte(&actor->__unk55, 0);
    ColosseumInitByte(&actor->flags, 2);
    actor = __MapActor_GetActor(11);
    ColosseumInitByte(&actor->__unk55, 0);
    ColosseumInitByte(&actor->flags, 2);
    API_MapActor_SetAnim(8, 9);
    state = &ColosseumInitState;
    ColosseumInitByte(&state->partyMode, 0);
    OvlFunc_common1_1608(39, 3);
    OvlFunc_common1_1608(40, 17);
    __Func_8092950(8, 2);
    switch (state->room) {
    case 1:
        OvlFunc_common1_1ecc(0, 8, 6, 0x5e80000, 0xc00000, 39, 40);
        ColosseumInitTiles(0x7f, 0, 1, 2, 5, 2);
        __DeleteFieldActor(32);
        __DeleteFieldActor(33);
        __DeleteFieldActor(34);
        __DeleteFieldActor(35);
        __DeleteFieldActor(36);
        __DeleteFieldActor(37);
        __DeleteFieldActor(38);
        if (!API_GetFlag(0x109)) {
            API_PlaySound(17);
            OvlFunc_common1_78(0);
            OvlFunc_common1_0();
            __MapActor_SetExtra(1, 0);
            OvlFunc_common1_ea0(3);
        }
        __MapActor_SetExtra(1, 0);
        __MapActor_SetExtra(2, 0);
        __MapActor_SetExtra(3, 0);
        OvlFunc_common1_1fb4((int)ColosseumBattleFile);
        break;
    case 2:
        API_StartTask(OvlFunc_common1_148, 0xc80);
        __DeleteFieldActor(39);
        __DeleteFieldActor(40);
        if (!API_GetFlag(0x109)) {
            OvlFunc_common1_0();
            OvlFunc_common1_78(1);
            OvlFunc_common1_ea0(0);
        }
        break;
    case 3:
        if (!API_GetFlag(0x109)) {
            OvlFunc_956_2009a0c(32);
            OvlFunc_common1_488();
        }
        break;
    case 4:
        OvlFunc_956_2009474(1);
        API_Func_8091e9c(4);
        API_SetFlag(0x950);
        API_SetFlag(0x951);
        break;
    case 5:
        OvlFunc_956_2009474(-1);
        API_Func_8091e9c(5);
        API_SetFlag(0x950);
        break;
    }
    return 0;
}
