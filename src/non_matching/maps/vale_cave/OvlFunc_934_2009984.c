struct CS934_StateView { unsigned char pad[0x1c0]; short event; short room; };
extern struct CS934_StateView CS934_State __asm__("gState");
extern unsigned char CS934_FirstPuzzle[];
extern unsigned char CS934_SecondPuzzle[];
__asm__(".equ CS934_FirstPuzzle, 0x5e\n.equ CS934_SecondPuzzle, 0x5f");
extern struct Actor *OvlFunc_common0_70(int, int, int, int);
extern int OvlFunc_934_2008ba4(unsigned int);
extern struct Actor *CS934_Actor(int) __asm__("__MapActor_GetActor");
void OvlFunc_934_2009984(void)
{
    int event = CS934_State.event;
    if (event == (int)CS934_FirstPuzzle) {
        switch (CS934_State.room) {
        case 1: case 2: case 3: case 4:
            API_Func_8092b08(15, 3);
            API_Func_8092b08(13, 3);
            OvlFunc_common0_70(0x780000, 0, 0xe80000, 0xdf);
            break;
        case 5: case 6: case 7:
            if (API_GetFlag(0x70)) break;
            if (!API_GetFlag(0x302)) break;
            API_SetFlag(0x200);
            if (CS934_State.room == 5) API_SetFlag(0x201);
            API_WaitFrames(1);
            if (!API_GetFlag(0x109)) {
                unsigned char *actor;
                API_MapActor_SetPos(8, 0x3180000, 0x1180000);
                actor = (unsigned char *)CS934_Actor(8);
                *(int (**)(int))(actor + 0x6c) = OvlFunc_934_2008cf8;
            }
            break;
        case 8: case 9: case 10:
            OvlFunc_common0_70(0x2820000, 0, 0x2280000, 20);
            API_Func_8010704(0x17, 0x22, 13, 3, 0, 0x22);
            OvlFunc_934_2009770();
            if (API_GetFlag(0x200)) API_Func_8010704(0x17, 0x29, 1, 1, 0x17, 0x27);
            if (API_GetFlag(0x201)) API_Func_8010704(0x1f, 0x27, 2, 1, 0x1b, 0x29);
            break;
        }
    } else if (event == (int)CS934_SecondPuzzle) {
        int room = CS934_State.room;
        switch (room) {
        case 1: case 2: case 3:
            if (API_GetFlag(0x202)) {
                OvlFunc_934_2008528(0, 12, 16, 1, 4, 0);
                OvlFunc_934_2008528(0, 13, 16, 1, 4, 0);
            } else OvlFunc_934_2008ba4(9);
            if (API_GetFlag(0x203)) {
                OvlFunc_934_2008528(2, 16, 16, 1, 4, 0);
                OvlFunc_934_2008528(0, 16, 16, 1, 4, 0);
            } else OvlFunc_934_2008ba4(10);
            if (API_GetFlag(0x205)) {
                OvlFunc_934_2008528(0, 13, 19, 4, 2, 0);
            } else if (API_GetFlag(0x204)) {
                OvlFunc_934_2008528(0, 13, 15, 4, 2, 0);
                API_Func_8010704(14, 17, 2, 1, 14, 16);
                API_Func_8010704(14, 13, 1, 1, 14, 15);
            } else {
                OvlFunc_934_2008ba4(11);
                API_Func_8092b08(11, 3);
            }
        }
    }
}
