typedef unsigned char u8;
typedef unsigned short u16;

extern u8 *iwram_3001ebc;
extern void __CutsceneStart(void);
extern void __Func_80921c4(int actor_id, int x, int y);
extern void __Func_8092adc(int actor_id, int value, int duration);
extern void __CutsceneWait(int frames);
extern void __MessageID(int message_id);
extern void __Func_8092c40(int actor_id, int value);
extern int __Func_8091c7c(int, int);
extern void __ActorMessage(int actor_id, int mode);
extern void __MapActor_SetSpeed(int actor_id, int horizontal, int vertical);
extern void __SetFlag(int flag);
extern void __CutsceneEnd(void);

void OvlFunc_949_2008894(void)
{
    __CutsceneStart();
    {
        register int x asm("r1") = 0x98;
        register int y asm("r2") = 0x9c;
        register int actor asm("r0") = 0;

        asm volatile("" : "+r"(x), "+r"(y), "+r"(actor));
        x <<= 1;
        y <<= 1;
        __Func_80921c4(actor, x, y);
    }
    {
        register int value asm("r1") = 0xc0;
        register int actor asm("r0");
        register int duration asm("r2");

        asm volatile("" : "+r"(value));
        actor = 0;
        asm volatile("" : "+r"(actor), "+r"(value));
        value <<= 8;
        asm volatile("" : "+r"(actor), "+r"(value));
        duration = 0;
        asm volatile("" : "+r"(actor), "+r"(value), "+r"(duration));
        __Func_8092adc(actor, value, duration);
    }
    {
        register int value asm("r1") = 0x80;
        register int duration asm("r2");
        register int actor asm("r0");

        asm volatile("" : "+r"(value));
        value <<= 7;
        asm volatile("" : "+r"(value));
        duration = 0;
        asm volatile("" : "+r"(value), "+r"(duration));
        actor = 0x1c;
        asm volatile("" : "+r"(actor), "+r"(value), "+r"(duration));
        __Func_8092adc(actor, value, duration);
    }
    __CutsceneWait(0x14);
    __MessageID(0xe3d);
    {
        register int value asm("r1") = 0;
        register int actor asm("r0");

        asm volatile("" : "+r"(value));
        actor = 0x1c;
        asm volatile("" : "+r"(actor), "+r"(value));
        __Func_8092c40(actor, value);
    }
    if (__Func_8091c7c(0, 0) == 0) {
        *(u16 *)(iwram_3001ebc + 0x1d8) += 1;
        __ActorMessage(0x1c, 0);
        {
            register int horizontal asm("r1") = 0x80;
            register int vertical asm("r2") = 0x80;
            register int actor asm("r0");

            asm volatile("" : "+r"(horizontal), "+r"(vertical));
            actor = 0x1c;
            asm volatile("" : "+r"(actor), "+r"(horizontal), "+r"(vertical));
            horizontal <<= 9;
            vertical <<= 8;
            asm volatile("" : "+r"(actor), "+r"(horizontal), "+r"(vertical));
            __MapActor_SetSpeed(actor, horizontal, vertical);
        }
        {
            register int x asm("r1") = 0xa0;
            register int y asm("r2") = 0x98;
            register int actor asm("r0") = 0x1c;

            asm volatile("" : "+r"(x), "+r"(y), "+r"(actor));
            x <<= 1;
            y <<= 1;
            __Func_80921c4(actor, x, y);
        }
        {
            register int x asm("r1") = 0x9e;
            register int y asm("r2") = 0xa4;
            register int actor asm("r0");

            asm volatile("" : "+r"(x), "+r"(y));
            actor = 0x1c;
            asm volatile("" : "+r"(actor), "+r"(x), "+r"(y));
            x <<= 1;
            y <<= 1;
            asm volatile("" : "+r"(actor), "+r"(x), "+r"(y));
            __Func_80921c4(actor, x, y);
        }
        __Func_8092adc(0x1c, 0xa000, 0);
        __SetFlag(0x8c1);
    } else {
        __ActorMessage(0x1c, 0);
    }
    __CutsceneEnd();
}
