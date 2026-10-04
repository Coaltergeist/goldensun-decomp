extern void OvlFunc_common1_16f8(void);
extern int OvlFunc_common1_1814(int, int);
extern void OvlFunc_common1_1708(void);
extern void __StartMapBattle(int, int);
extern void __Func_8091f90(int, int);
extern void __Func_8091fa8(int, int);

void OvlFunc_956_2008c5c(void)
{
    int i;
    int r6;

    OvlFunc_common1_16f8();
    API_CutsceneStart();
    r6 = OvlFunc_common1_1814(3, 0x11);
    OvlFunc_common1_1708();

    for (i = 9; i >= 0; i--) {
        API_MapActor_WaitScript(8);
    }

    API_MapActor_SetSpeed(8, 0x80 << 9, 0x80 << 8);
    API_MapActor_TravelToAnim(8, 0xbf << 3, 0xc0);
    API_MapActor_SetSpeed(0, 0x80 << 9, 0x80 << 8);
    API_MapActor_TravelToAnimWait(0, 0xbb << 3, 0xc0);
    API_MapActor_SetAnim(8, 1);
    API_MapActor_TurnToFaceActor(0, 8, 0);
    API_CutsceneWait(10);
    API_MapActor_SetAnim(8, 3);
    API_MapActor_DoAnim(0, 3);
    API_CutsceneWait(20);
    API_MapActor_SetSpeed(0, 0x80 << 10, 0x80 << 9);
    API_MapActor_SetSpeed(8, 0x80 << 10, 0x80 << 9);
    API_MapActor_TravelToAnim(0, 0xbc << 3, 0xc0);
    API_MapActor_TravelToAnimWait(8, 0xbe << 3, 0xc0);
    API_MapActor_SetAnim(0, 0x10);
    API_MapActor_SetAnim(8, 9);
    API_CutsceneWait(10);

    __StartMapBattle(0x48, 4 - r6 + 1);
    gState._bytes[0x22b] = 3;

    i = 0x91;
    __Func_8091f90(i, 4);
    __Func_8091fa8(i, 5);
    API_SetFlag(0x8d << 1);
}
