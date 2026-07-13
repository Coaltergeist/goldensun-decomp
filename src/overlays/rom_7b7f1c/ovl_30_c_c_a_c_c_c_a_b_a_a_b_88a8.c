extern void __Func_8010704(int, int, int, int, int, int);
extern void __Func_808edac(int, int, int);
extern void __MapActor_SetPos(int, int, int);

void OvlFunc_930_20088a8(void)
{
    register int fifth asm("r3");
    register int sixth asm("r2");
    register int minus_one_a asm("r1");
    register int minus_one_b asm("r2");
    register int amount asm("r0");

    fifth = 0x15;
    sixth = 9;
    asm("" : "+r" (fifth), "+r" (sixth));
    __Func_8010704(0x15, 0x49, 1, 1, fifth, sixth);

    minus_one_a = 1;
    minus_one_b = 1;
    amount = 0x64;
    asm("" : "+r" (minus_one_a), "+r" (minus_one_b), "+r" (amount));
    minus_one_a = -minus_one_a;
    minus_one_b = -minus_one_b;
    asm("" : "+r" (minus_one_a), "+r" (minus_one_b));
    __Func_808edac(amount, minus_one_a, minus_one_b);

    __MapActor_SetPos(0xe, 0, 0);
}
