extern void __CutsceneStart(void);
extern void __MapTransitionIn(void);
extern void __MapActor_SetSpeed(int actor, int speed, int acceleration);
extern void __Func_8092158(int actor, int x, int z);
extern void __CutsceneEnd(void);

void OvlFunc_921_20099bc(void)
{
    __CutsceneStart();
    __MapTransitionIn();
    {
        register int actor asm("r0");
        register int speed asm("r1");
        register int acceleration asm("r2");

        /* Preserve Camelot's argument setup order for the speed call. */
        speed = 0x80;
        asm volatile("" : "+r"(speed));
        actor = 0;
        asm volatile("" : "+r"(actor), "+r"(speed));
        speed <<= 10;
        acceleration = 0x1999;
        asm volatile("" : "+r"(actor), "+r"(speed), "+r"(acceleration));
        __MapActor_SetSpeed(actor, speed, acceleration);
    }
    __Func_8092158(0, 0xe8, 0xcc);
    __CutsceneEnd();
}
