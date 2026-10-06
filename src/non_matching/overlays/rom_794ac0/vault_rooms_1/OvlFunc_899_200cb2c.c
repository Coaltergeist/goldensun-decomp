extern void __Func_80935b0(int, int, int, int);
extern void OvlFunc_899_200c8c8(void);
extern u16 Lm899_64f8 __asm__(".Lm899_64f8");

void OvlFunc_899_200cb2c(void)
{
    API_CutsceneStart();
    API_Func_80933f8(0xa8 << 16, -1, 0xa4 << 18, 1);
    API_MapActor_SetSpeed(0, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(1, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(2, 0xcccc, 0x6666);
    API_MapActor_TravelToAnimWait(0, 0xf8, 0xae << 2);
    API_MapActor_SetPos(1, 0xf8 << 16, 0xae << 18);
    API_MapActor_SetPos(2, 0xf8 << 16, 0xae << 18);
    API_MapActor_TravelToAnim(0, 0xc8, 0xae << 2);
    API_MapActor_TravelToAnim(1, 0xf8, 0xb2 << 2);
    API_MapActor_TravelToAnimWait(2, 0xe8, 0xae << 2);
    API_MapActor_WaitMovement(1);
    API_Func_8092adc(1, 0xc0 << 8, 0);
    API_Func_8092adc(2, 0x80 << 8, 0);
    API_MapActor_WaitMovement(0);
    API_MapActor_SetAnim(1, 0xc);
    OvlFunc_899_2009e80();
    __Func_80935b0(0xc0 << 14, 0x90 << 18, 0x90 << 17, 0xb8 << 18);
    API_MapActor_SetSpeed(1, 0x80 << 9, 0x80 << 8);
    API_MapActor_SetSpeed(2, 0xc0 << 8, 0xc0 << 7);
    API_MapActor_SetSpeed(0x18, 0x80 << 9, 0x13333);
    API_MapActor_SetSpeed(0x19, 0xc0 << 9, 0xc0 << 9);
    Lm899_64f8 = 0;
    API_StartTask(OvlFunc_899_200c8c8, 0xc94);
    API_ClearFlag(0x1ff);
    API_CutsceneEnd();
    API_PlaySound(9);
}
