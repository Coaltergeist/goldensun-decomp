typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
#define NULL 0

s32 __GetFlag();
void* __MapActor_GetActor();
void __MapActor_SetPos();
void OvlFunc_931_2008b2c(void) {
    register s32 actor9 asm("r0");
    register s32 actor15 asm("r0");
    register s32 actor15_y asm("r2");
    register s32 actor15_x asm("r1");
    void *temp_r0;
    void *temp_r0_2;
    void *temp_r0_3;

if ( __GetFlag ( 0x240 ) == 0 ) {
__MapActor_SetPos ( 8 , 0x03280000 , 0x02D70000 ) ;
__MapActor_GetActor ( 8 ) ;
__asm__ volatile ("mov r3, #0xc0\n\tlsl r3, #6\n\tstrh r3, [r0, #6]");
__MapActor_SetPos ( actor9 , 0x031A0000 , ({ __asm__ volatile ("mov r0, #9" : "=r"(actor9)); 0x03390000; }) ) ;
}
if ( __GetFlag ( 0x241 ) == 0 ) {
__MapActor_SetPos ( 0xA , 0x02300000 , 0x02C60000 ) ;
__MapActor_GetActor ( 0xA ) ;
__asm__ volatile ("mov r3, #0x80\n\tlsl r3, #5\n\tmov r1, #0x90\n\tstrh r3, [r0, #6]");
__asm__ volatile ("lsl r1, #18\n\tmov r0, #0xb\n\t.inst.n 0x4a1e\n\tbl __MapActor_SetPos");
}
if ( __GetFlag ( 0x242 ) == 0 ) {
actor15_y = 0xba;
actor15_x = ({ __asm__ volatile ("mov r0, #0xf" : "=r"(actor15)); 0x01270000; });
__asm__ volatile ("lsl r2, #18" : "+r"(actor15_y) : "r"(actor15_x));
__MapActor_SetPos ( actor15 , actor15_x , actor15_y ) ;
__MapActor_GetActor ( 0xF ) ;
__asm__ volatile ("mov r3, #0xb0\n\tlsl r3, #8\n\tstrh r3, [r0, #6]");
}
else {
temp_r0 = __MapActor_GetActor ( 0xF ) ;
__asm__ volatile ("mov r1, r0\n\tadd r1, #0x59\n\tldrb r2, [r1]\n\tmov r3, #4\n\torr r3, r2\n\tstrb r3, [r1]");
}
temp_r0_2 = __MapActor_GetActor ( 0x11 ) ;
if ( temp_r0_2 != NULL ) {
__asm__ volatile ("mov r1, r0\n\tadd r1, #0x59\n\tldrb r2, [r1]\n\tmov r3, #4\n\torr r3, r2\n\tstrb r3, [r1]");
}
temp_r0_3 = __MapActor_GetActor ( 0x10 ) ;
if ( temp_r0_3 != NULL ) {
__asm__ volatile ("mov r1, r0\n\tadd r1, #0x59\n\tldrb r2, [r1]\n\tmov r3, #4\n\torr r3, r2\n\tstrb r3, [r1]");
}
}

