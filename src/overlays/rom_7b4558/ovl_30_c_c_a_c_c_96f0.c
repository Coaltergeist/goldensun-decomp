typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
#define NULL 0

void OvlFunc_927_2008ae8();
void OvlFunc_927_2008d90();
void OvlFunc_927_2008ea8();
void __CutsceneEnd();
void __CutsceneStart();
void __CutsceneWait();
void __Func_809259c();
void __Func_809280c();
void __Func_8092848();
void* __MapActor_GetActor();
void __MapActor_SetPos();
void __MapActor_Surprise();
void __SetCameraTarget();
void __SetFlag();
void OvlFunc_927_20096f0(void) {
    void *temp_r5;

temp_r5 = __MapActor_GetActor ( 0xD ) ;
__CutsceneStart ( ) ;
OvlFunc_927_2008ea8 ( 0xD , 1 ) ;
OvlFunc_927_2008d90 ( 0xD , 0x1C8 , 0x68 , 0x70000 ) ;
__CutsceneWait ( 0xA ) ;
OvlFunc_927_2008ae8 ( (*(u32*)((u8*)(temp_r5)+0x8)) , (*(u32*)((u8*)(temp_r5)+0xc)) , (*(u32*)((u8*)(temp_r5)+0x10)) + 0x40000 , 0 , 0 , 0 , 1 , 0 ) ;
__SetCameraTarget ( 0xD , 1 ) ;
__Func_8092848 ( 0xD , 0 , 0 ) ;
__CutsceneWait ( 0x14 ) ;
__Func_809259c ( 0xD , 2 ) ;
__MapActor_Surprise ( 0xD , 0x102 ) ;
__CutsceneWait ( 0x3C ) ;
OvlFunc_927_2008d90 ( 0xD , 0x1D8 , 0x88 , 0x30000 ) ;
__Func_809280c ( 0 , 0xD , 0 ) ;
__CutsceneWait ( 6 ) ;
OvlFunc_927_2008d90 ( 0xD , 0x1F8 , 0x88 , 0x33333 ) ;
__Func_809280c ( 0 , 0xD , 0 ) ;
__CutsceneWait ( 6 ) ;
OvlFunc_927_2008d90 ( 0xD , 0x228 , 0x88 , 0x38000 ) ;
__Func_809280c ( 0 , 0xD , 0 ) ;
__CutsceneWait ( 6 ) ;
OvlFunc_927_2008d90 ( 0xD , 0x248 , 0x88 , 0x38000 ) ;
__Func_809280c ( 0 , 0xD , 0 ) ;
__CutsceneWait ( 6 ) ;
__MapActor_SetPos ( 0xD , 0 , 0 ) ;
__SetFlag ( 0x304 ) ;
__MapActor_SetPos ( 0x10 , 0 , 0 ) ;
__CutsceneEnd ( ) ;
}

