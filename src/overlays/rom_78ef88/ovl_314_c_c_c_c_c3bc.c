typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
#define NULL 0

void OvlFunc_common0_10c();
void __Actor_SetSpriteFlags();
void __CutsceneWait();
void __Func_8092950();
void* __MapActor_GetActor();
void __PlaySound();
s32 __Random();
struct EffectParams {
    s32 a;
    s32 b;
    s32 c;
    s32 d;
    u8 pad[8];
    u16 kind;
    u8 tail[14];
};
struct ActorPosition {
    u8 pad[8];
    s32 x;
    s32 y;
    s32 z;
};
void OvlFunc_896_200c3bc(void) {
    u8 sp10[0x28];
    register struct EffectParams *params asm("r7");
    s32 temp_r5;
    register s32 temp_r6 asm("r6");
    register u32 var_r8 asm("r8");
    register struct ActorPosition *temp_r10 asm("r10");
    u32 random_y;

temp_r10 = __MapActor_GetActor ( 0xE ) ;
__PlaySound ( 0xBE ) ;
__Actor_SetSpriteFlags ( __MapActor_GetActor ( 0xE ) , 0 ) ;
params = (struct EffectParams *)sp10;
params->a = 1 ;
params->b = 5 ;
params->kind = 0x11C ;
params->c = 0x6666 ;
asm volatile (
    "mov r3, #192\n\t"
    "lsl r3, r3, #10\n\t"
    "mov r2, #0\n\t"
    "str r3, [r7, #12]\n\t"
    "mov r8, r2"
    :
    :
    : "r2", "memory"
);
do {
__CutsceneWait ( 1 ) ;
temp_r6 = 1 ;
temp_r6 &= var_r8 ;
if ( temp_r6 == 0 ) {
temp_r5 = temp_r10->x + ( ( ( u32 ) ( __Random ( ) * 0x18 ) >> 0x10 ) << 0x10 ) + 0xFFF40000 ;
random_y = __Random();
{
register struct ActorPosition *actor_r2 asm("r2") = temp_r10;
asm volatile ("" : "+r"(actor_r2));
OvlFunc_common0_10c ( temp_r5 , actor_r2->y + ( ( ( u32 ) ( random_y << 5 ) >> 0x10 ) << 0x10 ) + 0x200000 , actor_r2->z , 0 , 0xFFFC0000 , temp_r6 , 0x1B0000 , params ) ;
}
}
{
register u32 compare_r2 asm("r2") = var_r8;
asm volatile ("" : "+r"(compare_r2));
if ( compare_r2 == 0x14 ) {
__Func_8092950 ( 0xE , 0x100 ) ;
}
}
var_r8 += 1 ;
{
register u32 compare_r2 asm("r2") = var_r8;
asm volatile ("" : "+r"(compare_r2));
if (compare_r2 <= 0x1FU)
    goto loop_continue;
}
break;
loop_continue: ;
}
while (1) ;
__Func_8092950 ( 0xE , 0 ) ;
__Actor_SetSpriteFlags ( __MapActor_GetActor ( 0xE ) , 1 ) ;
}
