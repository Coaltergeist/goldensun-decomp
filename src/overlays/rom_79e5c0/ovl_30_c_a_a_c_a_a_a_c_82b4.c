typedef unsigned char u8;

extern u8 *__MapActor_GetActor(int actor_id);
extern void __MapActor_SetSpeed(int actor_id, int speed, int accel);
extern void __MapActor_SetAnim(int actor_id, int anim_id);
extern void __Func_809228c(int actor_id, int x, int z);
extern void __Func_8091e9c(int value);
extern u8 *iwram_3001ebc;

void OvlFunc_911_20082b4(int param)
{
    register int saved_param asm("r5") = param;

    asm volatile("" : "+r"(saved_param));
    {
        register u8 *actor asm("r0") = __MapActor_GetActor(0);
        register int zero asm("r3");

        asm volatile("" : "+r"(actor));
        zero = 0;
        asm volatile("" : "+r"(actor), "+r"(zero));
        actor += 0x55;
        {
            register int speed asm("r1") = 0x80;
            register int accel asm("r2") = 0x80;

            asm volatile("" : "+r"(actor), "+r"(zero), "+r"(speed),
                         "+r"(accel));
            *actor = zero;
            asm volatile("" : "+r"(speed), "+r"(accel));
            accel <<= 7;
            {
                register int actor_id asm("r0") = 0;

                asm volatile("" : "+r"(actor_id), "+r"(speed), "+r"(accel));
                speed <<= 8;
                __MapActor_SetSpeed(actor_id, speed, accel);
            }
        }
    }
    __MapActor_SetAnim(0, 2);
    {
        register int z asm("r2") = 8;
        register int actor_id asm("r0");
        register int x asm("r1");

        asm volatile("" : "+r"(z));
        actor_id = 0;
        asm volatile("" : "+r"(z), "+r"(actor_id));
        x = 0;
        asm volatile("" : "+r"(z), "+r"(actor_id), "+r"(x));
        z = -z;
        __Func_809228c(actor_id, x, z);
    }
    {
        u8 *base = iwram_3001ebc;

        *(int *)(base + 0x1c8) = 0x10;
    }
    __Func_8091e9c(saved_param);
}
