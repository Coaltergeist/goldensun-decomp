#include "api.h"

extern unsigned char CS932_ClearStop[] __asm__(".Lcs932_clearStop");
__asm__(".equ .Lcs932_clearStop, 0");
static inline void CS932_Byte(unsigned char *p, int value) { *p = value; }
static inline void CS932_Half(unsigned short *p, int value) { *p = value; }

void OvlFunc_932_2009d0c(void)
{
    extern void CS932_Update(void *) __asm__("OvlFunc_932_2009770");
    extern unsigned char gKeyPress[];
    extern void __Actor_SetSpriteFlags(void *, int);
    extern int CS932_Actor(int) __asm__("__MapActor_GetActor");
    extern void OvlFunc_932_200abb0(unsigned int, unsigned int, unsigned int, unsigned int);
    unsigned char * savedActor;
    unsigned int waitFrames;
    int clearStop;
    unsigned short * counter66;
    unsigned short * counter64;
    unsigned char * stop;
    unsigned char *actor;

    savedActor = (unsigned char *)CS932_Actor(10);
    API_CutsceneStart();
    API_MapActor_SetIdle(10);
    API_Func_80933d4(0x26666, 0x4ccc);
    API_Func_80933f8(0x1170000, 0x400000, 0xd80000, 1);
    API_Func_8093530();
    API_PlaySound(0x93);
    API_Func_80925cc(10, 2);
    API_CutsceneWait(0x28);
    API_Func_8092adc(10, 0x3000, 20);
    API_Func_8092adc(10, 0x5000, 20);
    API_Func_8092adc(10, 0x8000, 0x28);
    API_Func_80933d4(0xcccc, 0x1999);
    API_Func_80933f8(0x800000, 0x400000, 0xca0000, 1);
    clearStop = (int)CS932_ClearStop;
    waitFrames = 0;
    counter66 = (unsigned short *)((savedActor + 0x66));
    *(int *)(savedActor + 0x68) = waitFrames;
    counter64 = (unsigned short *)((savedActor + 0x64));
    CS932_Half(counter64, waitFrames);
    CS932_Half(counter66, waitFrames);
    *(int *)(savedActor + 0x48) = 0x6666;
    *(int *)(savedActor + 0x6c) = (int)CS932_Update;
    API_MapActor_SetSpeed(10, 0x13333, 0x9999);
    API_MapActor_TravelToWait(10, 0xd4, 0xc8);
    API_MapActor_TravelToWait(10, 0x67, 0xc8);
    *(int *)(savedActor + 0x6c) = waitFrames;
    *(unsigned char *)(savedActor + 0x5b) = clearStop;
    stop = (unsigned char *)((savedActor + 0x5b));
    API_CutsceneWait(10);
    API_MapActor_SetAnim(10, 1);
    API_PlaySound(0xe5);
    API_Func_8012330(0x10000, 0, 0x10000);
    API_CutsceneWait(4);
    API_Func_8012330(-1, -1, 0xe666);
    API_CutsceneWait(20);
    API_Func_8092adc(10, 0x5000, 0x28);
    actor = (unsigned char *)CS932_Actor(10);
    actor += 0x5a;
    CS932_Byte(actor, *actor & 0xfe);
    API_MapActor_SetSpeed(10, 0x13333, 0x9999);
    actor = (unsigned char *)CS932_Actor(10);
    __Actor_SetSpriteFlags(actor, 0);
    API_PlaySound(0x99);
    actor = (unsigned char *)CS932_Actor(10);
    *(int *)(actor + 0x28) = 0x40000;
    API_MapActor_SetAnim(10, 3);
    API_MapActor_TravelToWait(10, 0x56, 0xd6);
    API_MapActor_SetAnim(10, 1);
    actor = (unsigned char *)CS932_Actor(10);
    __Actor_SetSpriteFlags(actor, 1);
    API_CutsceneWait(10);
    API_PlaySound(0xe5);
    API_Func_8012330(0x20000, 0, 0x10000);
    API_CutsceneWait(8);
    API_Func_8012330(-1, -1, 0xe666);
    API_CutsceneWait(0x28);
    actor = (unsigned char *)CS932_Actor(10);
    actor += 0x5a;
    CS932_Byte(actor, *actor | 1);
    API_Func_8092adc(10, 0x3000, 20);
    API_Func_8092adc(10, 0, 0x28);
    *(int *)(savedActor + 0x68) = waitFrames;
    CS932_Half(counter64, waitFrames);
    CS932_Half(counter66, waitFrames);
    *(int *)(savedActor + 0x6c) = (int)CS932_Update;
    API_MapActor_SetSpeed(10, 0x13333, 0x9999);
    API_MapActor_TravelToWait(10, 0x78, 0xd7);
    *(int *)(savedActor + 0x6c) = waitFrames;
    *stop = clearStop;
    API_MapActor_SetAnim(10, 1);
    API_CutsceneWait(16);
    API_PlaySound(0xe5);
    API_Func_8012330(0x10000, 0, 0x10000);
    API_CutsceneWait(4);
    API_Func_8012330(-1, -1, 0xe666);
    API_CutsceneWait(0x28);
    API_Func_8092adc(10, 0, 10);
    API_PlaySound(0x93);
    API_Func_80925cc(10, 2);
    API_CutsceneWait(0x50);
    API_MapActor_SetAnim(10, 3);
    OvlFunc_932_200abb0(0x820000, 0, 0xa80000, 0);
    API_CutsceneWait(0x3c);
    if (*(unsigned int *)gKeyPress == 0) {
        do {
            waitFrames++;
            API_CutsceneWait(1);
        } while (waitFrames <= 59 && *(unsigned int *)gKeyPress == 0);
    }
    savedActor = (unsigned char *)CS932_Actor(0);
    API_Func_80933d4(0x4cccc, 0x9999);
    API_Func_80933f8(*(int *)(savedActor + 0x8), *(int *)(savedActor + 0xc), *(int *)(savedActor + 0x10), 1);
    API_Func_8093530();
    API_SetFlag(0x905);
    API_CutsceneEnd();
}
