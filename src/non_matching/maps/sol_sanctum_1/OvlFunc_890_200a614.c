#include "api.h"

struct CS890_Layers { unsigned char beforeEnabled[0xe00]; unsigned short enabled0, enabled1, enabled2; unsigned char beforeUpdate[0x1bfa]; unsigned char update0, update1, update2, update3; };
extern unsigned char CS890_ClearLayer[] __asm__(".Lcs890_clearLayer");
__asm__(".equ .Lcs890_clearLayer, 0");
static inline void CS890_Byte(unsigned char *p, int value) { *p = value; }

static inline void CS890_Word(unsigned char *p, int offset, int value) { *(int *)(p + offset) = value; }
static inline void CS890_Half(unsigned short *p, int value) { *p = value; }

void OvlFunc_890_200a614(void)
{
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern void __Func_800fe9c(void);
    extern int __Func_8091c7c(int, int);
    extern void __Func_8091ff0(unsigned int);
    extern int CS890_Actor(int) __asm__("__MapActor_GetActor");
    extern void OvlFunc_890_200a5fc(unsigned int, unsigned int);
    extern int __ShowActorMessage_NoWait(int, int);
    extern void __StartEarthquake(void);
    int zero;
    unsigned char *actor, *scene;
    struct CS890_Layers *layers;

    API_CutsceneStart();
    API_Func_80933f8(0x11e0000, -1, 0x860000, 0);
    __Func_800fe9c();
    API_WaitFrames(1);
    API_Func_8091220(0x7fff, 0);
    API_Func_8091200(0x7fff, 0);
    API_Func_8091254(1);
    API_WaitFrames(1);
    API_MapActor_SetPos(1, 0x1180000, 0x860000);
    API_Func_8092adc(1, 0xa000, 0);
    CS890_Word(*(unsigned char **)CS_iwram_3001ebc, 0x1c8, 1);
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_Func_8091200(0x2051cc, 1);
    API_Func_8091254(0x78);
    API_WaitFrames(0x78);
    API_SetFlag(0x201);
    API_ClearFlag(0x200);
    API_ClearFlag(0x202);
    API_Func_8091200(0x10000, 2);
    API_Func_8091254(0x3c);
    API_WaitFrames(0x64);
    API_MapActor_Surprise(0, 0x102);
    API_MapActor_Surprise(1, 0x102);
    API_CutsceneWait(0x3c);
    API_Func_8092adc(0, 0x2000, 20);
    API_Func_8092adc(1, 0xe000, 0x28);
    API_Func_8092adc(0, 0x9000, 0x28);
    API_Func_8092adc(1, 0x5000, 0x50);
    API_Func_8092adc(0, 0x8000, 10);
    API_Func_8092adc(1, 0x1000, 0x3c);
    API_Func_8012330(0x30000, 0x30000, 0x10000);
    API_CutsceneWait(20);
    API_Func_8092adc(0, 0x6000, 0);
    API_Func_8092adc(1, 0xe000, 20);
    API_Func_8012330(-1, -1, 0xe666);
    API_CutsceneWait(20);
    API_Func_80925cc(1, 2);
    API_MessageID(0x1119);
    __ShowActorMessage_NoWait(1, 0);
    __Func_8091c7c(0, 0);
    API_MapActor_SetAnim(0, 1);
    API_CutsceneWait(0x28);
    API_PlaySound(0x6b);
    API_Func_8012330(0x40000, 0x40000, 0x10000);
    API_CutsceneWait(0x28);
    __StartEarthquake();
    actor = (unsigned char *)CS890_Actor(0);
    actor += 0x5a;
    CS890_Byte(actor, *actor & 0xfe);
    actor = (unsigned char *)CS890_Actor(1);
    actor += 0x5a;
    CS890_Byte(actor, *actor & 0xfe);
    API_MapActor_Jump(0, 4, 0);
    API_MapActor_Jump(1, 4, 0);
    API_MapActor_TravelTo(0, 0x12c, 0x82);
    API_MapActor_TravelTo(1, 0x10a, 0x90);
    API_MapActor_WaitMovement(1);
    API_CutsceneWait(0x28);
    actor = (unsigned char *)CS890_Actor(0);
    actor += 0x5a;
    CS890_Byte(actor, *actor | 1);
    actor = (unsigned char *)CS890_Actor(1);
    actor += 0x5a;
    CS890_Byte(actor, *actor | 1);
    __Func_8091ff0(0x8d);
    API_Func_8012330(0x10000, 0x10000, 0x10000);
    API_CutsceneWait(0x28);
    API_Func_80925cc(1, 2);
    OvlFunc_890_200a5fc(1, 10);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_DoAnim(1, 3);
    API_MapActor_SetAnim(1, 2);
    zero = 0;
    actor = (unsigned char *)CS890_Actor(0);
    if (actor != 0) {
        API_MapActor_TravelTo(1, *(short *)(actor + 0xa), *(short *)(actor + 0x12));
    }
    API_MapActor_WaitMovement(1);
    API_MapActor_SetPos(1, 0, 0);
    layers = *(struct CS890_Layers **)(CS_iwram_3001ebc + 0x14);
    layers->enabled0 = zero;
    layers->enabled1 = zero;
    layers->enabled2 = zero;
    layers->update0 = (int)CS890_ClearLayer;
    layers->update1 = 1;
    layers->update2 = 1;
    layers->update3 = 1;
    *(volatile unsigned short *)0x5000000 = zero;
    scene = *(unsigned char **)CS_iwram_3001ebc;
    *(int *)(scene + 0x1c0) = 0x204;
    CS890_Word(scene, 0x1c8, 16);
    API_CutsceneEnd();
}
