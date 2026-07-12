extern unsigned char *__MapActor_GetActor(int actor);
extern void __Func_8012078(int arg0, int arg1, int arg2, int arg3);
extern int OvlFunc_891_2009be8(int arg0, int arg1, int arg2);
extern void OvlFunc_891_200a244(void);
extern void OvlFunc_891_200a2f4(void);

void OvlFunc_891_20095d4(void)
{
    {
        register int arg0 asm("r0");
        register int arg1 asm("r1");
        register int arg2 asm("r2");
        register int arg3 asm("r3");

        arg1 = 0xd0;
        asm volatile("" : "+r"(arg1));
        arg2 = 0xe0;
        asm volatile("" : "+r"(arg1), "+r"(arg2));
        arg0 = 2;
        asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
        arg1 <<= 16;
        arg2 <<= 15;
        arg3 = 0;
        __Func_8012078(arg0, arg1, arg2, arg3);
    }
    if (OvlFunc_891_2009be8(0xa, 0xe, 7) != 0)
        OvlFunc_891_200a244();
}

void OvlFunc_891_20095fc(void)
{
    {
        register int arg0 asm("r0");
        register int arg1 asm("r1");
        register int arg2 asm("r2");
        register int arg3 asm("r3");

        arg1 = 0xb0;
        asm volatile("" : "+r"(arg1));
        arg2 = 0xe0;
        asm volatile("" : "+r"(arg1), "+r"(arg2));
        arg0 = 2;
        asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
        arg1 <<= 17;
        arg2 <<= 15;
        arg3 = 0;
        __Func_8012078(arg0, arg1, arg2, arg3);
    }
    if (OvlFunc_891_2009be8(0xc, 0x15, 7) != 0)
        OvlFunc_891_200a2f4();
}

void OvlFunc_891_2009624(void)
{
    unsigned char *actor;
    int x;
    int z;

    actor = __MapActor_GetActor(0);
    x = *(int *)(actor + 8) >> 20;
    actor = __MapActor_GetActor(0);
    z = *(int *)(actor + 0x10) >> 20;

    if (z == 8 && (unsigned int)(x - 0x11) <= 1) {
        {
            register int arg0 asm("r0");
            register int arg1 asm("r1");
            register int arg2 asm("r2");
            register int arg3 asm("r3");

            arg1 = 0x88;
            asm volatile("" : "+r"(arg1));
            arg2 = 0x80;
            asm volatile("" : "+r"(arg1), "+r"(arg2));
            arg0 = 2;
            asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
            arg1 <<= 17;
            arg2 <<= 16;
            arg3 = 0xff;
            __Func_8012078(arg0, arg1, arg2, arg3);
        }
        {
            register int arg0 asm("r0");
            register int arg1 asm("r1");
            register int arg2 asm("r2");
            register int arg3 asm("r3");

            arg1 = 0x90;
            asm volatile("" : "+r"(arg1));
            arg2 = 0x80;
            asm volatile("" : "+r"(arg1), "+r"(arg2));
            arg0 = 2;
            asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
            arg1 <<= 17;
            arg2 <<= 16;
            arg3 = 0xff;
            __Func_8012078(arg0, arg1, arg2, arg3);
        }
    }
}
