extern unsigned char *iwram_3001ebc;
void OvlFunc_common1_1078(int, int, int);
void __Func_8092adc(int, int, int);
void OvlFunc_956_20081c8(void);
void __MapActor_SetSpeed(int, int, int);
void OvlFunc_common1_1578(int, int, int);
void __MapActor_Emote(int, int, int);
void OvlFunc_common1_1254(int);
void OvlFunc_common1_5e4(int, void *, int);

void OvlFunc_956_2009f90(void *arg0)
{
    unsigned int r3;
    unsigned int r2;
    int r6;
    unsigned char *p;

    r3 = (unsigned int)&gState;
    r2 = 0xe1;
    r2 <<= 1;
    r3 += r2;
    if (*(short *)r3 == 2) {
        OvlFunc_common1_2c4();
        return;
    }

    __CutsceneStart();
    r6 = OvlFunc_common1_4cc(arg0, 3);
    if (r6 == 0) {
        p = iwram_3001ebc;
        __MessageID(0x20bb);
        OvlFunc_956_2008188();
        __Func_80933d4(0xc0 << 10, 0xc0 << 7);
        __Func_80933f8(0x9a << 18, -1, 0xb8 << 16, 1);
        __Func_8093530();
        __CutsceneWait(0x1e);
        __ActorMessage(arg0, 0);
        OvlFunc_956_20081b4();
        __CutsceneWait(0x3c);
        __ActorMessage(arg0, 0);
        OvlFunc_common1_1078(0, 0xfc << 1, 0xc8);
        __Func_8092adc(0, 0, 0);
        OvlFunc_956_20081c8();
        __MapActor_SetSpeed(0, 0xc0 << 9, 0xc0 << 8);
        OvlFunc_common1_1578(0, 0xaa << 2, 0xc8);

        while (*(short *)(p + (0xc1 << 1)) != 5) {
            __WaitFrames(1);
            r6++;
            if (r6 > 0xef)
                break;
        }

        OvlFunc_956_2008b30();
        __Func_8092adc(0, 0xc0 << 8, 0x14);
        __MapActor_Emote(0, 0x103, 0x3c);
        __ActorMessage(arg0, 0);
        OvlFunc_common1_1254(0);
        __SetCameraTarget(0, 0);
        OvlFunc_common1_588(arg0, 3);
        *(short *)(p + (0xc1 << 1)) = 0;
    } else if (r6 == 1) {
        __MessageID(0x20ba);
        __ActorMessage(arg0, 0);
    }

    OvlFunc_common1_5e4(r6, arg0, 3);
    __CutsceneEnd();
}
