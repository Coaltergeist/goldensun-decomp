extern unsigned char *iwram_3001ebc;
extern void __MapActor_SetSpeed(int, int, int);
extern void __Func_80921c4(int, int, int);
extern int __GetFlag(int);
extern void __CutsceneStart(void);
extern void __MessageID(int);
extern void __ActorMessage(int, int);
extern void __CutsceneEnd(void);
extern void __PlaySound(int);
extern void __Func_8091e9c(int);

void OvlFunc_899_20099e4(void)
{
    register int actor asm("r0");
    register int speed_x asm("r1");
    register int speed_y asm("r2");

    speed_x = 0x80;
    speed_y = 0x80;
    actor = 0;
    asm volatile("" : "+r" (speed_x), "+r" (speed_y), "+r" (actor) : : "memory");
    speed_x <<= 8;
    speed_y <<= 7;
    __MapActor_SetSpeed(actor, speed_x, speed_y);

    speed_x = 0xba;
    speed_y = 0xcc;
    actor = 0;
    asm volatile("" : "+r" (speed_x), "+r" (speed_y), "+r" (actor) : : "memory");
    speed_x <<= 2;
    speed_y <<= 1;
    __Func_80921c4(actor, speed_x, speed_y);

    if (__GetFlag(0x854) == 0) {
        __CutsceneStart();
        __MessageID(0x12c3);
        __ActorMessage(8, 0);
        __CutsceneEnd();
    }

    *(int *)(iwram_3001ebc + (0xe4 << 1)) = 0x10;
    __PlaySound(0x7b);
    __Func_8091e9c(0xe);
}
