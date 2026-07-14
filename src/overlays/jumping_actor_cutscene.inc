#ifndef JUMPING_ACTOR_CUTSCENE_FUNCTION
#error "JUMPING_ACTOR_CUTSCENE_FUNCTION must name the generated entry point"
#endif
#ifndef JUMPING_ACTOR_ID
#error "JUMPING_ACTOR_ID must provide the map actor number"
#endif

extern void __Func_8078a08(int value);
extern void __CutsceneStart(void);
extern void __CutsceneWait(int frames);
extern void __Func_80925cc(int actor_id, int mode);
extern void __MapActor_SetSpeed(int actor_id, int speed, int acceleration);
extern void __Func_80921c4(int actor_id, int x, int y);
extern void __Func_8092adc(int actor_id, int value, int duration);
extern void __MapActor_Jump(int actor_id, int height, int direction);
extern void __SetFlag(int flag);
extern void __CutsceneEnd(void);

/* 役者を三度跳ねさせ、通過済みの印を立てる。 */
void JUMPING_ACTOR_CUTSCENE_FUNCTION(void)
{
    __Func_8078a08(0xe7);
    __CutsceneStart();
    __CutsceneWait(10);
    __Func_80925cc(JUMPING_ACTOR_ID, 2);
    {
        register int actor asm("r0") = JUMPING_ACTOR_ID;
        register int speed asm("r1");
        register int acceleration asm("r2");

        asm volatile("" : "+r"(actor));
        speed = 0xcccc;
        asm volatile("" : "+r"(speed));
        acceleration = 0x6666;
        asm volatile("" : "+r"(actor), "+r"(speed),
                     "+r"(acceleration));
        __MapActor_SetSpeed(actor, speed, acceleration);
    }
    {
        register int y asm("r2") = 0xcc;
        register int x asm("r1") = 0xd8;
        register int actor asm("r0");

        asm volatile("" : "+r"(y));
        asm volatile("" : "+r"(x), "+r"(y));
        y <<= 1;
        asm volatile("" : "+r"(x), "+r"(y));
        actor = JUMPING_ACTOR_ID;
        asm volatile("" : "+r"(actor), "+r"(x), "+r"(y));
        __Func_80921c4(actor, x, y);
    }
    __CutsceneWait(10);
    {
        register int value asm("r1") = 0x80;
        register int actor asm("r0");
        register int duration asm("r2");

        asm volatile("" : "+r"(value));
        actor = JUMPING_ACTOR_ID;
        asm volatile("" : "+r"(actor), "+r"(value));
        value <<= 7;
        asm volatile("" : "+r"(actor), "+r"(value));
        duration = 0x14;
        asm volatile("" : "+r"(actor), "+r"(value), "+r"(duration));
        __Func_8092adc(actor, value, duration);
    }
    {
        register int height asm("r1") = 6;
        register int direction asm("r2") = 0;
        register int actor asm("r0");

        asm volatile("" : "+r"(height));
        asm volatile("" : "+r"(height), "+r"(direction));
        actor = JUMPING_ACTOR_ID;
        asm volatile("" : "+r"(actor), "+r"(height), "+r"(direction));
        __MapActor_Jump(actor, height, direction);
    }
    __CutsceneWait(0x1e);
    {
        register int height asm("r1") = 6;
        register int direction asm("r2") = 0;
        register int actor asm("r0");

        asm volatile("" : "+r"(height));
        asm volatile("" : "+r"(height), "+r"(direction));
        actor = JUMPING_ACTOR_ID;
        asm volatile("" : "+r"(actor), "+r"(height), "+r"(direction));
        __MapActor_Jump(actor, height, direction);
    }
    __CutsceneWait(0x1e);
    {
        register int height asm("r1") = 6;
        register int direction asm("r2") = 0;
        register int actor asm("r0");

        asm volatile("" : "+r"(height));
        asm volatile("" : "+r"(height), "+r"(direction));
        actor = JUMPING_ACTOR_ID;
        asm volatile("" : "+r"(actor), "+r"(height), "+r"(direction));
        __MapActor_Jump(actor, height, direction);
    }
    __CutsceneWait(0x1e);
    {
        register int y asm("r2") = 0xc4;
        register int x asm("r1") = 0xd8;
        register int actor asm("r0");

        asm volatile("" : "+r"(y));
        asm volatile("" : "+r"(x), "+r"(y));
        y <<= 1;
        asm volatile("" : "+r"(x), "+r"(y));
        actor = JUMPING_ACTOR_ID;
        asm volatile("" : "+r"(actor), "+r"(x), "+r"(y));
        __Func_80921c4(actor, x, y);
    }
    __CutsceneWait(10);
    {
        register int value asm("r1") = 0x80;
        register int duration asm("r2");
        register int actor asm("r0");

        asm volatile("" : "+r"(value));
        value <<= 7;
        asm volatile("" : "+r"(value));
        duration = 0x14;
        asm volatile("" : "+r"(value), "+r"(duration));
        actor = JUMPING_ACTOR_ID;
        asm volatile("" : "+r"(actor), "+r"(value), "+r"(duration));
        __Func_8092adc(actor, value, duration);
    }
    __SetFlag(0x858);
    __CutsceneEnd();
}

#undef JUMPING_ACTOR_ID
#undef JUMPING_ACTOR_CUTSCENE_FUNCTION
