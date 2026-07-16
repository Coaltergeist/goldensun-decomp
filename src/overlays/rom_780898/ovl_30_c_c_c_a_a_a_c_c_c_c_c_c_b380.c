typedef unsigned char u8;

extern u8 *__MapActor_GetActor(int);
extern void __MapActor_SetSpeed(int, int, int);
extern void __Func_80921c4(int, int, int);
extern void __Func_8092adc(int, int, int);
extern void __MapActor_SetAnim(int, int);
extern void __Func_8092158(int, int, int);
extern void __CutsceneWait(int);

void OvlFunc_883_200b380(int actorId, int anim1, int anim2, int flag)
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
    register u8 *actorFlag asm("r11");

    asm volatile(
        "mov %0, %4\n"
        "mov %1, %7\n"
        "mov %2, %5\n"
        "mov %3, %6\n"
        : "=r"(idReg), "=r"(flagReg), "=r"(anim1Reg), "=r"(anim2Reg)
        : "r"(a0), "r"(a1), "r"(a2), "r"(a3)
    );

    {
        register u8 *ret asm("r0") = __MapActor_GetActor(actorId);
        register int x asm("r1") = 0x80;
        register int y asm("r2") = 0x80;
        asm volatile("" : "+r"(ret), "+r"(x), "+r"(y));
        actor = ret;
        x <<= 9;
        {
            register int id asm("r0") = idReg;
            y <<= 8;
            ptr = *(u8 **)(actor + 0x50);
            asm volatile("" : "+r"(id), "+r"(x), "+r"(y), "+r"(actor), "+r"(ptr));
            __MapActor_SetSpeed(id, x, y);
        }
    }

    {
        register int x asm("r1") = 0xc4;
        register int id asm("r0") = idReg;
        register int y asm("r2");
        x <<= 1;
        y = 0x35b;
        asm volatile("" : "+r"(id), "+r"(x), "+r"(y));
        __Func_80921c4(id, x, y);
    }

    {
        register int x asm("r1") = 0xc0;
        register int id asm("r0") = idReg;
        x <<= 8;
        asm volatile("" : "+r"(id), "+r"(x));
        {
            register int y asm("r2") = 10;
        asm volatile("" : "+r"(id), "+r"(x), "+r"(y));
        __Func_8092adc(id, x, y);
        }
    }

    {
        register int offset asm("r2") = 0x55;
        register int zero asm("r3");
        zero = 0;
        asm volatile("" : "+r"(offset), "+r"(zero));
        offset += (int)actor;
        ptr += 0x26;
        asm volatile("" : "+r"(offset), "+r"(zero), "+r"(ptr));
        *(u8 *)offset = zero;
        *ptr = zero;
        asm volatile("" : "+r"(offset), "+r"(zero), "+r"(ptr));
    }

    {
        register int id asm("r0") = idReg;
        register int anim asm("r1") = anim1Reg;
        asm volatile("" : "+r"(id), "+r"(anim));
        asm volatile("mov %0, r2" : "=r"(actorFlag) : "r"(id), "r"(anim));
        __MapActor_SetAnim(id, anim);
    }

    {
        register int x asm("r1") = 0x80;
        register int y asm("r2") = 0x80;
        register int id asm("r0") = idReg;
        x <<= 9;
        y <<= 8;
        asm volatile("" : "+r"(id), "+r"(x), "+r"(y));
        __MapActor_SetSpeed(id, x, y);
    }

    {
        register int x asm("r1") = 0xc4;
        x <<= 1;
        asm volatile("" : "+r"(x));
        {
        register int y asm("r2") = 0x36b;
        register int id asm("r0");
        asm volatile("" : "+r"(x), "+r"(y));
        id = idReg;
        asm volatile("" : "+r"(id), "+r"(x), "+r"(y));
        __Func_8092158(id, x, y);
        }
    }

    __CutsceneWait(10);

    __MapActor_SetSpeed(idReg, 0x4ccc, 0x2666);
    __MapActor_SetAnim(idReg, anim2Reg);

    {
        register int x asm("r1") = 0xc4;
        register int id asm("r0") = idReg;
        asm volatile("" : "+r"(id), "+r"(x));
        x <<= 1;
        asm volatile("" : "+r"(id), "+r"(x));
        {
        register int y asm("r2") = 0x37a;
        asm volatile("" : "+r"(id), "+r"(x), "+r"(y));
        __Func_8092158(id, x, y);
        }
    }

    *(int *)(actor + 0x28) = 0x20000;
    *ptr = 1;
    if (flagReg != 0) {
        register int value asm("r3") = 3;
        register u8 *field asm("r2");
        asm volatile("" : "+r"(value));
        field = actorFlag;
        asm volatile("" : "+r"(value), "+r"(field));
        *field = value;
    }
    __MapActor_SetAnim(idReg, 1);
}
