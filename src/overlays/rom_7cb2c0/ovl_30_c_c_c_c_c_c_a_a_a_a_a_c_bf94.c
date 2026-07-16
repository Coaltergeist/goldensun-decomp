typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
#define NULL 0

void OvlFunc_945_200c670();
void OvlFunc_945_200c8e8();
void __CutsceneStart();
void __CutsceneWait();
void __Func_8091e9c();
void __Func_80933d4();
void __Func_80933f8();
s32 __GetFlag();
void __MapActor_SetAnim();
void __MapActor_SetPos();
void __PlaySound();
extern void *iwram_3001ebc;

void OvlFunc_945_200bf94(void) {
__CutsceneStart ( ) ;
__MapActor_SetAnim ( 9 , 5 ) ;
OvlFunc_945_200c8e8 ( 0x18 , 1 , 0 ) ;
__MapActor_SetPos ( 0 , 0 , 0 ) ;
OvlFunc_945_200c8e8 ( 0x11 , 0 , 0 ) ;
OvlFunc_945_200c670 ( 0 ) ;
OvlFunc_945_200c8e8 ( 8 , 1 , 0x14 ) ;
__Func_80933d4 ( 0x6666 , 0xCCC ) ;
__Func_80933f8 ( 0x01B80000 , - 1 , 0xB00000 , 1 ) ;
__CutsceneWait ( 0x14 ) ;
__MapActor_SetAnim ( 9 , 7 ) ;
__CutsceneWait ( 0x1E ) ;
__PlaySound ( 0xBC ) ;
__CutsceneWait ( 0x1E ) ;
OvlFunc_945_200c670 ( 0x10 ) ;
__CutsceneWait ( 0x50 ) ;
OvlFunc_945_200c670 ( 0 ) ;
__CutsceneWait ( 0x3C ) ;
__MapActor_SetAnim ( 9 , 7 ) ;
__CutsceneWait ( 0x1E ) ;
__PlaySound ( 0xBC ) ;
__CutsceneWait ( 0x1E ) ;
OvlFunc_945_200c670 ( 0x10 ) ;
__CutsceneWait ( 0x50 ) ;
OvlFunc_945_200c670 ( 0 ) ;
__CutsceneWait ( 0x5A ) ;
__PlaySound ( 0xBC ) ;
__CutsceneWait ( 0x1E ) ;
(*(u32*)((u8*)(iwram_3001ebc)+0x1c0)) = 0x203 ;
OvlFunc_945_200c8e8 ( 9 , 0 , 0 ) ;
if ( __GetFlag ( 0x92B ) != 0 ) {
__Func_8091e9c ( 0x14 ) ;
return ;
}
if ( __GetFlag ( 0x92A ) != 0 ) {
__Func_8091e9c ( 0x12 ) ;
return ;
}
if ( __GetFlag ( 0x929 ) != 0 ) {
__Func_8091e9c ( 0x11 ) ;
return ;
}
if ( __GetFlag ( 0x928 ) != 0 ) {
__Func_8091e9c ( 0x10 ) ;
return ;
}
__Func_8091e9c ( 0xD ) ;
}

