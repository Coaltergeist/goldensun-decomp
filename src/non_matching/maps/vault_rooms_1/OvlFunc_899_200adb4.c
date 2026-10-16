extern void __Func_8091f90(int, int);
extern void __Func_8091fa8(int, int);
extern void __StartMapBattle(int, int);
extern unsigned char Lconst_15[] __asm__(".Lconst_15");
__asm__(".equ .Lconst_15, 0x15");

void OvlFunc_899_200adb4(void)
{
    GlobalState *p;

    API_MapActor_SetPos(0xa, 0xc6 << 18, 0xd0 << 17);
    API_MapActor_SetPos(0xb, 0xc8 << 18, 0xc8 << 17);
    API_MapActor_SetPos(0xc, 0xc2 << 18, 0xd0 << 17);
    API_Func_8092adc(0xa, 0xc0 << 6, 0);
    API_Func_8092adc(0xb, 0xc0 << 6, 0);
    API_Func_8092adc(0xc, 0xc0 << 6, 0);
    API_MapActor_SetPos(0, 0xc6 << 18, 0xdc << 17);
    API_MapActor_SetPos(1, 0xca << 18, 0xd8 << 17);
    API_MapActor_SetPos(2, 0xc6 << 18, 0xe4 << 17);
    API_Func_8092adc(0, 0xc0 << 8, 0);
    API_Func_8092adc(1, 0xb0 << 8, 0);
    API_Func_8092adc(2, 0xb0 << 8, 0);
    API_MapActor_Face(8, 0xa, 0);
    *(int *)(*(unsigned char **)iwram_3001ebc + (0xe0 << 1)) = 0x209;
    API_SetCameraTarget(0, 0);
    API_Func_8093530();
    __Func_800fe9c();
    API_WaitFrames(1);
    *(int *)(*(unsigned char **)iwram_3001ebc + (0xe4 << 1)) = 0x20;
    OvlFunc_899_200c5cc();
    API_CutsceneWait(0x3c);
    API_MessageID(0x12e1);
    API_Func_80925cc(0xb, 1);
    API_CutsceneWait(0x14);
    OvlFunc_899_200c5f4(0xb, 0x1e);
    API_Func_80925cc(0xc, 1);
    API_CutsceneWait(0x14);
    API_ActorMessage(0xc, 0);
    OvlFunc_899_200c624(0xa, 0xb, 0x1e);
    API_MapActor_SetAnim(0xa, 3);
    OvlFunc_899_200c63c(0xb, 3, 0x1e);
    OvlFunc_899_200c624(0xa, 0xc, 0x1e);
    API_MapActor_SetAnim(0xa, 3);
    OvlFunc_899_200c63c(0xc, 3, 0x28);
    API_Func_8092adc(0xa, 0xc0 << 6, 0);
    API_Func_8092adc(0xb, 0xc0 << 6, 0);
    API_Func_8092adc(0xc, 0xc0 << 6, 0);
    API_CutsceneWait(0x14);
    OvlFunc_899_200c63c(0xa, 4, 0x14);
    API_ActorMessage(0xa, 0);
    *(int *)(*(unsigned char **)iwram_3001ebc + (0xe0 << 1)) = 0x80 << 2;
    __Func_8091f90((int)Lconst_15, 0x11);
    __Func_8091fa8((int)Lconst_15, 0x10);
    p = &gState;
    *(unsigned char *)((char *)p + 0x22b) = 3;
    __StartMapBattle(0xc, 5);
}
