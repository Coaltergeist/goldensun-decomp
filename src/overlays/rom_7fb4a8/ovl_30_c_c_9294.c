extern int _modsi3_RAM(int value, int divisor);
extern int _divsi3_RAM(int value, int divisor);
extern void __CopyMapTiles(int, int, int, int, int, int);
extern int __Func_800fe9c(void);

int OvlFunc_971_2009294(int value)
{
    int i;

    if (value > 999)
        value = 999;

    for (i = 0; i < 3; i++) {
        __CopyMapTiles(0x1b, _modsi3_RAM(value, 10), 0x10 - i,
                       8, 1, 1);
        value = _divsi3_RAM(value, 10);
    }
    return __Func_800fe9c();
}
