struct CS952_StateView { unsigned char padding[0x1c0]; short event, room; };
extern struct CS952_StateView CS952_State __asm__("gState");
struct CS952_SceneView { unsigned char padding[0x1c0]; int mode; };
extern struct CS952_SceneView *CS952_SceneTyped __asm__("iwram_3001ebc");
static inline unsigned int CS952_ReadRoom(unsigned short *p) { return *p; }
static inline void CS952_StoreByte(unsigned char *p, int v) { *p = v; }
static inline void CS952_StoreHalf(short *p, int v) { *p = v; }
#include "actor.h"
extern unsigned char *CS952_Scene __asm__("iwram_3001ebc");
extern struct Actor *CS952_GetActor(int) __asm__("__MapActor_GetActor");
extern void CS952_SpriteFlags(void *, int) __asm__("__Actor_SetSpriteFlags");
extern unsigned char *CS952_Alloc(int, unsigned int) __asm__("__galloc_iwram");
extern void CS952_LoadIcon(int) __asm__("__LoadItemIcon");
extern void CS952_Upload(int, int, void *) __asm__("__UploadSpriteGFX");
extern void CS952_Free(int) __asm__("__gfree");
extern unsigned int CS952_Party(unsigned int) __asm__("__Func_80796c4");
extern unsigned char *CS952_Unit(int) __asm__("__GetUnit");
extern void CS952_UpdateBars(int) __asm__("__UpdateStatBarPercent");
extern void CS952_AddMember(int) __asm__("__AddPartyMember");
extern void CS952_PartyUpdate(void) __asm__("__Func_807a7a0");
extern void OvlFunc_952_200a014(void);
extern void OvlFunc_952_20097e8(void);
extern void OvlFunc_952_2008674(void);
extern unsigned char CS952_Event8b[] __asm__(".Lcs952_event8b");
__asm__(".equ .Lcs952_event8b, 0x8b");

static inline int CS952_FillParty(short *members) { return CS952_Party((unsigned int)members); }
static inline void CS952_SetRoom(struct CS952_StateView *state, int value) { state->room = value; }

int BabisPalace_MapInit(void)
{
    unsigned int state;
    unsigned int restoreState;
    short *room;
    unsigned short roomValue;
    int itemFlag, count99, count98, i99, i98, signedRoom, spriteMask;
    struct Actor *actor;
    struct Sprite *sprite;
    unsigned char *icons, *unit, *actorFlags;
    short members99[8];
    short members98[8];
    API_Func_80118c0(1);
    API_Func_80118c0(2);
    API_Func_80118c0(4);
    state = (unsigned int)&gState;
    room = (short *)(state + 0x1c2);
    signedRoom = *room;
    roomValue = CS952_ReadRoom((unsigned short *)room);
    if (signedRoom == 90) {
        API_SetFlag(0x962);
        roomValue = CS952_ReadRoom((unsigned short *)room);
    }
    if (roomValue == 91) {
        API_SetFlag(0x962);
        API_SetFlag(0x950);
    }
    if (*(short *)(state + 0x1c0) == (int)CS952_Event8b)
        goto done;
    if (*room == 11)
        API_ClearFlag(0x12f);
    if (API_GetFlag(0x950)) {
        itemFlag = API_GetFlag(0xf31);
        if (itemFlag) {
            API_MapActor_SetPos(16, 0, 0);
        } else {
            actor = CS952_GetActor(16);
            actor->__unk5C = 1;
            actor->__unk55 = itemFlag;
            sprite = actor->sprite;
            actor->pos.y = 0x40000;
            sprite->numLayers = itemFlag;
            spriteMask = ~0x20;
            ((unsigned char *)sprite)[5] &= spriteMask;
            sprite->oam.palette = 0;
            icons = CS952_Alloc(17, 0x608);
            CS952_LoadIcon(0xcd);
            CS952_Upload(sprite->slot, 0x80, icons + 0x400);
            CS952_Free(17);
        }
        if (CS952_State.room == 33 && !API_GetFlag(0x96f)) {
            API_SetFlag(0x96f);
            API_MapActor_SetPos(14, 0xd00000, 0x2c00000);
            OvlFunc_952_200a014();
        }
        API_MapActor_SetAnim(14, 5);
        CS952_SpriteFlags(CS952_GetActor(14), 0);
    } else if (API_GetFlag(0x962) && !API_GetFlag(0x966)) {
        API_MapActor_SetPos(10, 0x780000, 0x480000);
    }
    CS952_SceneTyped->mode = 0x209;
    actorFlags = (unsigned char *)CS952_GetActor(9) + 0x59;
    CS952_StoreByte(actorFlags, 4 | *actorFlags);
    restoreState = (unsigned int)&gState;
    if (*(short *)(restoreState + 0x1c2) == 99) {
        count99 = CS952_FillParty(members99);
        for (i99 = 0; i99 < count99; i99++) {
            unit = CS952_Unit(members99[i99]);
            *(unsigned short *)(unit + 0x38) = *(unsigned short *)(unit + 0x34);
            *(unsigned short *)(unit + 0x3a) = *(unsigned short *)(unit + 0x36);
            CS952_UpdateBars(members99[i99]);
        }
        CS952_AddMember(1);
        CS952_AddMember(2);
        CS952_AddMember(3);
        CS952_PartyUpdate();
        OvlFunc_952_20097e8();
        restoreState = (unsigned int)&gState;
        CS952_StoreHalf((short *)(restoreState + 0x1c2), 8);
    }
    if (*(short *)(restoreState + 0x1c2) == 98) {
        count98 = CS952_FillParty(members98);
        for (i98 = 0; i98 < count98; i98++) {
            unit = CS952_Unit(members98[i98]);
            *(unsigned short *)(unit + 0x38) = *(unsigned short *)(unit + 0x34);
            *(unsigned short *)(unit + 0x3a) = *(unsigned short *)(unit + 0x36);
            CS952_UpdateBars(members98[i98]);
        }
        CS952_AddMember(1);
        CS952_AddMember(2);
        CS952_AddMember(3);
        CS952_PartyUpdate();
        API_SetFlag(0x966);
        API_SetFlag(0x967);
        API_MapActor_SetPos(10, 0x380000, 0x780000);
        API_Func_8092adc(10, 0xf000, 0);
        OvlFunc_952_2008674();
        CS952_SetRoom(&CS952_State, 8);
    }
done:
    return 0;
}
