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
void OvlFunc_927_2009150(void) {
    void *temp_r5;

temp_r5 = __MapActor_GetActor ( 0xA ) ;
__CutsceneStart ( ) ;
OvlFunc_927_2008ea8 ( 0xA , 1 ) ;
OvlFunc_927_2008d90 ( 0xA , 0x58 , 0x78 , 0x60000 ) ;
OvlFunc_927_2008ae8 ( (*(u32*)((u8*)(temp_r5)+0x8)) , (*(u32*)((u8*)(temp_r5)+0xc)) , (*(u32*)((u8*)(temp_r5)+0x10)) + 0x180000 , 0 , 0 , 0 , 1 , 0 ) ;
__SetCameraTarget ( 0xA , 1 ) ;
__Func_8092848 ( 0xA , 0 , 0 ) ;
__CutsceneWait ( 0x14 ) ;
__Func_809259c ( 0xA , 2 ) ;
__MapActor_Surprise ( 0xA , 0x102 ) ;
__CutsceneWait ( 0x3C ) ;
OvlFunc_927_2008d90 ( 0xA , 0x58 , 0x98 , 0x30000 ) ;
__Func_809280c ( 0 , 0xA , 0 ) ;
__CutsceneWait ( 0xA ) ;
OvlFunc_927_2008d90 ( 0xA , 0x78 , 0xC0 , 0x30000 ) ;
__Func_809280c ( 0 , 0xA , 0 ) ;
__CutsceneWait ( 0xA ) ;
OvlFunc_927_2008d90 ( 0xA , 0x78 , 0xF0 , 0x30000 ) ;
__Func_809280c ( 0 , 0xA , 0 ) ;
__CutsceneWait ( 0xA ) ;
__SetFlag ( 0x300 ) ;
__MapActor_SetPos ( 0xD , 0 , 0 ) ;
__MapActor_SetPos ( 0xA , 0 , 0 ) ;
__CutsceneEnd ( ) ;
}

