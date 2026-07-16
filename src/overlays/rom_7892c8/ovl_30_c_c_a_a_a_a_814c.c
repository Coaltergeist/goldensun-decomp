typedef signed short s16;

struct GameState {
    unsigned char unknown[0x1c2];
    s16 map;
};

extern struct GameState gState;
extern int __GetFlag(int);
extern unsigned char gOvlData_888__0200be34[];
extern unsigned char gOvlData_888__0200be70[];
extern unsigned char gOvlData_888__0200bec4[];
extern unsigned char gOvlData_888__0200bf0c[];
extern unsigned char gOvlData_888__0200bf78[];
extern unsigned char gOvlData_888__0200bfd8[];
extern unsigned char gOvlData_888__0200c038[];
extern unsigned char gOvlData_888__0200c080[];
extern unsigned char gOvlData_888__0200c0ec[];

void *OvlFunc_888_200814c(void)
{
    switch (gState.map) {
    case 10:
    case 12:
        return gOvlData_888__0200be70;
    case 11:
        return gOvlData_888__0200bec4;
    case 20:
    case 21:
    case 50:
        return gOvlData_888__0200bf0c;
    case 32:
        return gOvlData_888__0200c0ec;
    case 29:
        return gOvlData_888__0200c038;
    case 35:
        return gOvlData_888__0200c080;
    default:
        if (__GetFlag(0x87a) != 0)
            return gOvlData_888__0200bfd8;
        if (__GetFlag(0x815) != 0)
            return gOvlData_888__0200bf78;
        return gOvlData_888__0200be34;
    }
}
