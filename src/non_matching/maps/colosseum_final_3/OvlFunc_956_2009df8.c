extern void __Func_8093c00(void);
extern void OvlFunc_common1_5e4(int, void *, int);
void OvlFunc_common1_1078(int, int, int);
void OvlFunc_common1_15b8(int, int, int);
void OvlFunc_common1_1254(int);

void OvlFunc_956_2009df8(void *arg0)
{
    unsigned int r3;
    unsigned int r2;
    int r6;

    r3 = (unsigned int)&gState;
    r2 = 0xe1;
    r2 <<= 1;
    r3 += r2;
    if (*(short *)r3 == 2) {
        OvlFunc_common1_2c4();
        return;
    }

    __CutsceneStart();
    r6 = OvlFunc_common1_4cc(arg0, 2);
    if (r6 == 0) {
        __MessageID(0x20b7);
        __Func_80933d4(0xc0 << 10, 0xc0 << 7);
        __Func_80933f8(0xbc << 17, -1, 0x98 << 16, 1);
        __Func_8093530();
        __CutsceneWait(0x1e);
        __ActorMessage(arg0, 0);
        OvlFunc_common1_1078(0, 0x8c << 1, 0xc8);
        API_MapActor_SetSpeed(0, 0xc0 << 9, 0xc0 << 8);
        OvlFunc_common1_15b8(0, 0x8c << 1, 0x98);
        OvlFunc_common1_15b8(0, 0x94 << 1, 0x98);
        __CutsceneWait(10);

        __Func_8093c00();
        __Func_80933f8(-1, -1, -1, 0);
        API_Func_8092adc(0, 0xc0 << 8, 0xf);
        __Func_8093c00();
        __Func_80933f8(-1, -1, -1, 0);
        API_Func_8092adc(0, 0, 0xf);
        __Func_8093c00();
        __Func_80933f8(-1, -1, -1, 0);
        API_Func_8092adc(0, 0x80 << 7, 0xf);

        __ActorMessage(arg0, 0);
        OvlFunc_common1_1490(0x60, 0x28, 0);
        OvlFunc_common1_14f4(0x80, 0x28, 10);
        __CutsceneWait(0x1e);
        OvlFunc_common1_14f4(0xa0, 0x28, 10);
        __CutsceneWait(0x1e);
        OvlFunc_common1_14f4(0xa0, 0x48, 10);
        __CutsceneWait(0x1e);
        __ActorMessage(arg0, 0);
        OvlFunc_common1_1550();
        OvlFunc_common1_1254(0);
        __SetCameraTarget(0, 0);
        OvlFunc_common1_588(arg0, 2);
    } else if (r6 == 1) {
        __MessageID(0x20b6);
        __ActorMessage(arg0, 0);
    }

    OvlFunc_common1_5e4(r6, arg0, 2);
    __CutsceneEnd();
}
