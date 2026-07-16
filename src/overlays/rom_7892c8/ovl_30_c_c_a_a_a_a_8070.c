typedef signed short s16;

struct GameState {
    unsigned char unknown[0x1c2];
    s16 map;
};

extern struct GameState gState;
extern unsigned char gOvlData_888__0200bbf4[];
extern unsigned char gOvlData_888__0200bc0c[];
extern unsigned char gOvlData_888__0200bccc[];
extern unsigned char gOvlData_888__0200bd2c[];
extern unsigned char gOvlData_888__0200be04[];

void *OvlFunc_888_2008070(void)
{
    switch (gState.map) {
    case 1:
    case 2:
        return gOvlData_888__0200bc0c;
    case 10:
    case 11:
    case 12:
    case 35:
        return gOvlData_888__0200bccc;
    case 20:
    case 21:
        return gOvlData_888__0200bd2c;
    case 29:
    case 32:
        return gOvlData_888__0200be04;
    default:
        return gOvlData_888__0200bbf4;
    }
}
