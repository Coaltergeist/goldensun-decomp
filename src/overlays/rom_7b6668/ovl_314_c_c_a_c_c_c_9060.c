typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
#define NULL 0

void __CutsceneEnd();
void __CutsceneStart();
void __CutsceneWait();
void __Func_809218c();
void __Func_80921c4();
void __Func_809259c();
void __Func_8092adc();
void __MapActor_Emote();
void* __MapActor_GetActor();
void __MapActor_SetBehavior();
void __MapActor_SetSpeed();
void __MapActor_WaitMovement();
extern s32 OvlFunc_928_2008500;
extern s32 gScript_928__020095b0;

void OvlFunc_928_2009060(void) {
__CutsceneStart ( ) ;
__MapActor_SetBehavior ( 0x12 , ( s32 * ) 1 ) ;
(*(u32*)((u8*)(__MapActor_GetActor ( 0x12 ))+0x6c)) = 0 ;
(*(u32*)((u8*)(__MapActor_GetActor ( 0x12 ))+0x38)) = 0x80000000 ;
(*(u32*)((u8*)(__MapActor_GetActor ( 0x12 ))+0x40)) = 0x80000000 ;
(*(u32*)((u8*)(__MapActor_GetActor ( 0x12 ))+0x24)) = 0 ;
(*(u32*)((u8*)(__MapActor_GetActor ( 0x12 ))+0x2c)) = 0 ;
(*(u32*)((u8*)(__MapActor_GetActor ( 0x12 ))+0x30)) = 0 ;
(*(u32*)((u8*)(__MapActor_GetActor ( 0x12 ))+0x34)) = 0 ;
__MapActor_Emote ( 0x12 , 0x103 , 0 ) ;
__Func_809259c ( 0x12 , 2 ) ;
__CutsceneWait ( 0x3C ) ;
asm volatile(
    "mov r1, #0xc0\n"
    "mov r2, #0xc0\n"
    "mov r0, #0x12\n"
    "lsl r1, #9\n"
    "lsl r2, #8\n"
    "bl __MapActor_SetSpeed\n"
    "mov r1, #0xc0\n"
    "mov r2, #0xc0\n"
    "mov r0, #0\n"
    "lsl r1, #9\n"
    "lsl r2, #8\n"
    "bl __MapActor_SetSpeed\n"
    "mov r1, #0x8c\n"
    "mov r0, #0x12\n"
    "lsl r1, #1\n"
    "mov r2, #0xe8\n"
    "bl __Func_809218c"
    : : : "r0", "r1", "r2", "r3", "memory", "cc");
__Func_80921c4 ( 0 , 0x128 , 0xE8 ) ;
__MapActor_WaitMovement ( 0x12 ) ;
asm volatile(
    "mov r1, #0x80\n"
    "mov r0, #0\n"
    "lsl r1, #8\n"
    "mov r2, #0x14\n"
    "bl __Func_8092adc\n"
    "mov r1, #0x81\n"
    "mov r2, #0x3c\n"
    "mov r0, #0\n"
    "lsl r1, #1\n"
    "bl __MapActor_Emote"
    : : : "r0", "r1", "r2", "r3", "memory", "cc");
__MapActor_SetBehavior ( 0x12 , & gScript_928__020095b0 ) ;
(*(u32*)((u8*)(__MapActor_GetActor ( 0x12 ))+0x6c)) = & OvlFunc_928_2008500 ;
__CutsceneEnd ( ) ;
}
