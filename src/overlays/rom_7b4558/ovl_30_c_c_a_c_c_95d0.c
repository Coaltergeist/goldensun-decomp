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
void OvlFunc_927_20095d0(void) {
    void *temp_r5;

temp_r5 = __MapActor_GetActor ( 0xC ) ;
__CutsceneStart ( ) ;
OvlFunc_927_2008ea8 ( 0xC , 1 ) ;
OvlFunc_927_2008d90 ( 0xC , 0x188 , 0x68 , 0x70000 ) ;
__CutsceneWait ( 0xA ) ;
OvlFunc_927_2008ae8 ( (*(u32*)((u8*)(temp_r5)+0x8)) , (*(u32*)((u8*)(temp_r5)+0xc)) , (*(u32*)((u8*)(temp_r5)+0x10)) + 0x40000 , 0 , 0 , 0 , 1 , 0 ) ;
__SetCameraTarget ( 0xC , 1 ) ;
__Func_8092848 ( 0xC , 0 , 0 ) ;
__CutsceneWait ( 0x14 ) ;
__Func_809259c ( 0xC , 2 ) ;
__MapActor_Surprise ( 0xC , 0x102 ) ;
__CutsceneWait ( 0x3C ) ;
OvlFunc_927_2008d90 ( 0xC , 0x1A8 , 0x78 , 0x30000 ) ;
__Func_809280c ( 0 , 0xC , 0 ) ;
__CutsceneWait ( 6 ) ;
OvlFunc_927_2008d90 ( 0xC , 0x1A8 , 0xA8 , 0x30000 ) ;
__Func_809280c ( 0 , 0xC , 0 ) ;
__CutsceneWait ( 6 ) ;
OvlFunc_927_2008d90 ( 0xC , 0x1A8 , 0xD0 , 0x30000 ) ;
__Func_809280c ( 0 , 0xC , 0 ) ;
__CutsceneWait ( 6 ) ;
OvlFunc_927_2008d90 ( 0xC , 0x1A8 , 0xE8 , 0x30000 ) ;
__Func_809280c ( 0 , 0xC , 0 ) ;
__CutsceneWait ( 6 ) ;
__MapActor_SetPos ( 0xC , 0 , 0 ) ;
__SetFlag ( 0x303 ) ;
__MapActor_SetPos ( 0xF , 0 , 0 ) ;
__CutsceneEnd ( ) ;
}

