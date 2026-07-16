typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
#define NULL 0

void OvlFunc_945_200c8e8();
s32 OvlFunc_945_200cfa8();
s32 __GetFlag();
void* __MapActor_GetActor();
void __MapActor_SetPos();
void OvlFunc_945_200c670(s32 arg0) {
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;

if ( __GetFlag ( 0x928 ) != 0 ) {
temp_r0 = OvlFunc_945_200cfa8 ( 0 , 0 ) ;
__MapActor_SetPos ( temp_r0 , 0x019A0000 , 0xAC0000 ) ;
OvlFunc_945_200c8e8 ( 7 , temp_r0 , arg0 ) ;
__MapActor_SetPos ( 0xA , 0 , 0 ) ;
}
else {
OvlFunc_945_200c8e8 ( 5 , 0xA , arg0 ) ;
}
if ( __GetFlag ( 0x929 ) != 0 ) {
temp_r0_2 = OvlFunc_945_200cfa8 ( 1 , 0 ) ;
__MapActor_SetPos ( temp_r0_2 , 0x01D60000 , 0xAC0000 ) ;
(*(u32*)((u8*)(__MapActor_GetActor ( temp_r0_2 ))+0x18)) = 0xFFFF0000 ;
OvlFunc_945_200c8e8 ( 7 , temp_r0_2 , arg0 ) ;
__MapActor_SetPos ( 0xB , 0 , 0 ) ;
}
else {
OvlFunc_945_200c8e8 ( 6 , 0xB , arg0 ) ;
}
if ( __GetFlag ( 0x92A ) != 0 ) {
temp_r0_3 = OvlFunc_945_200cfa8 ( 2 , 0 ) ;
__MapActor_SetPos ( temp_r0_3 , 0x019A0000 , 0xCC0000 ) ;
OvlFunc_945_200c8e8 ( 7 , temp_r0_3 , arg0 ) ;
__MapActor_SetPos ( 0xC , 0 , 0 ) ;
}
else {
OvlFunc_945_200c8e8 ( 5 , 0xC , arg0 ) ;
}
if ( __GetFlag ( 0x92B ) != 0 ) {
temp_r0_4 = OvlFunc_945_200cfa8 ( 3 , 0 ) ;
__MapActor_SetPos ( temp_r0_4 , 0x01D60000 , 0xCC0000 ) ;
(*(u32*)((u8*)(__MapActor_GetActor ( temp_r0_4 ))+0x18)) = 0xFFFF0000 ;
OvlFunc_945_200c8e8 ( 7 , temp_r0_4 , arg0 ) ;
__MapActor_SetPos ( 0xD , 0 , 0 ) ;
}
else {
OvlFunc_945_200c8e8 ( 6 , 0xD , arg0 ) ;
}
OvlFunc_945_200c8e8 ( 5 , 0xE , arg0 ) ;
OvlFunc_945_200c8e8 ( 6 , 0xF , arg0 ) ;
OvlFunc_945_200c8e8 ( 5 , 0x10 , arg0 ) ;
OvlFunc_945_200c8e8 ( 6 , 0x11 , arg0 ) ;
}

