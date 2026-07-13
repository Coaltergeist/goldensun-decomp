typedef unsigned char u8;

extern u8 *_GetUnit(int unit);
extern unsigned int GetEnemyHeight(unsigned int enemy);
extern int Func_80c23c0(unsigned int enemy);

int Func_80b8530(int unit)
{
    register int saved_unit asm("r5") = unit;
    int result;

    result = (u8)GetEnemyHeight(_GetUnit(saved_unit)[0x128]) << 16;

    if (result == 0) {
        int special = Func_80c23c0(_GetUnit(saved_unit)[0x128]);

        result = 0x180000;
        if (special == 0)
            result = 0x300000;
    }
    return result;
}
