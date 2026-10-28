#include "api.h"
struct WorldEntryState {
    unsigned char prefix[0x1c0];
    short area, room;
    unsigned char middle[0x1f2 - 0x1c4];
    unsigned char field1f2;
};
extern struct WorldEntryState WorldEntry __asm__("gState");
extern unsigned char *WorldEntryScene __asm__("iwram_3001ebc");
extern int WorldDialogueActorID __asm__(".Lm881_679c");
extern int WorldEntryActor(int) __asm__("__MapActor_GetActor");
extern unsigned int WorldEntryRemoveItem(unsigned int) __asm__("__Func_8078a08");
extern unsigned char WorldEntryFlagByte(unsigned int) __asm__("__GetFlagByte");
extern void WorldEntryDestination(unsigned short, unsigned short) __asm__("__SetDestMap");
extern void __Func_8010d48(int, int, int, int);
__asm__(".equ .LWorldEntryMap3A, 0x3a\n.equ .LWorldEntryMapBB, 0xbb");
extern unsigned char WorldEntryMap3A[] __asm__(".LWorldEntryMap3A");
extern unsigned char WorldEntryMapBB[] __asm__(".LWorldEntryMapBB");
static inline void WorldEntryHalf(unsigned short *field, int value) { *field = value; }
extern void OvlFunc_881_2008598(void);
extern void OvlFunc_881_2008a8c(void);
extern void OvlFunc_881_2008c28(void);
extern void OvlFunc_881_20097fc(void);
extern void OvlFunc_881_2009888(void);
extern void OvlFunc_881_2009938(void);
extern void OvlFunc_881_20099e8(void);
extern void OvlFunc_881_2009a98(void);
extern void OvlFunc_881_2009b5c(void);
extern void OvlFunc_881_200a274(void);
extern void OvlFunc_881_200a4a8(void);
extern void OvlFunc_881_200a768(int);
extern void OvlFunc_881_200acb4(void);
extern void OvlFunc_881_200b130(void);
extern void OvlFunc_881_200b2f0(void);
extern void OvlFunc_881_200b57c(void);
extern void OvlFunc_881_200b678(void);
extern void OvlFunc_881_200b9fc(int);

static inline void WorldEntryTiles(int a, int b, int c, int d)
{
    __Func_8010d48(a, b, c, d);
}

int WorldMapCutscenes_MapInit(void)
{
    struct WorldEntryState *state = &WorldEntry;
    unsigned char *scene;
    unsigned char *actor;
    if (state->room == 99) {
        API_SetFlag(0x160);
        API_SetFlag(0x161);
        API_SetFlag(0x163);
    }
    if (state->room == 90) {
        OvlFunc_881_200b9fc(0);
        WorldEntryDestination((int)WorldEntryMap3A, 1);
        return 0;
    }
    if (state->room == 91) {
        OvlFunc_881_200b9fc(1);
        WorldEntryDestination((int)WorldEntryMapBB, 0x5d);
        return 0;
    }
    if (state->room == 78) {
        API_CutsceneStart();
        WorldEntryRemoveItem(0xf2);
        API_Func_8091e9c(0x70);
        return 0;
    }
    API_SetFlag(0x144);
    scene = WorldEntryScene;
    *(int *)(scene + 0x1c0) = 0x400;
    *(int *)(scene + 0x1c8) = 16;
    API_WaitFrames(1);
    API_Func_80933d4(0x80000, 0x10000);
    API_ClearFlag(0x12f);
    API_StartTask(OvlFunc_881_2008598, 0xc80);
    if (!API_GetFlag(0x90a))
        WorldEntryTiles(0x80, 0x100, 0xb0, 0x38);
    switch (state->room) {
    case 1:
        if (!API_GetFlag(0x815)) {
            API_SetFlag(0x815);
            API_SetFlag(0x85c);
        }
        break;
    case 33:
        if (API_GetFlag(0x109)) {
            if (!API_GetFlag(0x85d) && API_GetFlag(0x234)) {
                WorldDialogueActorID = 55;
                API_MapActor_SetPos(55, 0x17940000, 0xd480000);
                actor = (unsigned char *)WorldEntryActor(WorldDialogueActorID);
                WorldEntryHalf((unsigned short *)(actor + 6), 0x3000);
                OvlFunc_881_200a768(WorldDialogueActorID);
            }
        } else {
            if (!API_GetFlag(0x85d) && !API_GetFlag(0x9b8))
                OvlFunc_881_200a4a8();
        }
        break;
    case 49:
        if (!API_GetFlag(0x94f) && API_GetFlag(0x941))
            OvlFunc_881_2008a8c();
        break;
    case 64:
        if (!API_GetFlag(0x85a))
            OvlFunc_881_2008c28();
        break;
    case 65: OvlFunc_881_20097fc(); break;
    case 66: OvlFunc_881_2009888(); break;
    case 67: OvlFunc_881_2009938(); break;
    case 68: OvlFunc_881_20099e8(); break;
    case 69: OvlFunc_881_2009a98(); break;
    case 70: OvlFunc_881_2009b5c(); break;
    case 71: OvlFunc_881_200a274(); break;
    case 72: OvlFunc_881_200b57c(); break;
    case 73: OvlFunc_881_200b130(); break;
    case 74: case 76: case 77:
        API_SetFlag(0x11c);
        if (WorldEntryFlagByte(0x2f8)) {
            WorldEntry.field1f2 = 2;
            API_StartTask(OvlFunc_881_200b678, 0xc80);
        }
        break;
    case 75: OvlFunc_881_200b2f0(); break;
    case 80: OvlFunc_881_200acb4(); break;
    default:
        actor = (unsigned char *)WorldEntryActor(53);
        *(int *)(actor + 0x18) = 0x14000;
        actor = (unsigned char *)WorldEntryActor(53);
        *(int *)(actor + 0x1c) = 0x14000;
        break;
    }
    return 0;
}
