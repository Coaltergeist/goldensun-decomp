typedef unsigned char u8;

extern void __Func_801776c(int message, int arg1);
extern int __ModifyHP(unsigned int unit_id, int amount);
extern int __ModifyPP(unsigned int unit_id, int amount);
extern u8 *__GetUnit(int unit_id);
extern void __CalcStats(int unit_id);

void OvlFunc_974_2008b10(void)
{
    u8 *unit;
    int amount;

    __Func_801776c(0xc1b, 1);

    asm volatile("mov %0, #100\n\tneg %0, %0" : "=r"(amount));
    __ModifyHP(0, amount);
    asm volatile("mov %0, #100\n\tneg %0, %0" : "=r"(amount));
    __ModifyHP(1, amount);
    asm volatile("mov %0, #0x21\n\tneg %0, %0" : "=r"(amount));
    __ModifyHP(2, amount);
    asm volatile("mov %0, #100\n\tneg %0, %0" : "=r"(amount));
    __ModifyHP(3, amount);

    __ModifyPP(0, -0x32);
    __ModifyPP(1, -0x28);
    __ModifyPP(2, -0x23);
    __ModifyPP(3, -0x14);

    unit = __GetUnit(0);
    unit[0x131] = 1;
    unit += 0x140;
    *unit = 1;

    unit = __GetUnit(1);
    unit[0x130] = 1;
    unit[0x131] = 2;

    __CalcStats(0);
    __CalcStats(1);
    __CalcStats(3);
    __CalcStats(2);
}
