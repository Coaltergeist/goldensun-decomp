typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __PlaySound(int sound);
extern void __Func_8010560(void *script, int arg1, int arg2);
extern void OvlFunc_911_20082b4(int param);
extern u8 *__MapActor_GetActor(int actor_id);
extern void __MapActor_SetSpeed(int actor_id, int speed, int accel);
extern void __Func_809228c(int actor_id, int x, int z);
extern void __Func_8091e9c(int value);
extern u8 *iwram_3001ebc;

extern unsigned char Script_2e48[] asm(".L2e48");

void OvlFunc_911_2008304(void)
{
    register u8 *context asm("r7");
    register int arg1 asm("r6");
    register int arg2 asm("r5");
    s16 value;

    context = iwram_3001ebc;
    __CutsceneStart();
    __PlaySound(0x9e);
    value = *(s16 *)(context + 0x16c);
    arg1 = 0;
    arg2 = 0;
    switch (value - 5) {
    case 0:
        arg1 = 0x47;
        arg2 = 9;
        break;
    case 1:
        arg1 = 0x49;
        arg2 = 0x11;
        break;
    case 2:
        arg1 = 0x50;
        arg2 = 0x15;
        break;
    case 3:
        arg1 = 0x54;
        arg2 = 0xc;
        break;
    case 4:
        {
            register u8 *actor asm("r0") = __MapActor_GetActor(0);
            register int zero asm("r3");
            register int speed asm("r1");
            register int accel asm("r2");

            asm volatile("" : "+r"(actor));
            zero = 0;
            asm volatile("" : "+r"(actor), "+r"(zero));
            actor += 0x55;
            asm volatile("" : "+r"(actor), "+r"(zero));
            speed = 0x80;
            asm volatile("" : "+r"(actor), "+r"(zero), "+r"(speed));
            accel = 0x80;
            asm volatile("" : "+r"(actor), "+r"(zero), "+r"(speed), "+r"(accel));
            *actor = zero;
            asm volatile("" : "+r"(speed), "+r"(accel));
            speed <<= 8;
            asm volatile("" : "+r"(speed), "+r"(accel));
            {
                register int actor_id asm("r0") = 0;
                asm volatile("" : "+r"(actor_id), "+r"(speed), "+r"(accel));
                accel <<= 7;
                __MapActor_SetSpeed(actor_id, speed, accel);
            }
        }
        __Func_809228c(0, 0, 8);
        *(int *)(iwram_3001ebc + 0x1c8) = 0x10;
        __Func_8091e9c(9);
        __CutsceneEnd();
        return;
    }
    __Func_8010560(Script_2e48, arg1, arg2);
    OvlFunc_911_20082b4(*(s16 *)(context + 0x16c));
    __CutsceneEnd();
}
