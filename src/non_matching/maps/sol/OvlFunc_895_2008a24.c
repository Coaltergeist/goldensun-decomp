struct CS895_RoomState {
    unsigned char beforeRoom[0x1c2];
    short room;
    unsigned char beforeCamera[0x240 - 0x1c4];
    unsigned short cameraX, cameraY;
};
extern struct CS895_RoomState CS895_State __asm__("gState");
static inline void CS895_Word(int *p, int value) { *p = value; }
extern void CS895_Earthquake(void) __asm__("__StartEarthquake");
extern unsigned char CS895_CameraInset[] __asm__(".Lcs895_camera_inset");
__asm__(".equ .Lcs895_camera_inset, 0x10");
extern void CS895_Event(int) __asm__("__Func_8091ff0");
extern void CS895_Refresh(void) __asm__("__Func_800fe9c");
extern void *CS895_Actor(int) __asm__("__MapActor_GetActor");
extern void CS895_Sprite(void *, int) __asm__("__Actor_SetSpriteFlags");
extern void OvlFunc_895_2008d1c(void);
extern void OvlFunc_895_2008f8c(void);
extern void OvlFunc_895_200961c(void);
extern void OvlFunc_895_20097c0(int);

void OvlFunc_895_2008a24(void)
{
    CS895_Word((int *)(iwram_3001ebc + 0x1c0), 0x204);
    if (API_GetFlag(0x814)) {
        CS895_Event(0x8d);
        API_Func_8012330(0x10000, 0x10000, 0x10000);
        CS895_Earthquake();
    }
    switch (CS895_State.room) {
    case 1:
    case 2:
        if (API_GetFlag(0x81a)) {
            API_CopyMapTiles(1, 0x6d, 4, 0x51, 1, 1);
            API_CopyMapTiles(0, 0x46, 0x1e, 0x2a, 1, 1);
            API_CopyMapTiles(0, 0x1d, 3, 1, 3, 2);
            API_Func_8010704(0, 0x1d, 3, 2, 3, 1);
            CS895_Refresh();
        }
        break;
    case 3:
        CS895_Sprite(CS895_Actor(9), 0);
        break;
    case 8:
        CS895_State.cameraX = (int)CS895_CameraInset;
        CS895_State.cameraY = 8;
        if (!API_GetFlag(0x802))
            OvlFunc_895_2008d1c();
        break;
    case 11:
    case 12:
    case 13:
        CS895_Sprite(CS895_Actor(9), 0);
        CS895_Sprite(CS895_Actor(10), 0);
        CS895_Sprite(CS895_Actor(11), 0);
        CS895_Sprite(CS895_Actor(12), 0);
        CS895_Sprite(CS895_Actor(13), 0);
        CS895_Sprite(CS895_Actor(14), 0);
        CS895_Sprite(CS895_Actor(15), 0);
        CS895_Sprite(CS895_Actor(16), 0);
        CS895_Sprite(CS895_Actor(17), 0);
        CS895_Sprite(CS895_Actor(18), 0);
        CS895_Sprite(CS895_Actor(19), 0);
        if (!API_GetFlag(0x804))
            OvlFunc_895_2008f8c();
        if (API_GetFlag(0x303))
            API_MapActor_SetPos(9, 0x5d80000, 0x880000);
        else if (API_GetFlag(0x302))
            API_MapActor_SetPos(9, 0x5f80000, 0x880000);
        if (API_GetFlag(0x301))
            API_MapActor_SetPos(10, 0x7180000, 0x880000);
        else if (API_GetFlag(0x300))
            API_MapActor_SetPos(10, 0x7380000, 0x880000);
        break;
    case 14:
    case 15:
    case 16:
        CS895_Sprite(CS895_Actor(9), 0);
        CS895_Sprite(CS895_Actor(10), 0);
        CS895_Sprite(CS895_Actor(11), 0);
        CS895_Sprite(CS895_Actor(12), 0);
        CS895_Sprite(CS895_Actor(13), 0);
        CS895_Sprite(CS895_Actor(14), 0);
        if (!API_GetFlag(0x825))
            OvlFunc_895_200961c();
        OvlFunc_895_20097c0(1);
        API_SetFlag(0x234);
        if (API_GetFlag(0x821)) {
            API_CopyMapTiles(0, 0x47, 0x64, 0x47, 1, 1);
            API_CopyMapTiles(0x7a, 0x14, 0x78, 0x1e, 1, 2);
            API_Func_8010704(0x7a, 0x14, 1, 2, 0x78, 0x1e);
            CS895_Refresh();
        }
        break;
    }
}
