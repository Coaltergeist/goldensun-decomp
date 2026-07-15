typedef unsigned char u8;
typedef signed short s16;
extern void __CutsceneStart(void);
extern void __MapActor_SetSpeed(int,int,int);
extern void __PlaySound(int);
extern u8 *__MapActor_GetActor(int);
extern void __MapActor_TravelTo(int,int,int);
extern void __MapActor_WaitMovement(int);
extern void __Func_809228c(int,int,int);
extern void __CutsceneEnd(void);
extern void __ClearFlag(int);
void OvlFunc_948_2009838(void)
{
    u8 *actor;
    __CutsceneStart();
    { register int a asm("r0"); register int b asm("r1"); register int c asm("r2");
      asm volatile("mov r0, #0\n\tldr r1, =0x1b333\n\tldr r2, =0xd999" : "=r"(a), "=r"(b), "=r"(c)); __MapActor_SetSpeed(a,b,c); }
    { register int a asm("r0"); register int b asm("r1"); register int c asm("r2");
      asm volatile("mov r0, #0xc\n\tldr r1, =0x1b333\n\tldr r2, =0xd999" : "=r"(a), "=r"(b), "=r"(c)); __MapActor_SetSpeed(a,b,c); }
    __PlaySound(0xbc);
    actor = __MapActor_GetActor(0);
    if (actor != 0)
        __MapActor_TravelTo(12, *(s16 *)(actor + 0xa), *(s16 *)(actor + 0x12));
    __MapActor_WaitMovement(12);
    __Func_809228c(0, 0, 0x18);
    __PlaySound(0xbc);
    __Func_809228c(12, 0, 0x10);
    __MapActor_WaitMovement(0);
    __MapActor_TravelTo(12, 0x138, 0xe8);
    __MapActor_WaitMovement(12);
    __CutsceneEnd();
    __ClearFlag(0x220);
}
