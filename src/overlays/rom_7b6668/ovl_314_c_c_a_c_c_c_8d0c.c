typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
#define NULL 0

void __Actor_SetAnim();
void __Actor_SetSpriteFlags();
void __CutsceneEnd();
void __CutsceneStart();
void __Func_8092158();
s32 __GetFlag();
void* __MapActor_GetActor();
void __PlaySound();
s32 __TestCollision();
void __WaitFrames();
void __vec3_translate();
void OvlFunc_928_2008d0c(void) {
    u32 subroutine_arg0[3];
    register u8 *temp_r5 asm("r5");
    register u32 *temp_r6 asm("r6");
    u8 *temp_r7;
    u32 temp_r8;

temp_r5 = __MapActor_GetActor ( 0 ) ;
temp_r7 = temp_r5 + 0x55 ;
temp_r8 = *temp_r7;
if ( __GetFlag ( 0x200 ) != 0 ) {
temp_r6 = subroutine_arg0;
temp_r6[0] = ( s32 ) ( ( (*(u32*)((u8*)(temp_r5)+0x8)) & 0xFFF00000 ) + 0x80000 ) ;
temp_r6[1] = ( s32 ) (*(s32*)((u8*)(temp_r5)+0xc)) ;
temp_r6[2] = ( s32 ) ( ( (*(u32*)((u8*)(temp_r5)+0x10)) & 0xFFF00000 ) + 0x80000 ) ;
asm volatile(
    "mov r3, #0x80\n"
    "ldrh r1, [r5, #6]\n"
    "lsl r3, #6\n"
    "add r1, r3\n"
    "mov r3, #0xc0\n"
    "lsl r3, #8\n"
    "mov r0, #0x80\n"
    "and r1, r3\n"
    "lsl r0, #14\n"
    "mov r2, r6\n"
    "bl __vec3_translate"
    : : : "r0", "r1", "r2", "r3", "memory", "cc");
if ( __TestCollision ( temp_r5 , temp_r6 ) == 0 ) {
__CutsceneStart ( ) ;
__Actor_SetAnim ( temp_r5 , 6 ) ;
__WaitFrames ( 6 ) ;
__PlaySound ( 0x98 ) ;
__Actor_SetAnim ( temp_r5 , 7 ) ;
(*(u32*)((u8*)(temp_r5)+0x30)) = 0x30000 ;
(*(u32*)((u8*)(temp_r5)+0x34)) = 0x20000 ;
(*(u32*)((u8*)(temp_r5)+0x28)) = 0x40000 ;
*temp_r7 &= 0x7E ;
__Actor_SetSpriteFlags ( temp_r5 , 0 ) ;
__Func_8092158 ( 0 , *(s16*)((u8*)temp_r6+2) , *(s16*)((u8*)temp_r6+10) ) ;
__Actor_SetAnim ( temp_r5 , 6 ) ;
__Actor_SetSpriteFlags ( temp_r5 , 1 ) ;
*temp_r7 = temp_r8 ;
__CutsceneEnd ( ) ;
}
}
}
