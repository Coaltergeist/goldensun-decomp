typedef signed short s16;

struct GameState {
    unsigned char unknown[0x1c2];
    s16 map;
};

extern struct GameState gState;
extern int __GetFlag(int);
extern void __SetFlag(int);
extern unsigned char gOvlData_881__0200db84[];
extern unsigned char gOvlData_881__0200e04c[];
extern unsigned char gOvlData_881__0200e154[];
extern unsigned char gOvlData_881__0200e1e4[];
extern unsigned char gOvlData_881__0200e25c[];
extern unsigned char gOvlData_881__0200e28c[];
extern unsigned char gOvlData_881__0200e2ec[];
extern unsigned char gOvlData_881__0200e394[];
extern unsigned char gOvlData_881__0200e3c4[];

void *OvlFunc_881_200837c(void)
{
    switch (gState.map) {
    case 49:
        if (__GetFlag(0x94f) == 0 && __GetFlag(0x941) != 0)
            return gOvlData_881__0200e154;
        break;
    case 64:
        if (__GetFlag(0x85a) == 0)
            return gOvlData_881__0200e04c;
        break;
    case 65:
    case 70:
        return gOvlData_881__0200e1e4;
    case 71:
        return gOvlData_881__0200e28c;
    case 72:
        return gOvlData_881__0200e394;
    case 73:
        return gOvlData_881__0200e3c4;
    case 66:
    case 67:
    case 68:
    case 69:
    case 75:
        return gOvlData_881__0200e25c;
    case 80:
        return gOvlData_881__0200e2ec;
    }
    __SetFlag(0x235);
    return gOvlData_881__0200db84;
}
