extern void __SetIntrHandler(int, int, void *);

extern void __Func_800fe9c(void);

extern void OvlFunc_916_2008098(int, int, int, int, int, int, int);

void OvlFunc_916_20083f0(void) {
    API_CutsceneStart();
    API_Func_80933d4(0x80 << 9, 0x80 << 6);
    API_Func_80933f8(0x84 << 17, -1, 0xe0 << 17, 1);
    API_Func_8093530();
    API_Func_801776c(0x1528, 1);
    API_PlaySound(0xe8);

    if (*L12c8 == 0) {
        API_MapActor_SetPos(9, 0x80 << 17, 0xe7 << 17);
        API_Func_80105d4(0x4d, 0x22, 1, 2, 0x53, 0x19);
        API_WaitFrames(3);
        API_Func_80105d4(0x4e, 0x22, 1, 2, 0x53, 0x19);
        API_WaitFrames(3);
        API_Func_80105d4(0x4f, 0x22, 1, 2, 0x53, 0x19);
        API_WaitFrames(30);
        API_Func_80105d4(0x43, 0x22, 2, 5, 0x4f, 0x19);
        API_WaitFrames(6);
        API_Func_80105d4(0x45, 0x22, 2, 5, 0x4f, 0x19);
        API_MapActor_SetAnim(9, 1);
        API_PlaySound(0xf0);
        API_WaitFrames(6);
        API_Func_80105d4(0x47, 0x22, 2, 5, 0x4f, 0x19);
        API_WaitFrames(6);
        API_Func_80105d4(0x49, 0x22, 2, 5, 0x4f, 0x19);
        API_Func_80105d4(0x4b, 0x26, 2, 1, 0x4f, 0x1d);
        API_WaitFrames(4);
        API_Func_80105d4(0x4d, 0x26, 2, 1, 0x4f, 0x1d);
        API_WaitFrames(6);
        API_Func_80105d4(0x4f, 0x26, 2, 1, 0x4f, 0x1d);
        API_WaitFrames(8);
        API_Func_80105d4(0x41, 0x35, 2, 1, 0x4f, 0x1d);
        API_Func_80105d4(0x41, 0x28, 2, 4, 15, 28);
    } else {
        API_MapActor_SetPos(9, 0x80 << 17, 0xf0 << 17);
        API_Func_80105d4(0x4e, 0x22, 1, 2, 0x53, 0x19);
        API_WaitFrames(3);
        API_Func_80105d4(0x4d, 0x22, 1, 2, 0x53, 0x19);
        API_WaitFrames(3);
        API_Func_80105d4(0x4c, 0x22, 1, 2, 0x53, 0x19);
        API_WaitFrames(30);
        API_Func_80105d4(0x41, 0x2d, 2, 4, 15, 28);
        API_Func_80105d4(0x47, 0x32, 2, 5, 0x4f, 0x19);
        API_MapActor_SetAnim(9, 2);
        API_PlaySound(0xe6);
        API_WaitFrames(6);
        API_Func_80105d4(0x45, 0x32, 2, 5, 0x4f, 0x19);
        API_WaitFrames(6);
        API_Func_80105d4(0x43, 0x32, 2, 5, 0x4f, 0x19);
        API_WaitFrames(6);
        API_Func_80105d4(0x41, 0x32, 2, 5, 0x4f, 0x19);
        API_WaitFrames(30);
    }

    if (*L12c8 == 0) {
        OvlFunc_916_2008098(9, 0x13, 0x10, 5, 0, 9, 0x1e);
        OvlFunc_916_2008098(9, 0x33, 0x10, 5, 1, 9, 0x1e);
        OvlFunc_916_2008098(0x29, 0x33, 0x10, 5, 2, 9, 0x1e);
    } else {
        OvlFunc_916_2008098(9, 0x13, 0x10, 5, 0, 9, 0x1e);
        OvlFunc_916_2008098(9, 0x53, 0x10, 5, 1, 9, 0x1e);
        OvlFunc_916_2008098(0x29, 0x53, 0x10, 5, 2, 9, 0x1e);
    }

    L20dc = 0;
    API_StartTask(OvlFunc_916_20083c0, 0xc8 << 4);
    API_WaitFrames(1);
    __SetIntrHandler(1, 0, OvlFunc_916_200836c);
    API_PlaySound(0xe7);
    L20dc = 0;
    do {
        API_WaitFrames(1);
        L20dc++;
    } while ((int)L20dc <= 100);
    API_PlaySound(0x121);

    if (*L12c8 == 0) {
        OvlFunc_916_2008098(9, 0x13, 0x10, 5, 0, 9, 0x13);
        OvlFunc_916_2008098(9, 0x33, 0x10, 5, 1, 9, 0x13);
        OvlFunc_916_2008098(0x29, 0x33, 0x10, 5, 2, 9, 0x13);
    } else {
        OvlFunc_916_2008098(9, 0x13, 0x10, 5, 0, 9, 0x13);
        OvlFunc_916_2008098(9, 0x53, 0x10, 5, 1, 9, 0x13);
        OvlFunc_916_2008098(0x29, 0x53, 0x10, 5, 2, 9, 0x13);
    }

    API_WaitFrames(1);
    __SetIntrHandler(1, 0, 0);
    API_WaitFrames(1);
    API_StopTask(OvlFunc_916_20083c0);
    *L12c8 ^= 1;
    OvlFunc_916_2008194();
    __Func_800fe9c();
    API_CutsceneEnd();
}
