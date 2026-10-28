#include "api.h"
struct DesertTerrainState { unsigned char prefix[0x1c0]; short area; };
extern struct DesertTerrainState DesertTerrain __asm__("gState");
extern void __Func_808ee0c(void);
extern void __Func_80947e4(void);
void OvlFunc_933_200888c(void)
{
    int area;
    int actorID;
    API_ClearFlag(0x200);
    API_SetFlag(0x201);
    area = DesertTerrain.area;
    if (area == (int)Const59) {
        API_Func_80105d4(0x40, 0x7e, 4, 2, 22, 7);
        API_Func_80105d4(0x44, 0x7e, 4, 2, 8, 10);
        API_Func_80105d4(0x48, 0x7e, 4, 2, 23, 21);
        API_Func_8010704(0x48, 0x7e, 4, 2, 23, 22);
        API_Func_80105d4(0x4c, 0x7e, 4, 2, 16, 0x2a);
        API_Func_80105d4(0x50, 0x7e, 4, 2, 0x24, 0x2c);
        API_Func_80105d4(0x54, 0x7e, 4, 2, 14, 0x37);
        API_MapActor_SetPos(9, 0x1900000, 0x16c0000);
    } else if (area == (int)Const5A) {
        API_Func_80105d4(0x40, 0x7e, 4, 2, 0x2a, 5);
        API_Func_80105d4(0x44, 0x7e, 4, 2, 20, 11);
        API_Func_8010704(0x44, 0x7e, 4, 2, 20, 12);
        API_Func_80105d4(0x48, 0x7e, 4, 2, 14, 12);
        API_Func_80105d4(0x4c, 0x7e, 4, 2, 0x38, 18);
        API_Func_80105d4(0x50, 0x7e, 4, 2, 7, 22);
        API_Func_8010704(0x50, 0x7e, 4, 2, 7, 23);
        API_Func_80105d4(0x54, 0x7e, 4, 2, 0x2c, 23);
        API_Func_8010704(0x54, 0x7e, 4, 2, 0x2c, 24);
        API_Func_80105d4(0x58, 0x7e, 4, 2, 0x26, 24);
        API_Func_80105d4(0x5c, 0x7e, 4, 2, 26, 28);
        API_Func_80105d4(0x60, 0x7e, 4, 2, 17, 0x23);
        API_Func_80105d4(0x64, 0x7e, 4, 2, 0x32, 0x24);
        API_Func_80105d4(0x68, 0x7e, 4, 2, 0x22, 0x2b);
        API_Func_8010704(0x68, 0x7e, 4, 2, 0x22, 0x2c);
        API_Func_80105d4(0x6c, 0x7e, 4, 2, 6, 0x2e);
        API_Func_80105d4(0x70, 0x7e, 4, 2, 27, 0x37);
        API_Func_80105d4(0x74, 0x7e, 4, 2, 0x2b, 0x38);
        API_MapActor_SetPos(9, 0x1600000, 0xcc0000);
        API_MapActor_SetPos(10, 0x2e00000, 0x18c0000);
        API_MapActor_SetPos(11, 0x900000, 0x17c0000);
        API_MapActor_SetPos(12, 0x2400000, 0x2cc0000);
        API_MapActor_SetPos(13, 0x2880000, 0x1980000);
    } else if (area == (int)Const5B) {
        API_Func_80105d4(0x40, 0x7c, 4, 4, 8, 14);
        API_Func_80105d4(0x44, 0x7c, 4, 4, 6, 18);
        API_Func_8010704(0x44, 0x7c, 4, 1, 6, 20);
        API_Func_80105d4(0x48, 0x7c, 4, 4, 10, 21);
        API_Func_80105d4(10, 0x79, 5, 7, 8, 0x20);
        API_Func_80105d4(5, 0x79, 5, 7, 0x2b, 0x20);
        API_Func_80105d4(0, 0x78, 3, 1, 9, 5);
        API_Func_80105d4(3, 0x78, 3, 1, 0x2c, 5);
        API_MapActor_SetPos(8, 0xa80000, 0x5c0000);
        API_MapActor_SetPos(9, 0x800000, 0x13c0000);
        API_Func_8010704(6, 0, 3, 3, 9, 6);
        if (!API_GetFlag(0x90a)) {
            API_Func_80105d4(0, 0x77, 3, 1, 9, 5);
        }
    }
    for (actorID = 100; actorID <= 107; actorID++) {
        API_Func_808edac(actorID, -1, -1);
    }
    __Func_808ee0c();
    if (DesertTerrain.area != (int)Const5C)
        __Func_80947e4();
}
