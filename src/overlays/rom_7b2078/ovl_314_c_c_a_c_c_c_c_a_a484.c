extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern int __GetFlag(int flag);
extern void __Func_801776c(int message, int arg1);
extern void __PlaySound(int sound);
extern void __Func_8010560(void *script, int x, int z);
extern void __MapActor_SetSpeed(int actor_id, int speed, int acceleration);
extern void __Func_80921c4(int actor_id, int x, int y);
extern void __Func_809218c(int actor_id, int x, int y);
extern void __CutsceneWait(int frames);
extern void __Func_8091e9c(int map_id);
extern unsigned char L477a[] asm(".L477a");

void OvlFunc_926_200a484(void)
{
    __CutsceneStart();
    if (__GetFlag(0x89a) == 0 && __GetFlag(0x895) == 0) {
        __Func_801776c(0x18ad, 1);
        __CutsceneEnd();
    } else {
        __PlaySound(0x9e);
        __Func_8010560(L477a, 0x4e, 0xd);
        {
            register int speed asm("r1");
            register int accel asm("r2");
            register int actor asm("r0");

            speed = 0x80;
            asm volatile("" : "+r"(speed));
            accel = 0x80;
            asm volatile("" : "+r"(speed), "+r"(accel));
            actor = 0;
            asm volatile("" : "+r"(speed), "+r"(accel), "+r"(actor));
            speed <<= 8;
            asm volatile("" : "+r"(speed), "+r"(accel), "+r"(actor));
            accel <<= 7;
            asm volatile("" : "+r"(speed), "+r"(accel), "+r"(actor));
            __MapActor_SetSpeed(actor, speed, accel);
        }
        {
            register int x asm("r1");
            register int actor asm("r0");
            register int y asm("r2");

            x = 0x99;
            asm volatile("" : "+r"(x));
            actor = 0;
            asm volatile("" : "+r"(x), "+r"(actor));
            x <<= 1;
            asm volatile("" : "+r"(x), "+r"(actor));
            y = 0xf8;
            asm volatile("" : "+r"(x), "+r"(actor), "+r"(y));
            __Func_80921c4(actor, x, y);
        }
        {
            register int x asm("r1");
            register int y asm("r2");
            register int actor asm("r0");

            x = 0x98;
            asm volatile("" : "+r"(x));
            x <<= 1;
            asm volatile("" : "+r"(x));
            y = 0xd8;
            asm volatile("" : "+r"(x), "+r"(y));
            actor = 0;
            asm volatile("" : "+r"(x), "+r"(y), "+r"(actor));
            __Func_809218c(actor, x, y);
        }
        __CutsceneWait(0x14);
        __Func_8091e9c(4);
        __CutsceneEnd();
    }
}
