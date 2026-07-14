typedef unsigned char u8;

extern void __CutsceneStart(void);
extern void __PlaySound(int sound_id);
extern void __Func_8010560(void *script, int x, int z);
extern unsigned char *__MapActor_GetActor(int actor_id);
extern void __MapActor_SetSpeed(int actor_id, int speed, int accel);
extern void __MapActor_SetAnim(int actor_id, int animation);
extern void __Func_809228c(int actor_id, int x, int z);
extern void __CutsceneWait(int frames);
extern void __Func_8091e9c(int map_id);
extern void __CutsceneEnd(void);
extern u8 *iwram_3001ebc;
extern unsigned char gScript_943__0200c764[];

void OvlFunc_926_200a778(void)
{
    __CutsceneStart();
    __PlaySound(0xbc);

    {
        register int x asm("r1") = 0x4d;
        register int z asm("r2");
        register void *script asm("r0");

        asm volatile("" : "+r"(x));
        z = 8;
        asm volatile("" : "+r"(x), "+r"(z));
        script = gScript_943__0200c764;
        asm volatile("" : "+r"(x), "+r"(z), "+r"(script));
        __Func_8010560(script, x, z);
    }

    {
        register unsigned char *actor asm("r0") = __MapActor_GetActor(0);
        register unsigned char zero asm("r3") = 0;

        asm volatile("" : "+r"(actor), "+r"(zero));
        actor += 0x55;
        asm volatile("" : "+r"(actor), "+r"(zero));
        *actor = zero;
    }

    {
        register int speed asm("r1") = 0xcccc;
        register int actor_id asm("r0");
        register int accel asm("r2");

        asm volatile("" : "+r"(speed));
        actor_id = 0;
        asm volatile("" : "+r"(actor_id), "+r"(speed));
        accel = 0x6666;
        asm volatile("" : "+r"(actor_id), "+r"(speed), "+r"(accel));
        __MapActor_SetSpeed(actor_id, speed, accel);
    }

    {
        register unsigned char *state asm("r3");
        register int offset asm("r2") = 0xe0;

        state = iwram_3001ebc;
        asm volatile("" : "+r"(state), "+r"(offset));
        offset <<= 1;
        state += offset;
        offset -= 0xc0;
        *(int *)state = offset;
    }

    __MapActor_SetAnim(0, 2);

    {
        register int z asm("r2") = 0x10;
        register int x asm("r1") = 0;
        register int actor_id asm("r0");

        asm volatile("" : "+r"(z), "+r"(x));
        z = -z;
        asm volatile("" : "+r"(z), "+r"(x));
        actor_id = 0;
        asm volatile("" : "+r"(actor_id), "+r"(x), "+r"(z));
        __Func_809228c(actor_id, x, z);
    }

    __CutsceneWait(0x10);
    __Func_8091e9c(2);
    __CutsceneEnd();
}
