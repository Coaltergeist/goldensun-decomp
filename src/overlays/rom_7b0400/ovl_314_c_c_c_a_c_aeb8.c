extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __MapActor_SetSpeed(int actor_id, int x, int y);
extern void __Func_80921c4(int actor, int x, int y);
extern void __Func_8092adc(int actor, int speed, int arg2);
extern void __Func_8092b08(int actor, int arg1);
extern void OvlFunc_925_200b208(void);
extern void __Func_80933f8(int x, int y, int z, int mode);
extern void __Func_8091e9c(int actor);

void OvlFunc_925_200aeb8(void)
{
    __CutsceneStart();
    {
        register int y asm("r1") = 0x80;
        register int z asm("r2");
        register int x asm("r0");

        asm volatile("" : "+r"(y));
        z = 0x80;
        asm volatile("" : "+r"(y), "+r"(z));
        x = 0;
        asm volatile("" : "+r"(y), "+r"(z), "+r"(x));
        y <<= 8;
        asm volatile("" : "+r"(y), "+r"(z), "+r"(x));
        z <<= 7;
        __MapActor_SetSpeed(x, y, z);
    }
    __Func_80921c4(0, 0x68, 0x98);
    {
        register int speed asm("r1") = 0x80;
        register int arg2 asm("r2");
        register int actor asm("r0");

        asm volatile("" : "+r"(speed));
        arg2 = 0x3c;
        asm volatile("" : "+r"(speed), "+r"(arg2));
        actor = 0;
        asm volatile("" : "+r"(speed), "+r"(arg2), "+r"(actor));
        speed <<= 7;
        __Func_8092adc(actor, speed, arg2);
    }
    __Func_8092b08(0x11, 0);
    __Func_8092b08(0x12, 0);
    OvlFunc_925_200b208();
    {
        register int x asm("r0") = 1;
        register int y asm("r1");
        register int z asm("r2");
        register int mode asm("r3");

        asm volatile("" : "+r"(x));
        y = 1;
        asm volatile("" : "+r"(x), "+r"(y));
        z = 1;
        asm volatile("" : "+r"(x), "+r"(y), "+r"(z));
        y = -y;
        asm volatile("" : "+r"(x), "+r"(y), "+r"(z));
        z = -z;
        asm volatile("" : "+r"(x), "+r"(y), "+r"(z));
        mode = 0;
        asm volatile("" : "+r"(x), "+r"(y), "+r"(z), "+r"(mode));
        x = -x;
        __Func_80933f8(x, y, z, mode);
    }
    __Func_8091e9c(1);
    __CutsceneEnd();
}
