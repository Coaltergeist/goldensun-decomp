typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
#define NULL 0

s32 OvlFunc_935_2008944();
void OvlFunc_935_2008b8c();
s32 __GetFlag();
void* __MapActor_GetActor();
void __MapActor_SetAnim();
void __PlaySound();
void __SetFlag();
extern s32 _L2214[] asm(".L2214");
extern s32 _L2224 asm(".L2224");
extern s32 _L2228 asm(".L2228");

void OvlFunc_935_20089c0(void) {
    register s32 sound asm("r0");
    s32 temp_r3;
    s32 temp_r3_2;
    s32 var_r6;
    register s32 temp_r6 asm("r6");
    void *temp_r0;

temp_r6 = (*(u8*)((u8*)(__MapActor_GetActor ( 0xA ))+0x5b)) ;
if ( temp_r6 == 0 ) {
temp_r3 = _L2224 + 1 ;
_L2224 = temp_r3 ;
if ( temp_r3 > 0xBE ) {
_L2224 = ( s32 ) temp_r6 ;
}
if ( _L2214[_L2228] == _L2224 ) {
temp_r0 = __MapActor_GetActor ( _L2228 + 0xB );
(*(u32*)((u8*)(temp_r0)+0x48)) = 0xA3D ;
temp_r3_2 = _L2228 + 1 ;
_L2228 = temp_r3_2 ;
if ( temp_r3_2 > 3 ) {
_L2228 = ( s32 ) temp_r6 ;
}
}
var_r6 = 0 ;
__asm__ volatile ("mov r7, #0" : : : "r7");
do {
temp_r0 = __MapActor_GetActor ( var_r6 + 0xB ) ;
if ( ( ( s32 ) (*(s32*)((u8*)(temp_r0)+0x28)) >= 0 ) && ( ( s32 ) (*(s32*)((u8*)(temp_r0)+0xc)) <= 0xFFFF ) ) {
OvlFunc_935_2008b8c ( ) ;
__asm__ volatile ("" : : "r"(temp_r0));
__asm__ volatile ("mov r3, #0xff\n\tlsl r3, #16\n\tstr r3, [r5, #0xc]");
__asm__ volatile ("mov r3, r5\n\tadd r3, #0x5b\n\tstr r7, [r5, #0x48]\n\tstr r7, [r5, #0x28]\n\tmov r0, #0x6a\n\tstrb r7, [r3]\n\tbl __PlaySound" : "=r"(sound));
}
var_r6 += 1 ;
}
while ( var_r6 <= 3 ) ;
if ( OvlFunc_935_2008944 ( 0xA ) != 0 ) {
__asm__ volatile ("" ::: "r5");
__MapActor_SetAnim ( 0xA , 1 ) ;
__asm__ volatile ("ldr r0, =0x207\n\tbl __GetFlag" : "=r"(sound) : : "r1", "r2", "r3");
if ( sound == 0 ) {
__asm__ volatile ("ldr r0, =0x207\n\tbl __SetFlag" : "=r"(sound) : : "r1", "r2", "r3");
__PlaySound ( 0xCC ) ;
}
else {
__PlaySound ( 0x6A ) ;
}
}
if ( OvlFunc_935_2008944 ( 9 ) != 0 ) {
__PlaySound ( 0x6A ) ;
}
}
}

