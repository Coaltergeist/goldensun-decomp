extern void OvlFunc_common1_16f8(void);
extern int OvlFunc_common1_1814(int, int);
extern void OvlFunc_common1_1708(void);
extern void __StartMapBattle(int, int);
extern void __Func_8091f90(int, int);
extern void __Func_8091fa8(int, int);
extern unsigned char gState[];

void OvlFunc_954_2008840(void)
{
    int val;
    int i;

    OvlFunc_common1_16f8();
    __CutsceneStart();
    val = OvlFunc_common1_1814(0x78, 0x7f);
    OvlFunc_common1_1708();
    for (i = 9; i >= 0; i--) {
        API_MapActor_WaitScript(8);
    }
    API_MapActor_SetSpeed(8, 0x80 << 9, 0x80 << 8);
    API_MapActor_TravelToAnim(8, 0xa5 << 3, 0xc0);
    API_MapActor_SetSpeed(0, 0x80 << 9, 0x80 << 8);
    API_MapActor_TravelToAnimWait(0, 0xa1 << 3, 0xc0);
    API_MapActor_SetAnim(8, 1);
    API_MapActor_TurnToFaceActor(0, 8, 0);
    API_CutsceneWait(10);
    API_MapActor_SetAnim(8, 3);
    API_MapActor_DoAnim(0, 3);
    API_CutsceneWait(20);
    API_MapActor_SetSpeed(0, 0x80 << 10, 0x80 << 9);
    API_MapActor_SetSpeed(8, 0x80 << 10, 0x80 << 9);
    API_MapActor_TravelToAnim(0, 0xa2 << 3, 0xc0);
    API_MapActor_TravelToAnimWait(8, 0xa4 << 3, 0xc0);
    API_MapActor_SetAnim(0, 0x10);
    API_MapActor_SetAnim(8, 9);
    API_CutsceneWait(10);
    __StartMapBattle(0x48, 1 - val);
    gState[0x22b] = 3;
    __Func_8091f90(0x8f, 4);
    __Func_8091fa8(0x8f, 5);
    __SetFlag(0x8d << 1);
}
