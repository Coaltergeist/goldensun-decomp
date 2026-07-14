typedef unsigned char u8;
typedef int s32;

typedef struct Actor809b364 Actor809b364;
struct Actor809b364 {
    u8 pad00[8];
    s32 pos_x;
    s32 pos_y;
    s32 pos_z;
    s32 base_y;
    s32 velocity_x;
    s32 velocity_y;
    u8 pad20[0x48];
    Actor809b364 *target;
};

extern u8 gState[];
extern void _DeleteActor(void);

void Func_809b364(Actor809b364 *actor)
{
    register Actor809b364 *target asm("r6");
    register s32 y asm("r5") = actor->pos_y;
    register s32 limit asm("r4");

    asm volatile(
        "ldr r3, =gState\n"
        "mov r5, #0xed\n"
        "lsl r5, #1\n"
        "ldr r1, [%3, #0x14]\n"
        "mov r2, #0xa0\n"
        "lsl r2, #12\n"
        "add r3, r5\n"
        "add r4, r1, r2\n"
        "mov r5, #0\n"
        "ldrsh r2, [r3, r5]\n"
        "ldr r3, =1\n"
        "ldr r6, [%3, #0x68]\n"
        "cmp r2, r3\n"
        "bne 1f\n"
        "mov r2, #0x80\n"
        "lsl r2, #11\n"
        "add r4, r1, r2\n"
        "1:\n"
        "ldr r5, [%3, #0xc]"
        : "=r"(limit), "=r"(y), "=r"(target)
        : "r"(actor)
        : "r1", "r2", "r3", "cc");

    if (y <= limit) {
        _DeleteActor();
    } else {
        register s32 velocity asm("r2");
        register s32 one asm("r1");
        register s32 amount asm("r4");

        asm volatile(
            "ldr r3, [%3, #0x18]\n"
            "mov r4, #0xc0\n"
            "lsl r4, #4\n"
            "mov r1, #0x80\n"
            "add r2, r3, r4\n"
            "lsl r1, #9"
            : "=r"(velocity), "=r"(one), "=r"(amount)
            : "r"(actor)
            : "r3", "cc");

        if (velocity > one)
            velocity = one;
        actor->velocity_x = velocity;
        actor->velocity_y = velocity;
        asm volatile("ldr r4, =0xfffe0000" : "=r"(amount));
        actor->pos_x = target->pos_x;
        {
            register s32 new_y asm("r3") = y + amount;
            actor->pos_y = new_y;
        }
        asm volatile("" : : : "memory");
        {
            register s32 z_offset asm("r5");
            register s32 difference asm("r3") = one - velocity;
            register s32 scaled asm("r2") = (difference << 2) + difference;
            register s32 z asm("r3");
            asm("" : "+r"(difference));
            asm("" : "+r"(scaled));
            z = target->pos_z;
            asm("" : "+r"(z));
            asm volatile("mov r5, #0x90" : "=r"(z_offset));
            z += scaled;
            asm("" : "+r"(z));
            asm volatile("lsl r5, #12" : "+r"(z_offset));
            actor->pos_z = z + z_offset;
        }
    }
}
