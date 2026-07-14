typedef unsigned char u8;
typedef short s16;
typedef unsigned short u16;
typedef int s32;

__asm__(".set __divsi3, _divsi3_RAM");

typedef struct {
    u8 pad00[8];
    s32 pos_x;
    s32 pos_y;
    s32 pos_z;
    u8 pad14[4];
    s32 scale_x;
    s32 scale_y;
    u8 pad20[0x10];
    s32 scale_step_x;
    s32 scale_step_y;
    u8 pad38[0xc];
    s32 velocity_x;
    s32 velocity_y;
    s32 velocity_z;
    u8 *target;
    u8 pad54[0x10];
    s16 angle_step;
} Actor20093b0;

void OvlFunc_947_20093b0(Actor20093b0 *actor)
{
    register s32 velocity_x asm("r6");
    register s32 velocity_y asm("r8");
    register s32 velocity_z asm("r10");

    asm volatile(
        "ldr r6, [%3, #0x44]\n"
        "ldr r3, [%3, #8]\n"
        "ldr r2, [%3, #0x48]\n"
        "add r3, r6\n"
        "str r3, [%3, #8]\n"
        "ldr r3, [%3, #0xc]\n"
        "mov r8, r2\n"
        "add r3, r8\n"
        "ldr r2, [%3, #0x4c]\n"
        "str r3, [%3, #0xc]\n"
        "ldr r3, [%3, #0x10]\n"
        "mov r10, r2\n"
        "add r3, r10\n"
        "str r3, [%3, #0x10]"
        : "=r"(velocity_x), "=r"(velocity_y), "=r"(velocity_z)
        : "r"(actor)
        : "r2", "r3", "memory", "cc");
    {
        s32 quotient = velocity_x / 10;
        asm("sub r6, %1" : "+r"(velocity_x) : "r"(quotient) : "cc");
        actor->velocity_x = velocity_x;
    }
    {
        register s32 next_y asm("r3");
        register s32 quotient asm("r0") = velocity_y / 3;
        asm volatile("mov r3, r8\nsub r3, r0" : "=r"(next_y), "+r"(quotient) : : "cc");
        actor->velocity_y = next_y;
    }
    {
        register s32 next_z asm("r2");
        register s32 quotient asm("r0") = velocity_z / 10;
        asm volatile("mov r2, r10\nsub r2, r0" : "=r"(next_z), "+r"(quotient) : : "cc");
        actor->velocity_z = next_z;
    }
    asm volatile("" : : : "memory");
    {
        register s32 scale asm("r3") = actor->scale_x;
        register s32 step asm("r2") = actor->scale_step_x;
        asm("" : "+r"(scale));
        asm("" : "+r"(step));
        actor->scale_x = scale + step;
    }
    actor->scale_y += actor->scale_step_y;
    asm volatile("" : : : "memory");
    *(u16 *)(actor->target + 0x1e) += actor->angle_step;
}
