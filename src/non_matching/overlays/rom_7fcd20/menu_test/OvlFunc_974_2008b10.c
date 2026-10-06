void __Func_801776c(int, int);

void __ModifyHP(int, int);

void __ModifyPP(int, int);

void *__GetUnit(int);

void __CalcStats(int);

static inline void ModifyHP(int who, int amount)
{
    __ModifyHP(who, -amount);
}

static inline void ModifyPP(int who, int amount)
{
    __ModifyPP(who, -amount);
}

void OvlFunc_974_2008b10(void)
{
    unsigned char *p;

    __Func_801776c(0xc1b, 1);
    ModifyHP(0, 100);
    ModifyHP(1, 100);
    ModifyHP(2, 0x21);
    ModifyHP(3, 100);
    ModifyPP(0, 0x32);
    ModifyPP(1, 0x28);
    ModifyPP(2, 0x23);
    ModifyPP(3, 0x14);
    p = (unsigned char *)__GetUnit(0);
    p[0x131] = 1;
    p += 0x140;
    *p = 1;
    p = (unsigned char *)__GetUnit(1);
    p[0x130] = 1;
    p[0x131] = 2;
    __CalcStats(0);
    __CalcStats(1);
    __CalcStats(3);
    __CalcStats(2);
}
