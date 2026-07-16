typedef signed short s16;

struct GameState {
    unsigned char unknown[0x1c2];
    s16 map;
};

extern struct GameState gState;
extern int __GetFlag(int);
extern unsigned char gOvlData_945__0200f420[];
extern unsigned char gOvlData_945__0200f444[];
extern unsigned char gOvlData_945__0200f570[];
extern unsigned char gOvlData_945__0200f6fc[];
extern unsigned char gOvlData_945__0200f81c[];
extern unsigned char gOvlData_945__0200f930[];
extern unsigned char gOvlData_945__0200f984[];
extern unsigned char gOvlData_945__0200f9c0[];
extern unsigned char gOvlData_945__0200fb58[];
extern unsigned char gOvlData_945__0200fd44[];
extern unsigned char gOvlData_945__0200fedc[];

void *OvlFunc_945_200854c(void)
{
    switch (gState.map) {
    case 1:
    case 2:
        if (__GetFlag(0x8a0) != 0)
            return gOvlData_945__0200f6fc;
        if (__GetFlag(0x928) != 0 && __GetFlag(0x93e) == 0)
            return gOvlData_945__0200f570;
        return gOvlData_945__0200f444;
    case 4:
    case 23:
        if (__GetFlag(0x93e) != 0)
            return gOvlData_945__0200fedc;
        return gOvlData_945__0200f9c0;
    case 5:
        if (__GetFlag(0x8a0) != 0)
            return gOvlData_945__0200f930;
        if (__GetFlag(0x93e) != 0)
            return gOvlData_945__0200f984;
        return gOvlData_945__0200f81c;
    case 15:
    case 17:
    case 19:
        return gOvlData_945__0200fb58;
    case 21:
        return gOvlData_945__0200fd44;
    default:
        return gOvlData_945__0200f420;
    }
}
