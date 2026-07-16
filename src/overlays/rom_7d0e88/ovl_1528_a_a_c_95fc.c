typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
#define NULL 0

void OvlFunc_947_2008cc0();
void __CopyMapTiles();
void __Func_800fe9c();
s32 __GetFlag();
void __PlaySound();
void __SetIntrHandler();
s32 __StartTask();
void __StopTask();
void __WaitFrames();
extern s32 _L3738 asm(".L3738");
extern s32 OvlFunc_947_2009578;
extern s32 OvlFunc_947_20095cc;

void OvlFunc_947_20095fc(void) {
    s32 temp_r0;
    s32 temp_r3;

temp_r0 = __GetFlag ( 0x200 ) ;
if ( temp_r0 == 0 ) {
OvlFunc_947_2008cc0 ( 0xA , 0x13 , 0x10 , 5 , temp_r0 , 0xA , 0x1F ) ;
OvlFunc_947_2008cc0 ( 0xA , 0x33 , 0x10 , 5 , 1 , 0xA , 0x1F ) ;
OvlFunc_947_2008cc0 ( 0x2A , 0x33 , 0x10 , 5 , 2 , 0xA , 0x1F ) ;
}
else {
OvlFunc_947_2008cc0 ( 0xA , 0x13 , 0x10 , 5 , 0 , 0xA , 0x1F ) ;
OvlFunc_947_2008cc0 ( 0xA , 0x53 , 0x10 , 5 , 1 , 0xA , 0x1F ) ;
OvlFunc_947_2008cc0 ( 0x2A , 0x53 , 0x10 , 5 , 2 , 0xA , 0x1F ) ;
}
_L3738 = 0 ;
__StartTask ( & OvlFunc_947_20095cc , 0xC80 ) ;
__WaitFrames ( 1 ) ;
__SetIntrHandler ( 1 , 0 , & OvlFunc_947_2009578 ) ;
__PlaySound ( 0xE7 ) ;
_L3738 = 0 ;
do {
__WaitFrames ( 1 ) ;
temp_r3 = _L3738 + 1 ;
_L3738 = temp_r3 ;
}
while ( temp_r3 <= 0x64 ) ;
__PlaySound ( 0x121 ) ;
if ( __GetFlag ( 0x200 ) == 0 ) {
__CopyMapTiles ( 0 , 0x20 , 0x20 , 0 , 0x20 , 0x20 ) ;
__CopyMapTiles ( 0x20 , 0x20 , 0x40 , 0 , 0x20 , 0x20 ) ;
}
else {
__CopyMapTiles ( 0 , 0x40 , 0x20 , 0 , 0x20 , 0x20 ) ;
__CopyMapTiles ( 0x20 , 0x40 , 0x40 , 0 , 0x20 , 0x20 ) ;
}
__WaitFrames ( 1 ) ;
__SetIntrHandler ( 1 , 0 , NULL ) ;
__WaitFrames ( 1 ) ;
__StopTask ( & OvlFunc_947_20095cc ) ;
__Func_800fe9c ( ) ;
__WaitFrames ( 0x1E ) ;
}

