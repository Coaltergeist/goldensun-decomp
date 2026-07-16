typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
#define NULL 0

void __CutsceneWait();
void __Func_80933d4();
void __Func_80933f8();
void __Func_8093530();
s32 __GetFlag();
void* __MapActor_GetActor();
void __MapActor_SetBehavior();
extern s32 gScript_924__0200df20;
extern s32 gScript_924__0200df60;
extern s32 gScript_924__0200dfa8;
extern s32 gScript_924__0200dff0;

s32 OvlFunc_924_200a1cc(void) {
    u8 *var_r1;
    s32 temp_r5;
    s32 temp_r6;
    s32 var_r3;
    s32 var_r3_2;

var_r3 = (*(u32*)((u8*)(__MapActor_GetActor ( 9 ))+0x8)) ;
if ( var_r3 < 0 ) {
var_r3 += 0xFFFFF ;
}
temp_r6 = var_r3 >> 0x14 ;
var_r3_2 = (*(u32*)((u8*)(__MapActor_GetActor ( 9 ))+0x10)) ;
if ( var_r3_2 < 0 ) {
var_r3_2 += 0xFFFFF ;
}
temp_r5 = var_r3_2 >> 0x14 ;
__Func_80933d4 ( 0x50000 , 0xA000 ) ;
__Func_80933f8 ( 0x03300000 , - 1 , 0x02C80000 , 1 ) ;
__Func_8093530 ( ) ;
if ( __GetFlag ( 0x877 ) == 0 ) {
if ( ( temp_r6 == 0x32 ) && ( __GetFlag ( 0x319 ) != 0 ) ) {
var_r1 = & gScript_924__0200df20 ;
goto block_17 ;
}
if ( temp_r6 == 0x31 ) {
if ( temp_r5 == 0x2C ) {
if ( ( __GetFlag ( 0x319 ) == 0 ) && ( __GetFlag ( 0x31A ) == 0 ) && ( __GetFlag ( 0x31B ) == 0 ) ) {
var_r1 = & gScript_924__0200df60 ;
goto block_17 ;
}
if ( ( temp_r5 == 0x2C ) && ( __GetFlag ( 0x319 ) != 0 ) ) {
var_r1 = & gScript_924__0200dff0 ;
block_17 : __MapActor_SetBehavior ( 9 , var_r1 ) ;
goto block_21 ;
}
goto block_18 ;
}
block_18 : if ( ( temp_r5 == 0x2E ) && ( __GetFlag ( 0x31A ) != 0 ) ) {
__MapActor_SetBehavior ( 9 , & gScript_924__0200dfa8 ) ;
__CutsceneWait ( 0x1E ) ;
return 1 ;
}
goto block_21 ;
}
goto block_21 ;
}
block_21 : __CutsceneWait ( 0x1E ) ;
return 0 ;
}

