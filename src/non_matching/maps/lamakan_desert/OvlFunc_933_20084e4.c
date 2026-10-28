#include "api.h"
struct DesertHiddenState { unsigned char prefix[0x1c0]; short area; };
extern struct DesertHiddenState DesertHidden __asm__("gState");
extern void __Func_8010788(int, int, int, int, int, int);
extern void __Func_8094730(int, int, int, int, int, int, int);
static inline void DesertTileCopy(int a, int b, int c, int d, int e, int f)
{
    __Func_8010788(a, b, c, d, e, f);
}
static inline void DesertHeat(int a, int b, int c, int d, int e, int f, int g)
{
    __Func_8094730(a, b, c, d, e, f, g);
}

void OvlFunc_933_20084e4(void)
{
    int area;
    int actorID;
    API_ClearFlag(0x201);
    area = DesertHidden.area;
    if (area == (int)Const59) {
        API_Func_80105d4(0x46, 0x44, 4, 2, 22, 7);
        API_Func_80105d4(0x46, 0x44, 4, 2, 8, 10);
        API_Func_80105d4(0x46, 0x44, 4, 2, 23, 21);
        API_Func_8010704(0x46, 0x44, 4, 1, 23, 23);
        API_Func_80105d4(0x46, 0x44, 4, 2, 16, 0x2a);
        API_Func_80105d4(0x46, 0x44, 4, 2, 0x24, 0x2c);
        API_Func_80105d4(0x46, 0x44, 4, 2, 14, 0x37);
    } else if (area == (int)Const5A) {
        API_Func_80105d4(0x46, 0x44, 4, 2, 0x2a, 5);
        API_Func_80105d4(0x46, 0x44, 4, 2, 20, 11);
        API_Func_8010704(0x46, 0x44, 4, 1, 20, 13);
        API_Func_80105d4(0x46, 0x44, 4, 2, 14, 12);
        API_Func_80105d4(0x46, 0x44, 4, 2, 0x38, 18);
        API_Func_80105d4(0x46, 0x44, 4, 2, 7, 22);
        API_Func_8010704(0x46, 0x44, 4, 1, 7, 24);
        API_Func_80105d4(0x46, 0x44, 4, 2, 0x2c, 23);
        API_Func_8010704(0x46, 0x44, 4, 1, 0x2c, 25);
        API_Func_80105d4(0x46, 0x44, 4, 2, 0x26, 24);
        API_Func_80105d4(0x46, 0x44, 4, 2, 26, 28);
        API_Func_80105d4(0x46, 0x44, 4, 2, 17, 0x23);
        API_Func_80105d4(0x46, 0x44, 4, 2, 0x32, 0x24);
        API_Func_80105d4(0x46, 0x44, 4, 2, 0x22, 0x2b);
        API_Func_8010704(0x46, 0x44, 4, 1, 0x22, 0x2d);
        API_Func_80105d4(0x46, 0x44, 4, 2, 6, 0x2e);
        API_Func_80105d4(0x46, 0x44, 4, 2, 27, 0x37);
        API_Func_80105d4(0x46, 0x44, 4, 2, 0x2b, 0x38);
    } else if (area == (int)Const5B) {
        DesertTileCopy(0x45, 0x63, 4, 2, 8, 16);
        DesertTileCopy(0x45, 0x63, 4, 2, 6, 20);
        DesertTileCopy(0x45, 0x63, 4, 2, 10, 23);
        API_Func_8010704(0x45, 0x63, 4, 2, 8, 14);
        API_Func_8010704(0x45, 0x63, 4, 2, 6, 18);
        API_Func_8010704(0x45, 0x63, 4, 1, 6, 20);
        API_Func_8010704(0x45, 0x63, 4, 2, 10, 21);
        API_Func_80105d4(0, 0x79, 5, 7, 8, 0x20);
        API_Func_80105d4(0, 0x79, 5, 7, 0x2b, 0x20);
        API_Func_80105d4(6, 0x78, 3, 1, 9, 5);
        API_Func_80105d4(9, 0x78, 3, 1, 0x2c, 5);
        API_Func_8010704(9, 0, 3, 3, 9, 6);
    }
    API_MapActor_SetPos(8, 0, 0);
    API_MapActor_SetPos(9, 0, 0);
    API_MapActor_SetPos(10, 0, 0);
    API_MapActor_SetPos(11, 0, 0);
    API_MapActor_SetPos(12, 0, 0);
    API_MapActor_SetPos(13, 0, 0);
    for (actorID = 100; actorID <= 107; actorID++) {
        API_Func_808edac(actorID, 0, 0);
    }
    if (DesertHidden.area != (int)Const5C) {
        DesertHeat(0, 0x40000, 0x10000, 0x2000, 0x10000, 0x8000, 0x4000);
    }
}
