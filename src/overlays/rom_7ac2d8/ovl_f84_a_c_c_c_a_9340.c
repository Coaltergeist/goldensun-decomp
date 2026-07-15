typedef unsigned char u8;
typedef signed short s16;

extern u8 *iwram_3001ebc;
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __CutsceneWait(int frames);
extern void __StartTask(void (*task)(void), int priority);
extern void __StopTask(void (*task)(void));
extern void __MapActor_SetSpeed(int actor_id, int x, int y);
extern void __MapActor_SetAnim(int actor_id, int anim);
extern u8 *__MapActor_GetActor(int actor_id);
extern void __PlaySound(int sound_id);
extern void __MapActor_TravelTo(int actor_id, int x, int y);
extern void __Func_8092158(int actor_id, int x, int y);
extern void __MapActor_WaitMovement(int actor_id);
extern void OvlFunc_924_200ba64(void);

void OvlFunc_924_2009340(void)
{
    u8 *state;
    u8 *actor;
    s16 v;

    state = iwram_3001ebc;
    __CutsceneStart();
    {
        int priority;
        priority = 0xc8;
        priority <<= 4;
        __StartTask(OvlFunc_924_200ba64, priority);
    }
    {
        register int x asm("r1");
        register int y asm("r2");
        register int actor_id asm("r0");

        x = 0xa0;
        asm volatile("" : "+r"(x));
        y = 0xa0;
        y <<= 9;
        asm volatile("" : "+r"(x), "+r"(y));
        actor_id = 0;
        asm volatile("" : "+r"(x), "+r"(y), "+r"(actor_id));
        x <<= 10;
        asm volatile("" : "+r"(x), "+r"(y), "+r"(actor_id));
        __MapActor_SetSpeed(actor_id, x, y);
    }
    __MapActor_SetAnim(0, 1);
    actor = __MapActor_GetActor(0);
    actor += 0x5a;
    *actor &= 0xfe;
    __PlaySound(0xe4);

    v = *(s16 *)(state + (0xb6 << 1));
    {
        register int x asm("r1");
        register int y asm("r2");
        register int actor_id asm("r0");

        if (v == 2) {
            y = 0x9a;
            asm volatile("" : "+r"(y));
            actor_id = 0;
            asm volatile("" : "+r"(y), "+r"(actor_id));
            x = 0xe8;
            asm volatile("" : "+r"(y), "+r"(actor_id), "+r"(x));
        } else if (v == 3) {
            x = 0xb4;
            asm volatile("" : "+r"(x));
            y = 0xb6;
            asm volatile("" : "+r"(x), "+r"(y));
            actor_id = 0;
            asm volatile("" : "+r"(x), "+r"(y), "+r"(actor_id));
            x <<= 1;
            asm volatile("" : "+r"(x), "+r"(y), "+r"(actor_id));
        } else {
            if (v != 4) {
                goto default_case;
            }
            y = 0xc6;
            asm volatile("" : "+r"(y));
            actor_id = 0;
            asm volatile("" : "+r"(y), "+r"(actor_id));
            x = 0xf8;
            asm volatile("" : "+r"(y), "+r"(actor_id), "+r"(x));
        }
        y <<= 2;
        asm volatile("" : "+r"(x), "+r"(y), "+r"(actor_id));
        __MapActor_TravelTo(actor_id, x, y);
        goto done;

default_case:
        x = 0xae;
        asm volatile("" : "+r"(x));
        y = 0x94;
        asm volatile("" : "+r"(x), "+r"(y));
        actor_id = 0;
        asm volatile("" : "+r"(x), "+r"(y), "+r"(actor_id));
        x <<= 2;
        asm volatile("" : "+r"(x), "+r"(y), "+r"(actor_id));
        y <<= 2;
        asm volatile("" : "+r"(x), "+r"(y), "+r"(actor_id));
        __Func_8092158(actor_id, x, y);
        x = 0xae;
        asm volatile("" : "+r"(x));
        y = 0x96;
        asm volatile("" : "+r"(x), "+r"(y));
        actor_id = 0;
        asm volatile("" : "+r"(x), "+r"(y), "+r"(actor_id));
        x <<= 2;
        asm volatile("" : "+r"(x), "+r"(y), "+r"(actor_id));
        y <<= 2;
        asm volatile("" : "+r"(x), "+r"(y), "+r"(actor_id));
        __MapActor_TravelTo(actor_id, x, y);
        __CutsceneWait(0x1e);
    }

done:
    __MapActor_WaitMovement(0);
    actor = __MapActor_GetActor(0);
    actor += 0x5a;
    {
        register int loaded asm("r2");
        register int one asm("r3");

        loaded = *actor;
        asm volatile("" : "+r"(loaded));
        one = 1;
        asm volatile("" : "+r"(loaded), "+r"(one));
        one |= loaded;
        asm volatile("" : "+r"(one));
        *actor = one;
    }
    __StopTask(OvlFunc_924_200ba64);
    __CutsceneEnd();
}
