typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u8 *__MapActor_GetActor(int actor_id);
extern void __MapActor_SetSpeed(int actor_id, int x, int y);
extern void __Func_80921c4(int actor, int x, int y);
extern void __Func_8092adc(int actor, int value, int duration);
extern void __MapActor_SetAnim(int actor_id, int anim);
extern void __Func_8092158(int actor, int x, int y);
extern void __CutsceneWait(int frames);

void OvlFunc_883_200b2b0(int actorId, int anim1, int anim2, int flag)
{
    register int a0 asm("r0") = actorId;
    register int a1 asm("r1") = anim1;
    register int a2 asm("r2") = anim2;
    register int a3 asm("r3") = flag;
    register int idReg asm("r7");
    register int flagReg asm("r9");
    register int anim1Reg asm("r8");
    register int anim2Reg asm("r10");
    register u8 *actor asm("r6");
    register u8 *ptr asm("r5");

    asm volatile(
        "mov %0, %4\n"
        "mov %1, %7\n"
        "mov %2, %5\n"
        "mov %3, %6\n"
        : "=r"(idReg), "=r"(flagReg), "=r"(anim1Reg), "=r"(anim2Reg)
        : "r"(a0), "r"(a1), "r"(a2), "r"(a3)
    );

    {
        register u8 *ret0 asm("r0") = __MapActor_GetActor(actorId);
        asm volatile("" : "+r"(ret0), "+r"(idReg), "+r"(flagReg), "+r"(anim1Reg), "+r"(anim2Reg));
        {
            register int x asm("r1");
            register int y asm("r2");
            x = 0x80;
            asm volatile("" : "+r"(x), "+r"(ret0));
            y = 0x80;
            asm volatile("" : "+r"(x), "+r"(y), "+r"(ret0));
            actor = ret0;
            asm volatile("" : "+r"(x), "+r"(y), "+r"(actor));
            x <<= 9;
            asm volatile("" : "+r"(x), "+r"(y), "+r"(actor));
            {
                register int b0 asm("r0") = idReg;
                asm volatile("" : "+r"(x), "+r"(y), "+r"(actor), "+r"(b0));
                y <<= 8;
                asm volatile("" : "+r"(x), "+r"(y), "+r"(actor), "+r"(b0));
                ptr = *(u8 **)(actor + 0x50);
                asm volatile("" : "+r"(x), "+r"(y), "+r"(actor), "+r"(b0), "+r"(ptr));
                __MapActor_SetSpeed(b0, x, y);
            }
        }
    }

    {
        register int x asm("r1");
        register int b0 asm("r0");
        register int y asm("r2");
        x = 0xc4;
        asm volatile("" : "+r"(x));
        b0 = idReg;
        asm volatile("" : "+r"(x), "+r"(b0));
        x <<= 1;
        asm volatile("" : "+r"(x), "+r"(b0));
        y = 0x376;
        asm volatile("" : "+r"(x), "+r"(b0), "+r"(y));
        __Func_80921c4(b0, x, y);
    }

    {
        register int x asm("r1");
        register int y asm("r2");
        register int b0 asm("r0");
        x = 0xc0;
        asm volatile("" : "+r"(x));
        y = 0xa;
        asm volatile("" : "+r"(x), "+r"(y));
        b0 = 0;
        asm volatile("" : "+r"(x), "+r"(y), "+r"(b0));
        x <<= 8;
        asm volatile("" : "+r"(x), "+r"(y), "+r"(b0));
        __Func_8092adc(b0, x, y);
    }

    {
        register int z asm("r3");
        ptr = ptr + 0x26;
        asm volatile("" : "+r"(ptr));
        z = 0;
        asm volatile("" : "+r"(ptr), "+r"(z));
        actor = actor + 0x55;
        asm volatile("" : "+r"(ptr), "+r"(z), "+r"(actor));
        *actor = z;
        asm volatile("" : "+r"(ptr), "+r"(z), "+r"(actor));
        *ptr = z;
    }

    {
        register int b0 asm("r0");
        register int b1 asm("r1");
        b0 = idReg;
        asm volatile("" : "+r"(b0));
        b1 = anim1Reg;
        asm volatile("" : "+r"(b0), "+r"(b1));
        __MapActor_SetAnim(b0, b1);
    }

    {
        register int b0 asm("r0");
        register int x asm("r1");
        register int y asm("r2");
        b0 = idReg;
        asm volatile("" : "+r"(b0));
        x = 0x4ccc;
        asm volatile("" : "+r"(b0), "+r"(x));
        y = 0x2666;
        asm volatile("" : "+r"(b0), "+r"(x), "+r"(y));
        __MapActor_SetSpeed(b0, x, y);
    }

    {
        register int x asm("r1");
        register int y asm("r2");
        register int b0 asm("r0");
        x = 0xc4;
        asm volatile("" : "+r"(x));
        y = 0x36b;
        asm volatile("" : "+r"(x), "+r"(y));
        x <<= 1;
        asm volatile("" : "+r"(x), "+r"(y));
        b0 = idReg;
        asm volatile("" : "+r"(x), "+r"(y), "+r"(b0));
        __Func_8092158(b0, x, y);
    }

    __CutsceneWait(0xA);

    {
        register int b0 asm("r0");
        register int b1 asm("r1");
        b0 = idReg;
        asm volatile("" : "+r"(b0));
        b1 = anim2Reg;
        asm volatile("" : "+r"(b0), "+r"(b1));
        __MapActor_SetAnim(b0, b1);
    }

    {
        register int x asm("r1");
        register int y asm("r2");
        register int b0 asm("r0");
        x = 0x80;
        asm volatile("" : "+r"(x));
        y = 0x80;
        asm volatile("" : "+r"(x), "+r"(y));
        b0 = idReg;
        asm volatile("" : "+r"(x), "+r"(y), "+r"(b0));
        x <<= 9;
        asm volatile("" : "+r"(x), "+r"(y), "+r"(b0));
        y <<= 8;
        asm volatile("" : "+r"(x), "+r"(y), "+r"(b0));
        __MapActor_SetSpeed(b0, x, y);
    }

    {
        register int x asm("r1");
        register int b0 asm("r0");
        register int y asm("r2");
        x = 0xc4;
        asm volatile("" : "+r"(x));
        b0 = idReg;
        asm volatile("" : "+r"(x), "+r"(b0));
        x <<= 1;
        asm volatile("" : "+r"(x), "+r"(b0));
        y = 0x35b;
        asm volatile("" : "+r"(x), "+r"(b0), "+r"(y));
        __Func_8092158(b0, x, y);
    }

    {
        register int z asm("r3");
        z = 1;
        asm volatile("" : "+r"(z));
        *ptr = z;
        asm volatile("" : "+r"(z));
        z = flagReg;
        asm volatile("" : "+r"(z));
        if (z != 0) {
            z = 3;
            asm volatile("" : "+r"(z));
            *actor = z;
        }
    }

    __CutsceneWait(0xA);

    {
        register int b0 asm("r0");
        register int b1 asm("r1");
        b0 = idReg;
        asm volatile("" : "+r"(b0));
        b1 = 1;
        asm volatile("" : "+r"(b0), "+r"(b1));
        __MapActor_SetAnim(b0, b1);
    }
}
