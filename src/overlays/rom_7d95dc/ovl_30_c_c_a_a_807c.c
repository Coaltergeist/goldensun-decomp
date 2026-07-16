typedef signed short s16;
typedef unsigned int u32;

extern s16 gState[];
extern unsigned char gMapArea_953__008c;
extern unsigned char gMapArea_953__008e;
extern int __GetFlag(int);
extern unsigned char gOvlData_953__0200b324[];
extern unsigned char gOvlData_953__0200b39c[];
extern unsigned char gOvlData_953__0200b5f4[];
extern unsigned char gOvlData_953__0200b75c[];
extern unsigned char gOvlData_953__0200b7bc[];
extern unsigned char gOvlData_953__0200b87c[];
extern unsigned char gOvlData_953__0200b99c[];
extern unsigned char gOvlData_953__0200ba44[];
extern unsigned char gOvlData_953__0200bbdc[];
extern unsigned char gOvlData_953__0200be1c[];

void *OvlFunc_953_200807c(void)
{
    u32 area = gState[0xe0];

    if (area == (u32)&gMapArea_953__008c) {
        switch (gState[0xe1]) {
        case 5:
        case 69:
            return gOvlData_953__0200b39c;
        case 7:
        case 70:
            return gOvlData_953__0200b5f4;
        case 8:
        case 21:
        case 31:
        case 64:
        case 65:
        case 67:
            return gOvlData_953__0200b7bc;
        case 12:
            return gOvlData_953__0200b87c;
        case 66:
        case 68:
            return gOvlData_953__0200b99c;
        default:
            return gOvlData_953__0200b75c;
        }
    }
    if (area == (u32)&gMapArea_953__008e) {
        if (__GetFlag(0x950) != 0)
            return gOvlData_953__0200be1c;
        if (__GetFlag(0x962) != 0)
            return gOvlData_953__0200bbdc;
        return gOvlData_953__0200ba44;
    }
    return gOvlData_953__0200b324;
}
