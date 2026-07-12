extern void __CutsceneStart(void);
extern void __Func_8092848(int actor, int arg1, int arg2);
extern void __MessageID(int message);
extern void OvlFunc_953_2009c48(int actor);
extern void __Func_8092adc(int actor, int arg1, int arg2);
extern void __MapActor_DoAnim(int actor, int animation);
extern void OvlFunc_953_2009c5c(int actor, int arg1);
extern void __CutsceneEnd(void);

void OvlFunc_953_2008648(void) {
    __CutsceneStart();
    __Func_8092848(0x12, 0, 0x14);
    __MessageID(0x2122);
    OvlFunc_953_2009c48(0x12);
    {
        register int actor asm("r0");
        register int speed asm("r1");
        register int frames asm("r2");

        speed = 0xd0;
        asm volatile("" : "+r"(speed));
        actor = 0x12;
        asm volatile("" : "+r"(actor), "+r"(speed));
        speed <<= 8;
        asm volatile("" : "+r"(actor), "+r"(speed));
        frames = 0x14;
        asm volatile("" : "+r"(actor), "+r"(speed), "+r"(frames));
        __Func_8092adc(actor, speed, frames);
    }
    {
        register int actor asm("r0");
        register int speed asm("r1");
        register int frames asm("r2");

        speed = 0xb0;
        asm volatile("" : "+r"(speed));
        actor = 0x12;
        asm volatile("" : "+r"(actor), "+r"(speed));
        speed <<= 8;
        asm volatile("" : "+r"(actor), "+r"(speed));
        frames = 0x14;
        asm volatile("" : "+r"(actor), "+r"(speed), "+r"(frames));
        __Func_8092adc(actor, speed, frames);
    }
    {
        register int actor asm("r0");
        register int speed asm("r1");
        register int frames asm("r2");

        speed = 0x80;
        asm volatile("" : "+r"(speed));
        actor = 0x12;
        asm volatile("" : "+r"(actor), "+r"(speed));
        speed <<= 8;
        asm volatile("" : "+r"(actor), "+r"(speed));
        frames = 0x28;
        asm volatile("" : "+r"(actor), "+r"(speed), "+r"(frames));
        __Func_8092adc(actor, speed, frames);
    }
    __Func_8092848(0x12, 0, 0x14);
    OvlFunc_953_2009c48(0x12);
    __MapActor_DoAnim(0x12, 3);
    OvlFunc_953_2009c48(0x12);
    OvlFunc_953_2009c5c(0x12, 0x5000);
    __CutsceneEnd();
}
