typedef unsigned char u8;
typedef unsigned int u32;

extern u8 *iwram_3001ebc;
extern volatile u32 gKeyHeld;
extern int Func_8092c40(void);
extern void WaitFrames(int frames);
extern int Func_8092ba8(int actor);
extern int Func_808d394(int actor);
extern void _Func_8019e48(int message);
extern int _Func_8017394(int task);
extern void _Func_8019a54(void);

void ActorMessage(int actor_arg)
{
    register int actor asm("r7") = actor_arg;
    register u8 *base asm("r9") = iwram_3001ebc;
    register int task asm("r10");
    register int message asm("r8");
    register u32 frames asm("r5") = 0;

    task = Func_8092c40();
    WaitFrames(1);
    message = Func_8092ba8(actor);

    if (actor <= 7) {
        register int masked asm("r6") = 0xfff;
        masked &= actor;
        if (Func_808d394(masked) == 0)
            message = masked;
    }

    _Func_8019e48(message);

    if (*(u32 *)(base + 0x1cc) == 0) {
        while (_Func_8017394(task) == 0) {
            WaitFrames(1);
            frames++;
            if (frames > 600 ||
                ((gKeyHeld & 4) != 0 &&
                 (gKeyHeld & 0x100) != 0 &&
                 (gKeyHeld & 0x200) != 0 &&
                 (gKeyHeld & 1) != 0))
                _Func_8019a54();
        }
    }

    WaitFrames(1);
}
