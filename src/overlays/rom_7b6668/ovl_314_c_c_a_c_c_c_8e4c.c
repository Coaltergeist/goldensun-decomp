typedef signed short s16;

struct IwramState {
    unsigned char unknown[0x16c];
    s16 map;
};

extern struct IwramState *iwram_3001ebc;
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __PlaySound(int);
extern void __Func_8010560(void *, int, int);
extern void OvlFunc_928_2008de8(int);
extern unsigned char gOvlData_928__02009778[];
extern unsigned char gOvlData_928__0200978e[];
extern unsigned char gOvlData_928__020097a4[];
extern unsigned char gOvlData_928__020097ba[];
extern unsigned char gOvlData_928__020097d0[];

void OvlFunc_928_2008e4c(void)
{
    struct IwramState *state = iwram_3001ebc;

    __CutsceneStart();
    switch (state->map) {
    case 1:
        __PlaySound(0x9e);
        __Func_8010560(gOvlData_928__02009778, 0x51, 0x12);
        break;
    case 2:
        __PlaySound(0x9e);
        __Func_8010560(gOvlData_928__0200978e, 0x53, 0xb);
        break;
    case 3:
        __PlaySound(0x9e);
        __Func_8010560(gOvlData_928__0200978e, 0x56, 0xb);
        break;
    case 4:
        __PlaySound(0x9e);
        __Func_8010560(gOvlData_928__020097a4, 0x54, 0x18);
        break;
    case 5:
        __PlaySound(0x9e);
        __Func_8010560(gOvlData_928__020097a4, 0x48, 7);
        break;
    case 6:
        __PlaySound(0xbc);
        __Func_8010560(gOvlData_928__020097ba, 0x45, 0xb);
        break;
    case 7:
        __PlaySound(0x9e);
        __Func_8010560(gOvlData_928__020097d0, 0x53, 7);
        break;
    }
    OvlFunc_928_2008de8(state->map);
    __CutsceneEnd();
}
