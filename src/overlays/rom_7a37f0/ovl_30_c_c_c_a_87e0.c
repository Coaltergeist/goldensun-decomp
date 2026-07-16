typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __CutsceneWait(s32 frames);
extern void __PlaySound(s32 soundNo);
extern void __MapActor_SetAnim(s32 actorNo, s32 animationNo);
extern void __MapActor_SetSpeed(s32 actorNo, s32 speed, s32 acceleration);
extern void __MapActor_TravelTo(s32 actorNo, s32 x, s32 z);
extern void __MapActor_WaitMovement(s32 actorNo);
extern void __Func_809228c(s32 actorNo, s32 x, s32 z);
extern void __Func_8010704(s32 sourceX, s32 sourceZ, s32 width, s32 height, s32 destinationX, s32 destinationZ);
extern s16 *state_ptr asm(".L12c4");

void OvlFunc_916_20087e0(void)
{
    __CutsceneStart();
    __MapActor_SetAnim(0, 8);
    __CutsceneWait(6);
    __PlaySound(0xef);
    {
        register s32 speed asm("r1") = 0x80;
        register s32 acceleration asm("r2") = 0x3333;
        register s32 actorNo asm("r0") = 8;
        asm volatile("" : "+r"(speed), "+r"(acceleration), "+r"(actorNo));
        speed <<= 8;
        asm volatile("" : "+r"(speed));
        __MapActor_SetSpeed(actorNo, speed, acceleration);
    }
    __MapActor_SetAnim(8, 2);
    __MapActor_TravelTo(8, 0x48, 0xb0);
    __CutsceneWait(6);
    __MapActor_SetAnim(0, 2);
    {
        register s32 actorNo asm("r0") = 0;
        register s32 speed asm("r1") = 0x4ccc;
        register s32 acceleration asm("r2") = 0x3333;
        asm volatile("" : "+r"(actorNo), "+r"(speed), "+r"(acceleration));
        __MapActor_SetSpeed(actorNo, speed, acceleration);
    }
    __Func_809228c(0, -8, 0);
    __CutsceneWait(0x18);
    __MapActor_SetAnim(0, 1);
    __MapActor_WaitMovement(8);
    __MapActor_SetAnim(8, 1);
    __PlaySound(0x120);
    __PlaySound(0xd5);
    __Func_8010704(5, 9, 1, 4, 6, 9);
    __Func_8010704(0, 0, 1, 4, 4, 9);
    *state_ptr = 1;
    __CutsceneEnd();
}
