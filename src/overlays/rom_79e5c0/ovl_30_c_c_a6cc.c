typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
#define NULL 0

void __Actor_SetScript();
void __PlaySound();
extern s32 _L3698 asm(".L3698");
extern s32 _L369c asm(".L369c");
extern s32 gScript_911__0200b5ec;

s32 OvlFunc_911_200a6cc(void *arg0) {
    s32 temp_r2;
    s32 temp_r2_2;
    s32 temp_r3;
    s32 temp_r3_2;
    s32 temp_r3_3;
    register s32 temp_r3_4 asm("r3");
    register s32 upper asm("r2");
    register s32 var_r1 asm("r1");

if ( _L369c != 0 ) {
temp_r2 = (*(u32*)((u8*)(arg0)+0x8)) ;
if ( ( ( u32 ) ( temp_r2 + 0xFFC4FFFF ) > 0x51FFFEU ) || ( temp_r3 = (*(u32*)((u8*)(arg0)+0x10)) , ( temp_r3 <= 0xD30000 ) ) || ( temp_r3 > 0x0100FFFF ) ) {
if ( ( u32 ) ( temp_r2 + 0xFFBAFFFF ) <= 0x34FFFEU ) {
var_r1 = 0xC2 ;
goto block_14 ;
}
}
else {
goto block_16 ;
}
}
else {
temp_r2_2 = (*(u32*)((u8*)(arg0)+0x8)) ;
if ( ( ( ( u32 ) ( temp_r2_2 + 0xFFC4FFFF ) > 0x33FFFEU ) || ( temp_r3_2 = (*(u32*)((u8*)(arg0)+0x10)) , ( temp_r3_2 <= 0xC20000 ) ) || ( temp_r3_2 >= 0xE60000 ) ) && ( ( ( u32 ) ( temp_r2_2 + 0xFF90FFFF ) > 0x1DFFFEU ) || ( temp_r3_3 = (*(u32*)((u8*)(arg0)+0x10)) , ( temp_r3_3 <= 0xD80000 ) ) || ( temp_r3_3 >= 0xFA0000 ) ) ) {
if ( ( u32 ) ( temp_r2_2 + 0xFFB1FFFF ) <= 0x2BFFFEU ) {
var_r1 = 0xF1 ;
block_14 : temp_r3_4 = (*(u32*)((u8*)(arg0)+0x10)) ;
if ( temp_r3_4 <= ( s32 ) ( var_r1 << 0x10 ) ) goto block_end;
upper = 0x0114FFFF;
asm volatile("" : "+r"(upper));
if ( temp_r3_4 > upper ) goto block_end;
goto block_16 ;
}
}
else {
block_16 : __PlaySound ( 0x6A ) ;
__Actor_SetScript ( arg0 , & gScript_911__0200b5ec ) ;
_L3698 = 1 ;
}
}
block_end:
return 0 ;
}
