extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __PlaySound(int sound);
extern void __MapActor_SetSpeed(int actor, int x, int y);
extern unsigned char *__MapActor_GetActor(int actor);
extern void __MapActor_SetAnim(int actor, int anim);
extern void __MapActor_TravelTo(int actor, int x, int y);
extern void __MapActor_WaitMovement(int actor);

void OvlFunc_891_2009b44(int actor_arg, int dest_x_arg, int dest_y_arg,
                         int first_x_arg, int first_y_arg)
{
    register int actor asm("r9");
    register int dest_x asm("r8");
    register int dest_y asm("r10");
    register int first_x asm("r5");
    register int first_y asm("r6");

    first_y = first_y_arg;
    asm volatile("" : "+r"(first_y), "+r"(actor_arg), "+r"(dest_x_arg),
                  "+r"(dest_y_arg), "+r"(first_x_arg));
    actor = actor_arg;
    asm volatile("" : "+r"(actor), "+r"(first_y), "+r"(dest_x_arg),
                  "+r"(dest_y_arg), "+r"(first_x_arg));
    first_x = first_x_arg;
    asm volatile("" : "+r"(actor), "+r"(first_x), "+r"(first_y),
                  "+r"(dest_x_arg), "+r"(dest_y_arg));
    dest_x = dest_x_arg;
    asm volatile("" : "+r"(actor), "+r"(dest_x), "+r"(first_x),
                  "+r"(first_y), "+r"(dest_y_arg));
    dest_y = dest_y_arg;
    asm volatile("" : "+r"(actor), "+r"(dest_x), "+r"(dest_y), "+r"(first_x), "+r"(first_y));
    __CutsceneStart();
    __PlaySound(0xb9);
    {
        register int r0 asm("r0");
        register int r1 asm("r1");
        register int r2 asm("r2");

        r0 = actor;
        asm volatile("" : "+r"(r0));
        r1 = 0x3333;
        asm volatile("" : "+r"(r0), "+r"(r1));
        r2 = 0x1999;
        asm volatile("" : "+r"(r0), "+r"(r1), "+r"(r2));
        __MapActor_SetSpeed(r0, r1, r2);
    }
    {
        register int r0 asm("r0");
        register int r1 asm("r1");
        register int r2 asm("r2");

        r1 = 0x3333;
        asm volatile("" : "+r"(r1));
        r2 = 0x1999;
        asm volatile("" : "+r"(r1), "+r"(r2));
        r0 = 0;
        asm volatile("" : "+r"(r0), "+r"(r1), "+r"(r2));
        __MapActor_SetSpeed(r0, r1, r2);
    }
    {
        register unsigned char *flags asm("r0");
        register unsigned int r2 asm("r2");
        register unsigned int r3 asm("r3");

        flags = __MapActor_GetActor(actor);
        flags += 0x5a;
        r2 = *flags;
        r3 = 0xfe;
        r3 &= r2;
        first_x <<= 4;
        first_y <<= 4;
        *flags = r3;
    }
    {
        register int r0 asm("r0");
        register int r1 asm("r1");

        r1 = 8;
        asm volatile("" : "+r"(r1));
        r0 = 0;
        asm volatile("" : "+r"(r0), "+r"(r1));
        first_x += 8;
        first_y += 8;
        asm volatile("" : "+r"(r0), "+r"(r1), "+r"(first_x), "+r"(first_y));
        __MapActor_SetAnim(r0, r1);
    }
    __MapActor_TravelTo(0, first_x, first_y);
    dest_x <<= 4;
    dest_y <<= 4;
    dest_x += 8;
    dest_y += 8;
    __MapActor_TravelTo(actor, dest_x, dest_y);
    __MapActor_WaitMovement(actor);
    __MapActor_SetAnim(0, 1);
    __CutsceneEnd();
}
