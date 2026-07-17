typedef unsigned char u8;
typedef unsigned short u16;

typedef struct {
    u8 pad0[0xe5a];
    u16 unkE5A;
    u16 unkE5C;
    u16 unkE5E;
    u8 pad1[0x2a00 - 0xe60];
    u8 unk2A00;
    u8 unk2A01;
    u8 unk2A02;
    u8 unk2A03;
} Struct;

extern void __CutsceneStart(void);
extern void __MapActor_SetAnim(int actor, int anim);
extern void __Func_8091200(int a, int b);
extern void __Func_8091254(int a);
extern void __CutsceneWait(int frames);
extern void __Func_8019aa0(int a, int b, int c);
extern void __CutsceneEnd(void);
extern void __Func_8091e9c(int a);
extern int OvlFunc_888_200a7d4(void);
extern Struct *iwram_3001ed0;

void OvlFunc_888_200874c(void)
{
    Struct *p;

    __CutsceneStart();
    __MapActor_SetAnim(0, 0);
    __MapActor_SetAnim(1, 0);
    __MapActor_SetAnim(0xb, 0);
    __MapActor_SetAnim(0xc, 0);
    __MapActor_SetAnim(8, 0);
    __MapActor_SetAnim(9, 0);
    __MapActor_SetAnim(0xa, 0);
    __Func_8091200(0x10002, 0);
    __Func_8091254(0x78);
    __CutsceneWait(0xb4);
    p = iwram_3001ed0;
    p->unkE5A = 0x7c00;
    p->unkE5C = 0x7c00;
    p->unkE5E = 0x7c00;
    p->unk2A00 = 0;
    p->unk2A01 = 1;
    p->unk2A02 = 1;
    p->unk2A03 = 1;
    __CutsceneWait(1);
    __Func_8019aa0(0x116d, 1, 0);
    __Func_8091200(0, 0);
    __Func_8091254(0x78);
    __CutsceneWait(0x78);
    __CutsceneWait(0x3c);
    if (OvlFunc_888_200a7d4() == 0) {
        __CutsceneEnd();
        __Func_8091e9c(0x14);
        return;
    }
    __CutsceneEnd();
    __Func_8091e9c(0x32);
}
