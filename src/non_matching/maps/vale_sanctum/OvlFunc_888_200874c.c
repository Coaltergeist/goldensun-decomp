extern u8 *iwram_3001ed0;
extern void __Func_8019aa0(int, int, int);
extern int OvlFunc_888_200a7d4(void);

void OvlFunc_888_200874c(void)
{
    u8 *ptr;

    API_CutsceneStart();
    API_MapActor_SetAnim(0, 0);
    API_MapActor_SetAnim(1, 0);
    API_MapActor_SetAnim(0xb, 0);
    API_MapActor_SetAnim(0xc, 0);
    API_MapActor_SetAnim(8, 0);
    API_MapActor_SetAnim(9, 0);
    API_MapActor_SetAnim(0xa, 0);
    API_Func_8091200(0x10002, 0);
    API_Func_8091254(0x78);
    API_CutsceneWait(0xb4);

    ptr = iwram_3001ed0;
    *(u16 *)(ptr + 0xe5a) = 0x7c00;
    *(u16 *)(ptr + 0xe5c) = 0x7c00;
    *(u16 *)(ptr + 0xe5e) = 0x7c00;
    ptr[0x2a00] = 0;
    ptr[0x2a01] = 1;
    ptr[0x2a02] = 1;
    ptr[0x2a03] = 1;

    API_CutsceneWait(1);
    __Func_8019aa0(0x116d, 1, 0);
    API_Func_8091200(0, 0);
    API_Func_8091254(0x78);
    API_CutsceneWait(0x78);
    API_CutsceneWait(0x3c);

    if (OvlFunc_888_200a7d4() == 0) {
        API_CutsceneEnd();
        API_Func_8091e9c(0x14);
    } else {
        API_CutsceneEnd();
        API_Func_8091e9c(0x32);
    }
}
