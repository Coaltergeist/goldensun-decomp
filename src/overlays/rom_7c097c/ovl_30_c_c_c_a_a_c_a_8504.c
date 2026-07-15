typedef unsigned char u8;

extern void __CutsceneStart(void);
extern void __PlaySound(int soundId);
extern void __CopyMapTiles(int, int, int, int, int, int);
extern void __WaitFrames(int frames);
extern void __MapActor_SetSpeed(int actorId, int xSpeed, int ySpeed);
extern u8 *__MapActor_GetActor(int actorId);
extern void __MapActor_SetAnim(int actorId, int animation);
extern void __Func_809228c(int, int, int);
extern void __CutsceneWait(int frames);
extern void __Func_8091e9c(int);
extern void __MapTransitionOut(void);
extern void __WaitMapTransition(void);
extern void __CutsceneEnd(void);

void OvlFunc_936_2008504(void)
{
    int size = 2;

    __CutsceneStart();
    __PlaySound(0xbc);
    __CopyMapTiles(0x24, 0x17, 0x2b, 0xc, size, size);
    __WaitFrames(5);
    __CopyMapTiles(0x27, 0x17, 0x2b, 0xc, size, size);
    __WaitFrames(5);
    __MapActor_SetSpeed(0, 0x8000, 0x4000);
    __MapActor_GetActor(0)[0x55] = 0;
    __MapActor_SetAnim(0, 2);
    {
        register int offset asm("r2") = 8;
        register int zero asm("r1");
        asm volatile("mov r1, #0\n\tneg r2, r2" : "=r"(zero), "+r"(offset));
        __Func_809228c(0, zero, offset);
    }
    __CutsceneWait(10);
    __Func_8091e9c(2);
    __MapTransitionOut();
    __WaitMapTransition();
    __CutsceneEnd();
}
