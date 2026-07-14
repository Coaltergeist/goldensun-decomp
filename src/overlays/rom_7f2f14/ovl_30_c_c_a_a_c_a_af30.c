extern void __CutsceneStart(void);
extern void __MapActor_SetSpeed(int actor_id, int x, int y);
extern void __Func_80921c4(int actor_id, int x, int y);
extern void __Func_8092adc(int actor, int speed, int arg2);
extern unsigned char *OvlFunc_968_2008058(int x, int y, int speed, int arg3);
extern void __Func_8092708(int actor, int arg1, int arg2);
extern void __CutsceneWait(int frames);
extern void __Func_8091e9c(int map_id);
extern void __CutsceneEnd(void);

void OvlFunc_968_200af30(void)
{
    __CutsceneStart();

    {
        register int x asm("r1") = 0x80;
        register int y asm("r2") = 0x80;
        register int actor_id asm("r0");

        asm volatile("" : "+r"(x));
        asm volatile("" : "+r"(y));
        actor_id = 0;
        asm volatile("" : "+r"(actor_id));
        x <<= 8;
        asm volatile("" : "+r"(x));
        y <<= 7;
        asm volatile("" : "+r"(y));
        __MapActor_SetSpeed(actor_id, x, y);
    }

    {
        register int x asm("r1") = 0x82;
        register int y asm("r2") = 0xb2;
        register int actor_id asm("r0");

        asm volatile("" : "+r"(x));
        asm volatile("" : "+r"(y));
        actor_id = 0;
        asm volatile("" : "+r"(actor_id));
        x <<= 2;
        asm volatile("" : "+r"(x));
        y <<= 2;
        asm volatile("" : "+r"(y));
        __Func_80921c4(actor_id, x, y);
    }

    {
        register int speed asm("r1") = 0x80;
        register int actor_id asm("r0") = 0;
        register int arg2 asm("r2");

        asm volatile("" : "+r"(speed));
        asm volatile("" : "+r"(actor_id));
        speed <<= 7;
        asm volatile("" : "+r"(speed));
        arg2 = 0xa;
        asm volatile("" : "+r"(arg2));
        __Func_8092adc(actor_id, speed, arg2);
    }

    {
        register int x asm("r0") = 0x82;
        register int speed asm("r2") = 0xc4;
        register int arg3 asm("r3") = 0xdf;
        register int y asm("r1");

        asm volatile("" : "+r"(x));
        asm volatile("" : "+r"(speed));
        asm volatile("" : "+r"(arg3));
        speed <<= 18;
        asm volatile("" : "+r"(speed));
        y = 0;
        asm volatile("" : "+r"(y));
        x <<= 18;
        asm volatile("" : "+r"(x));
        OvlFunc_968_2008058(x, y, speed, arg3);
    }

    {
        register int arg1 asm("r1") = 6;
        register int arg2 asm("r2") = 0;
        register int actor_id asm("r0") = 0;

        asm volatile("" : "+r"(arg1));
        asm volatile("" : "+r"(arg2));
        asm volatile("" : "+r"(actor_id));
        __Func_8092708(actor_id, arg1, arg2);
    }

    __CutsceneWait(0x3c);
    __Func_8091e9c(0x14);
    __CutsceneEnd();
}
